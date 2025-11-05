set shell := ["nu", "-c"]

# Allow direnv
init:
    @print "Enviroment Initalized... (This Command only needs to be run once)"
    @direnv allow

# Prepare for build
pre-build:
    @print "Preparing for build..."
    @cmake -S llvm -B build -G Ninja -DLLVM_ENABLE_PROJECTS='clang' -DCMAKE_BUILD_TYPE=Release

# Build LLVM
build:
    @print "Building LLVM..."
    @cmake --build build
