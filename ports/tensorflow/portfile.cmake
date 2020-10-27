set(TF_LIB_SUFFIX "")
set(TF_PORT_SUFFIX "")
set(TF_PORT_SUFFIX_INVERSE "-cc")
set(TF_PATCHES_PREFIX "../tensorflow-cc/")
set(TF_INCLUDE_DIRS "${INSTALL_PREFIX}/${TARGET_TRIPLET}/include/tensorflow-external;${INSTALL_PREFIX}/${TARGET_TRIPLET}/include/tensorflow-external/src")
include(../tensorflow-cc/tensorflow-common)

file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/c_api.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/eager/c_api.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c/eager)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/tf_attrtype.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/tf_datatype.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/tf_status.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/tf_tensor.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/c_api_experimental.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/kernels.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
file(COPY ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bazel-bin/tensorflow/include/tensorflow/c/ops.h DESTINATION ${CURRENT_PACKAGES_DIR}/include/tensorflow/c)
