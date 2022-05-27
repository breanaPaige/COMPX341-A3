for i in `find . -name "*.ts" -type f`; do
    echo '// Breana Ahern 1533265' | cat - $i> temp && mv temp $i
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