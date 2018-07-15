if ! which sourcery > /dev/null; then
    echo "error: Sourcery is not installed."
    exit 1
fi

cd ./src/${TARGET_NAME}

sourcery
