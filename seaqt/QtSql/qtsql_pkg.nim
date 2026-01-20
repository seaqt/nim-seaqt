const
  QtSqlCFlags* =
    gorge("pkg-config --cflags Qt5Sql") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSqlLibs* = gorge("pkg-config --libs Qt5Sql")

  QtSqlGenVersion* = "5.15.8"
    ## The version used for generating the bindings

  QtSqlBuildVersion* = gorge("pkg-config --modversion Qt5Sql")
    ## The version used when compiling the application

{.passl: QtSqlLibs}
