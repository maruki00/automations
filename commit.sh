#!/usr/bin/bash
# move it to /usr/bin/commit
# give it the exec permission by chmod +x /usr/bin/commit
# type commit in path of your project .
# --------> Old Version
##comment="${1:-commit}"
##echo "The commit is with comment: $comment"
##git add $(pwd) && git commit -am $comment
#  -------> New Version
comment="commit"
if [ $# -eq 1 ] ; then
    comment=$1
fi
echo "Commit with ["$comment"] comment."
echo "Script executed from: $(pwd)"
git add $(pwd) && git commit -a -m $comment

