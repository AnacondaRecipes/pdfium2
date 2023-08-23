# Copy over the files in include and lib dirs
for dir in "include" "include/cpp" "lib"
do
    for filename in $(basename $(find ${SRC_DIR}/${dir} -type f -maxdepth 1) || exit 1)
    do
        install -d ${PREFIX}/${dir} && \
        install -v -m644 ${SRC_DIR}/${dir}/${filename} ${PREFIX}/${dir}/${filename} || \
        exit 1
    done
done

exit 0
