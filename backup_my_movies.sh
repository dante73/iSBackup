data_type="Media"
local_bin_path="$PWD"
local_base_path="$HOME/Music/iTunes/iTunes Media/Home Videos"
smb_base="/Volumes/Media"
smb_base_path="$smb_base"
exclude_list=(
    [0]="iTunes\sU"
)

cd "$local_bin_path"

. mbs.sh

cd
