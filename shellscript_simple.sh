#filein="/usr/local/scripts/fh/test_servers" # Hosts list
filein="login_vred" # Hosts list
SERVER=$(awk -F " " 'NR==1{print $1 }' $filein)
SSH_KEY=$(awk -F " " 'NR==1{print $3 }' $filein)
ADMIN_USER=$(awk -F " " 'NR==1{print $2 }' $filein)
 #parse ssh-key
ROLE="fortress"
#LOG_FILE="/var/tmp/secuser.log"
LOG_FILE=${filein}.log
echo $SERVER
echo $ROLE
echo  $SSH_KEY
# Check if file exist
User="svc_temp"
GID="2206"
GNAME="ESM service account"

#create User
ssh -i $SSH_KEY $ADMIN_USER@$SERVER " groupadd -g$GID $GNAME
        useradd -u $User -G $GNAME -s /bin/bash -c '$ROLE' -m -k /etc/skel/ $User
        echo $PASSWORD | pass123 --stdin $User"
ssh -i $SSH_KEY $ADMIN_USER@$SERVER  " yes y |ssh-keygen -q -t rsa -N '' >/dev/null"
scp -i $SSH_KEY $ADMIN_USER@$SERVER:/home/$User/.ssh/idrsa  $SERVER'_idrssa'
