smb_local_mp="/mnt/smb"
smb_data_type=$1
smb_on=$(mount -t smbfs | grep "$smb_local_mp/$smb_data_type" | wc -l);

if [ $smb_on -lt 1 ];then

    host_ip=192.168.1.203
    host_port=139
    host_user=daniel

    ping -oq -c 1 $host_ip

    if [ $? -gt 0 ];then 

        echo "Your samba server is off !"
        exit;

    fi

    nc -w5 -z  $host_ip $host_port

    if [ $? -gt 0 ];then 

        echo "Your samba server is down !"

    fi

    if [ ! -d $smb_local_mp/$smb_data_type ];then 

        mkdir $smb_local_mp/$smb_data_type

    else

        if [ ! "$(ls -A $smb_local_mp/$smb_data_type)" ];then

            rmdir $smb_local_mp/$smb_data_type
            mkdir $smb_local_mp/$smb_data_type

        fi

    fi

    mount -t smbfs //$host_user@$host_ip/$smb_data_type /Volumes/$smb_data_type

    if [ $? -gt 0 ];then 

        echo "System failed trying to connect in your samba service !"

    fi

fi
