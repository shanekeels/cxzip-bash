#!/bin/bash
#CxZip.sh <FolderToZip> <ZipFileToCreate.zip> for Unix
if [ "$#" -ne 2 ] || ! [ -d "$1" ]; then
  echo "Usage: $0 <FolderToZip> <ZipFileToCreate.zip>" >&2
  exit 1
fi
echo "beginning CxZip on $1"
find $1 | egrep "\.(sln|csproj|cs|xaml|cshtml|javasln|project|java|jsp|jspf|xhtml|jsf|tld|tag|mf|js|html|htm|apex|apexp|page|component|cls|trigger|tgr|object|report|workflow|-meta|xml|cpp|cxx|hpp|hh|hxx|c|cc|h|vb|vbs|asp|bas|frm|cls|dsr|ctl|vb|vbp|php|php3|php4|php5|phtm|phtml|tpl|ctp|twig|rb|rhtml|rxml|rjs|erb|lock|pl|pm|plx|psgi|m|h|xib|pls|sql|pkh|pks|pkb|pck|py|gtl|groovy|gsh|gvy|gy|gsp|properties|aspx|asax|ascx|master|config|xml|cgi|inc)$" | zip -@ $2
#size=$(stat -f %z "$2")
size=$(stat -c %s "$2")
echo "$2 created: $size bytes"
echo "CxZip Complete"