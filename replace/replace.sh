#! /bin/sh
echo "Find regexp: \<${1}\>"
echo "Replace with: ${2}"
echo "In these files:"
find -type f |xargs grep --color=auto "\<${1}\>"
echo "Press enter to confirm..."
read user_enter
find -type f |xargs grep -l "\<${1}\>" |xargs sed -i -e "s/\<${1}\>/${2}/g"
