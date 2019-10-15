
# CxZip in bash
## Description:
To create a smaller file for upload into the Checkmarx CxSAST Web Portal using Bash

When uploading a project for scanning, if the zip file is larger than 200 MB, you will not be able to upload it. To create a smaller zip file of only files with specified extensions supported by Checkmarx, you can use CxZip utility for Mac or Unix Command Line.

Author: _Shane Keels_
#### Requirements
* Mac OS X Terminal
* or
* Unix Command Line

## HOWTO: Usage
* Place `CxZip.sh` in any directory
* Optional: Change CxZip.sh file permissions to allow for execution `chmod +x CxZip.sh`
* Usage Syntax: `CxZip.sh <FolderToZip> <ZipFileToCreate.zip>`
