# Copy over the include and lib dirs
mkdir ${PREFIX}/include && cp -r ${SRC_DIR}/include/* ${PREFIX}/include
if [[ $? -ne 0 ]]; then exit 1; fi

mkdir ${PREFIX}/lib && cp -r ${SRC_DIR}/lib/* ${PREFIX}/lib
if [[ $? -ne 0 ]]; then exit 1; fi

exit 0
