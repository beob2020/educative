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


mkdir -p host_vars

cd host_vars

if [ "$AWS_Linux_EC2_Instance_DNS_Name" = "<Linux>" ];
then
    echo "AWS Linux EC2 Instance not provided"
else  
    touch $AWS_Linux_EC2_Instance_DNS_Name.yml
fi

if [ "$Azure_Linux_VM_Instance_DNS_Name" = "<Linux>" ];
then
    echo "Azure Linux VM Instance not provided"
else
    touch $Azure_Linux_VM_Instance_DNS_Name.yml
fi

if [ "$AWS_Windows_EC2_Instance_DNS_Name" = "<Windows>" ]; 
then
    echo "AWS Windows EC2 Instance not provided"
else
    touch $AWS_Windows_EC2_Instance_DNS_Name.yml
fi

if [ "$Azure_Windows_VM_Instance_DNS_Name" = "<Windows>" ]; 
then
      echo "Azure Windows VM Instance not provided"
else
      touch $Azure_Windows_VM_Instance_DNS_Name.yml
fi


if [ "$AWS_Linux_EC2_Instance_IP" = "<Linux>" ];
then
      echo "AWS Linux EC2 Instance IP not provided"
else
    if [ "$AWS_Linux_EC2_Instance_DNS_Name" = "<Linux>" ];
    then
        echo "AWS Linux EC2 Instance File not available"
    else  
        echo "ip: $AWS_Linux_EC2_Instance_IP" > $AWS_Linux_EC2_Instance_DNS_Name.yml
    fi
    
fi

if [ "$AWS_Windows_EC2_Instance_IP" = "<Windows>" ];
then
      echo "AWS Windows EC2 Instance IP not provided"
else
    if [ "$AWS_Windows_EC2_Instance_DNS_Name" = "<Windows>" ]; 
    then
        echo "AWS Windows EC2 Instance File not available"
    else  
        echo "ip: $AWS_Windows_EC2_Instance_IP" > $AWS_Windows_EC2_Instance_DNS_Name.yml
    fi
    
fi



if [ "$Azure_Linux_VM_Instance_IP" = "<Linux>" ];
then
      echo "AWS Linux EC2 Instance IP not provided"
else
    if [ "$Azure_Linux_VM_Instance_DNS_Name" = "<Linux>" ];
    then
        echo "AWS Linux EC2 Instance File not available"
    else  
        echo "ip: $Azure_Linux_VM_Instance_IP" > $Azure_Linux_VM_Instance_DNS_Name.yml
    fi
    
fi

if [ "$Azure_Windows_VM_Instance_IP" = "<Windows>" ];
then
      echo "AWS Windows EC2 Instance IP not provided"
else
    if [ "$Azure_Windows_VM_Instance_DNS_Name"= "<Windows>" ];  
    then
        echo "AWS Windows EC2 Instance File not available"
    else  
        echo "ip: $Azure_Windows_VM_Instance_IP" > $Azure_Windows_VM_Instance_DNS_Name.yml
    fi
    
fi