npm install

if npm run build ; then
    echo "Build succeeded"
    git add *
    git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    git push
else
    echo "Command failed"
fi

npm run start