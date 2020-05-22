#!/usr/bin/bash

cd ray
#patch -p1 < ../ray.patch
#cp ../rules_boost-context-thread-arm64.patch thirdparty/patches/
cd python
pushd ray/dashboard/client/
#/usr/local/bin/npm ci
#/usr/local/bin/npm run build
popd
BAZEL_EXECUTABLE=../../bin/bazel python setup.py bdist_wheel
