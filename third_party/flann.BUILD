licenses(["notice"])  # BSD 3-Clause

# Do not support cuda for now.
FLANN_CUDA_HDRS = [
    "cpp/flann/algorithms/all_indices.h",
    "cpp/flann/algorithms/kdtree_cuda_builder.h",
    "cpp/flann/util/cutil_math.h",
]

cc_library(
    name = "flann",
    hdrs = glob(
        [
            "src/cpp/flann/*.h",
            "src/cpp/flann/*.hpp",
            "src/cpp/flann/algorithms/*.h",
            "src/cpp/flann/nn/*.h",
            "src/cpp/flann/util/*.h",
        ],
        exclude = FLANN_CUDA_HDRS,
    ),
    includes = ["src/cpp"],
    visibility = ["//visibility:public"],
    deps = ["@lz4"],
)
