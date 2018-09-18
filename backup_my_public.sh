# To disable
return;

data_type="Pasta Pública"

# When user call individual script
if [ -z "$local_bin_path" ];then

    local_bin_path="$PWD"
fi

local_base_path="$HOME/Public"
smb_base="/Volumes/Data"
smb_base_path="$smb_base"
exclude_list=(
)

cd "$local_bin_path"

. mbs.sh
