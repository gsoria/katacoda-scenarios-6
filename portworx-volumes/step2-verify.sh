(($(ssh -o strictHostKeyChecking=no node01 pxctl service pool show  | grep  "Pool ID: 1") == "Pool ID: 1" )) && (( $(ssh -o strictHostKeyChecking=no node01 pxctl service pool show  | grep  "Pool ID:" | wc -l) == "2" )) && echo "done"
