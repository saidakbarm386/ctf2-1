#!/bin/bash

# Function to create directory structure
create_directories() {
    local base_dir="$1"
    local depth="$2"
    local width="$3"

    if [ "$depth" -eq 0 ]; then
        return
    fi

    for ((i=1; i<=width; i++)); do
        local dir_name="${base_dir}/dir${i}"
        mkdir -p "$dir_name"
        create_pcap_files "$dir_name" 10
        create_directories "$dir_name" $((depth-1)) $width
    done
}

# Function to create pcap files
create_pcap_files() {
    local dir="$1"
    local num_files="$2"

    for ((i=1; i<=num_files; i++)); do
        touch "$dir/flow_and_export_$i.pcap"
    done
}

# Move files to another directory
move_files() {
    local src_dir="$1"
    local dest_dir="$2"

    cp $src_dir $dest_dir
}

# Create main directories
mkdir -p {flow_and_export,dir2,dir3}

# Create subdirectories and pcap files recursively
create_directories "$HOME/func" 2 3

rm "$HOME/func/flow_and_export/flow_and_export/flow_and_export_7.pcap"

# Move files from desktop to another directory
move_files "$HOME/flow_and_export_7.pcap" "$HOME/func/flow_and_export/flow_and_export/"

echo "Directory structure and files created successfully."
