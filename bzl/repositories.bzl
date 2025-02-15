load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def pcl_repositories():
    maybe(
        http_archive,
        name = "com_github_nelhage_rules_boost",
        sha256 = "b64e6f7e96c5b0d7ebcb74c5ee29ab879b8ef8c37581ed0be5ff6c23168da985",
        strip_prefix = "rules_boost-ed844db5990d21b75dc3553c057069f324b3916b",
        urls = ["https://github.com/nelhage/rules_boost/archive/ed844db5990d21b75dc3553c057069f324b3916b.tar.gz"],
    )

    maybe(
        http_archive,
        name = "eigen",
        build_file = "@rules_pcl//third_party:eigen.BUILD",
        sha256 = "a8d87c8df67b0404e97bcef37faf3b140ba467bc060e2b883192165b319cea8d",
        strip_prefix = "eigen-git-mirror-3.3.7",
        # NOTE: The official repo is hosted on gitlab, but gitlab appears to return a 406 error when
        # trying to fetch archives. So we are using the deprecated github mirror instead until
        # either bazel or gitlab fixes this issue.
        # See:
        #  https://github.com/bazelbuild/bazel/issues/11187
        #  https://stackoverflow.com/questions/60864626/cannot-fetch-eigen-with-bazel-406-not-acceptable
        urls = ["https://github.com/eigenteam/eigen-git-mirror/archive/3.3.7.tar.gz"],
    )

    # Latest commit as of April 6, 2019
    maybe(
        http_archive,
        name = "flann",
        build_file = "@rules_pcl//third_party:flann.BUILD",
        sha256 = "9080a91be5759a0b4ef41f62e58896a714ec85d37c2567341a0503039655b1eb",
        strip_prefix = "flann-1d04523268c388dabf1c0865d69e1b638c8c7d9d",
        urls = ["https://github.com/flann-lib/flann/archive/1d04523268c388dabf1c0865d69e1b638c8c7d9d.tar.gz"],
    )

    maybe(
        http_archive,
        name = "lz4",
        build_file = "@rules_pcl//third_party:lz4.BUILD",
        sha256 = "030644df4611007ff7dc962d981f390361e6c97a34e5cbc393ddfbe019ffe2c1",
        strip_prefix = "lz4-1.9.3",
        urls = ["https://github.com/lz4/lz4/archive/refs/tags/v1.9.3.tar.gz"],
    )

    maybe(
        http_archive,
        name = "net_zlib_zlib",
        sha256 = "6d4d6640ca3121620995ee255945161821218752b551a1a180f4215f7d124d45",
        build_file = "@rules_pcl//third_party:zlib.BUILD",
        strip_prefix = "zlib-cacf7f1d4e3d44d871b605da3b647f07d718623f",
        urls = [
            "https://mirror.bazel.build/github.com/madler/zlib/archive/cacf7f1d4e3d44d871b605da3b647f07d718623f.tar.gz",
            "https://github.com/madler/zlib/archive/cacf7f1d4e3d44d871b605da3b647f07d718623f.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "org_libpng_libpng",
        build_file = "@rules_pcl//third_party:libpng.BUILD",
        sha256 = "7f415186d38ca71c23058386d7cf5135c8beda821ee1beecdc2a7a26c0356615",
        strip_prefix = "libpng-1.2.57",
        urls = [
            "https://github.com/glennrp/libpng/archive/v1.2.57.tar.gz",
            "https://mirror.bazel.build/github.com/glennrp/libpng/archive/v1.2.57.tar.gz",
        ],
    )

    maybe(
        http_archive,
        name = "pcl",
	sha256 = "b52e1424686843c94c5771795a79d7a33296708ce23173a3f32769c30ee3a993",
        build_file = "@rules_pcl//third_party:pcl.BUILD",
        strip_prefix = "pcl-pcl-1.10.0",
        urls = ["https://github.com/PointCloudLibrary/pcl/archive/refs/tags/pcl-1.10.0.zip"],
    )

    maybe(
        http_archive,
        name = "qhull",
        build_file = "@rules_pcl//third_party:qhull.BUILD",
        sha256 = "cf7235b76244595a86b9407b906e3259502b744528318f2178155e5899d6cf9f",
        strip_prefix = "qhull-2019.1",
        urls = ["https://github.com/qhull/qhull/archive/2019.1.tar.gz"],
    )
