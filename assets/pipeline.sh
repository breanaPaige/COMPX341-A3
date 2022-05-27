for i in `find . -name "*.ts" -type f`; do
   if cat $i | grep '// Breana Ahern 1533265' > /dev/null; then
    echo "already in file"
   else
    echo "added to file"
    echo '// Breana Ahern 1533265' | cat - $i> temp && mv temp $i
   fi
done

if [ "$#" -ne 1 ] ; then
    echo "Please provide a commit message"

else 
    npm install

    if npm run build ; then
        echo "Build succeeded"
        git add *
        git commit -m "$1"
        git push
        
    else
        echo "Command failed"
    fi

    npm run start

fi