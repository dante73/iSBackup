# To disable
#return;

data_type="Media"

echo -e "$data_type"

# When user call individual script
if [ -z "$local_bin_path" ];then

    local_bin_path="$PWD"
fi

local_base_path="$HOME/Music/Playlists"
smb_base="/Volumes/Media"
smb_base_path="$smb_base"
exclude_list=(
)

cd "$local_bin_path"

. mbs.sh
