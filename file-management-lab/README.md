# File Management Lab

## Overview

This beginner Linux lab demonstrates basic file system operations using the terminal. It shows how to create directories, create files, edit text with nano, organize files, and verify work with command-line tools.

## Objectives

- Create directories
- Create files
- Edit files with nano
- Organize files
- Verify using terminal commands

## Project Structure

```text
file-management-lab/
├── README.md
├── practice.sh
├── drafts/
│   └── letter.txt
├── final/
│   └── final_letter.txt
└── logs/
    └── activity.log
```

## Commands Used

- `mkdir`: Creates new directories.
- `cd`: Changes the current working directory.
- `pwd`: Shows the current working directory.
- `touch`: Creates an empty file or updates a file timestamp.
- `nano`: Opens a file in the nano text editor.
- `cat`: Displays file contents in the terminal.
- `mv`: Moves or renames files and directories.
- `cp`: Copies files and directories.
- `ls`: Lists files and directories.

## Running the Script

The `practice.sh` script automates the core file management steps in this lab. From the `file-management-lab/` directory, run:

```bash
chmod +x practice.sh
./practice.sh
```

The script creates the `drafts`, `final`, and `logs` directories, writes sample content to `drafts/letter.txt`, copies it to `final/final_letter.txt`, applies file permissions, and appends timestamped entries to `logs/activity.log`.

## File Permissions

Linux file permissions control who can read, write, or execute a file. This lab uses `644` for the letter files:

- Owner: read and write
- Group: read only
- Others: read only

This is a common permission choice for regular text files. It allows the file owner to edit the letters while allowing others to read them without making the files executable.

## Key Takeaways

This lab helped me practice the basic steps of working with files and folders from the Linux terminal. I learned how small commands can be combined to create, edit, copy, move, and check files without using a graphical file manager.

## Future Improvements

- File permissions
- Bash scripting
- Automation
- Logging improvements

The `practice.sh` script implements these improvements by adding permission changes, basic Bash scripting, automated file setup, and timestamped logging.
