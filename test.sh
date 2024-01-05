ORG_NAME=flock-community
while IFS= read -r repo; do
    REPO_NAME=$(echo $repo)
    echo "Repository: $REPO_NAME"
    echo "Calling 'https://raw.githubusercontent.com/$ORG_NAME/$REPO_NAME/master/readme.md'"
    README_FIRST_LINE=$(curl https://raw.githubusercontent.com/$ORG_NAME/$REPO_NAME/master/readme.md | head -n 3)
    echo " Repository: $REPO_NAME - First Line of README: \n\n$README_FIRST_LINE\n\n "
    echo "---"
done < repos.txt
