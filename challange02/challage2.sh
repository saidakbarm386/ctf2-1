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
mkdir -p {dir1,dir2,dir3}

# Create subdirectories and pcap files recursively
create_directories "$HOME/Desktop/func" 2 3

rm "$HOME/Desktop/func/dir1/dir1/flow_and_export_7.pcap"

# Move files from desktop to another directory
move_files "$HOME/Desktop/flow_and_export_7.pcap" "$HOME/Desktop/func/dir1/dir1/"

echo "Directory structure and files created successfully."
