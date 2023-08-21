#!/bin/bash

# Copy over the bin, include and lib dirs
cp ${SRC_DIR}/bin/* ${LIBRARY_BIN}/
if [[ $? -ne 0 ]]; then exit 1; fi

cp ${SRC_DIR}/include/* ${LIBRARY_INC}/
if [[ $? -ne 0 ]]; then exit 1; fi

cp ${SRC_DIR}/lib/* ${LIBRARY_LIB}/
if [[ $? -ne 0 ]]; then exit 1; fi

# Add the licences to the recipe directory
# cp ${SRC_DIR}/LICENSE ${RECIPE_DIR}

exit 0
