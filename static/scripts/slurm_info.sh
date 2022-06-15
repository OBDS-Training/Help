# Capture the multiline output of `sinfo`
sinfo_out="$(sinfo)"
echo "$sinfo_out"

# List of partitions
partition_names=$( \
    echo "$sinfo_out" \
    | sed -e 1d \
    | sed -e 's/ \+/ /g' \
    | cut -d ' ' -f 1 \
    | sed -e 's/*//g' \
    | sort \
    | uniq)
echo "$partition_names"

# List of node names
