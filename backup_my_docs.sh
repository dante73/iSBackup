data_type="Documents"
local_base_path="$HOME/Documents"
smb_base="/Volumes/Data"
smb_base_path="$smb_base/MacMini"
exclude_list=(
    [0]="Microsoft\sUser\sData"
)

cd $local_bin_path

. mbs.sh

cd
