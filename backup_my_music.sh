# To disable
return;

data_type="MP3 Files"

# When user call individual script
if [ -z "$local_bin_path" ];then

    local_bin_path="$PWD"
fi

local_base_path="/Volumes/Music SSD"
smb_base="/Volumes/Media"
smb_base_path="$smb_base"
exclude_list=(
  [0]="Music"
)

cd "$local_bin_path"

. mbs.sh
