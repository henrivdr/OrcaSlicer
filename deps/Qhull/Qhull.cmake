include(GNUInstallDirs)
orcaslicer_add_cmake_project(Qhull
    # URL "https://github.com/qhull/qhull/archive/v8.0.1.zip"
    # URL_HASH SHA256=5287f5edd6a0372588f5d6640799086a4033d89d19711023ef8229dd9301d69b
    URL "https://github.com/qhull/qhull/archive/refs/tags/v8.1-alpha3.zip"
    URL_HASH SHA256=7bd9b5ffae01e69c2ead52f9a9b688af6c65f9a1da05da0a170fa20d81404c06    
    CMAKE_ARGS 
        -DINCLUDE_INSTALL_DIR=${CMAKE_INSTALL_INCLUDEDIR}
)

if (MSVC)
    add_debug_dep(dep_Qhull)
endif ()