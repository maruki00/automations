#!/usr/bin/bash
# write this script to /usr/bin/commit
# and type commit on curr path of your project 

#---------[v1]------------
# move it to /usr/bin/commit
# give it the exec permission by chmod +x /usr/bin/commit
# type commit in path of your project .
# --------> Old Version
##comment="${1:-commit}"
##echo "The commit is with comment: $comment"
##git add $(pwd) && git commit -am $comment
#  -------> New Version
#---------[v2]--------
# comment="commit"
# if [ $# -eq 1 ] ; then
#     comment=$1
# fi
# echo "Commit with ["$comment"] comment."
# echo "Script executed from: $(pwd)"
# git add $(pwd) && git commit -a -m $comment
#---------[v3]---------
#comment="commit"
#path=$(pwd)
#if [ $# -eq 2 ] ; then
#   path=$1
#   comment=$2
#fi
#if [ $# -eq 1 ] ; then
#    comment=$1
#fi 
#echo "Commit with ["$comment"] comment."
#echo "Script executed from: $(pwd)"
#git add $path && git commit -a -m $comment
#---------[V4]---------
find $(pwd) -type f -iname "*.*" | while read -r file; do          
    if [[ -n $(git status --porcelain "$file") ]]; then         
        git add "$file";   
        if git status "$file" | grep -q "modified:"; then
            git commit -m "Update $(basename "$file")"; 
        else
            git commit -m "Add $(basename "$file")"; 
        fi           
        echo "Committed: $file";          
    # else                  
    #     echo "Skipping (already committed and unchanged): $file";          
    fi;  
done
