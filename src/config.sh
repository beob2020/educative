cd /usercode/ansible

touch hosts

echo "[linux]" > hosts

if [ "$AWS_Linux_EC2_Instance_DNS_Name" = "<Linux>" ];
then
      echo "AWS Linux EC2 Instance not provided"
else
      echo "$AWS_Linux_EC2_Instance_DNS_Name" >> hosts
fi

if [ "$Azure_Linux_VM_Instance_DNS_Name" = "<Linux>" ];
then
      echo "Azure Linux VM Instance not provided"
else
      echo "$Azure_Linux_VM_Instance_DNS_Name" >> hosts
fi

echo "[windows]" >> hosts
if [ "$AWS_Windows_EC2_Instance_DNS_Name" = "<Windows>" ];
then
      echo "AWS Windows EC2 Instance not provided"
else
      echo "$AWS_Windows_EC2_Instance_DNS_Name" >> hosts
fi

if [ "$Azure_Windows_VM_Instance_DNS_Name" = "<Windows>" ]; 
then
      echo "Azure Windows VM Instance not provided"
else
      echo "$Azure_Windows_VM_Instance_DNS_Name" >> hosts
fi

# cd group_vars

# echo "---" > linux.yml
# echo "ansible_user: ansible" >> linux.yml


# echo "---" > windows.yml
# echo "ansible_user: ansible" >> windows.yml


# if [ "$Ansible_Password_Linux" = "<Linux>" ];
# then
#       echo "Ansible Linux Password not provided"
# else
#       echo "ansible_password: $Ansible_Password_Linux" >> linux.yml
# fi

# if [ "$Ansible_Password_Windows" = "<Windows>" ];
# then
#       echo "Ansible Windows Password not provided"
# else
#       echo "ansible_password: $Ansible_Password_Windows" >> windows.yml
# fi
