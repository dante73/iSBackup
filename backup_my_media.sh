data_type="Media"
local_base_path="$HOME/Music/iTunes"
smb_base="/Volumes/Data"
smb_base_path="$smb_base/MacMini/Music"
exclude_list=(
    [0]="iTunes\sU"
)

cd $local_bin_path

. mbs.sh

cd
