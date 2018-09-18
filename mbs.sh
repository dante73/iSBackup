if [ -z "$data_type" -o -z "$local_base_path" -o -z "$smb_base_path" ];then

    echo "Data Type: $data_type"
    echo "Local Folder: $local_base_path"
    echo "SMB Folder: $smb_base_path"

    echo -e "\nSomething is wrong with parameters, please, check it before start again!"
    exit 5

fi;

# Report user
echo
echo
echo $local_base_path
echo $smb_base_path

# TODO ! auto mount samba if not mounted
#. smbm.sh

if [ -d "$smb_base_path" ];then

    echo -e "All right !\n\nThe required Samba path is available. :-)"

else

    echo -e "Fail !\n\nThe required Samba path isn't available. :'("
    exit 6

fi

# Here we go !
echo -e 
echo -e "Doing rsync..."

# -C :  --cvs-exclude           auto-ignore files in the same way CVS does 
# -O :  --omit-dir-times        omit directories when preserving times
# -r :  --recursive             recurse into directories
# -a :  --archive               archive mode; same as -rlptgoD (no -H)
# -z :  --compress              compress file data during the transfer
# -p :  --perms                 preserve permissions

addp=""

for e in ${exclude_list[@]};do
    addp="$addp --exclude '$e'"
done

echo -e
echo -e $addp

rsync -COrazp --progress "$local_base_path" "$smb_base_path" \
        --exclude ".DS_Store" \
        --exclude "._.DS_Store" \
        --exclude ".*" \
        $addp;
