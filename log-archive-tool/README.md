# Log Archive Tool
A bash function to archive a log directory by compressing it into a timestamped `.tar.gz` file.

## Getting Started
1. **Clone the repository**
    ```
    git clone https://github.com/jstin9/devops-lab.git
    cd log-archive-tool
    ```

2. **Make the script executable**
    ```
    chmod +x log-archive-tool.sh
    ```
3. **Load the function and run it**  
    ```
    source ./log-archive-tool.sh
    log-archive /path/to/log-directory
    ```
If the directory exists, the script creates `logs_archive_YYYYMMDD_HHMMSS.tar.gz` in the current directory.

This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
