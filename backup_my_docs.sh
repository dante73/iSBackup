# To disable
#return;

data_type="Documents"

# When user call individual script
if [ -z "$local_bin_path" ];then

    local_bin_path="$PWD"
fi

local_base_path="$HOME/Documents"
smb_base="/Volumes/Data"
smb_base_path="$smb_base"
exclude_list=(
    [0]="Microsoft\sUser\sData"
)

cd "$local_bin_path"

. mbs.sh
