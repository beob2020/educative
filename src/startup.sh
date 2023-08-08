cd /usercode

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

