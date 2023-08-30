# Copy over the files in include and lib dirs
# default permissions set to 644 for static files
for dir in "include" "include/cpp"
do
    for filepath in $(find ${SRC_DIR}/${dir} -type f -maxdepth 1 || exit 1)
    do
        FILENAME=$(basename ${filepath})
        install -d ${PREFIX}/${dir} && install -v -m644 ${filepath} ${PREFIX}/${dir}/${FILENAME} || exit 1
    done
done

# default permissions set to 755 for binary files
for filepath in $(find ${SRC_DIR}/lib -type f -maxdepth 1 || exit 1)
do
    FILENAME=$(basename ${filepath})
    install -d ${PREFIX}/lib && install -v -m755 ${filepath} ${PREFIX}/lib/${FILENAME} || exit 1
done

exit 0
