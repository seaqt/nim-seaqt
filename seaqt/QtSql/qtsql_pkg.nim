const
  QtSqlCFlags* =
    gorge("pkg-config --cflags Qt6Sql") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSqlLibs* = gorge("pkg-config --libs Qt6Sql")

  QtSqlGenVersion* = "6.4.3"
    ## The version used for generating the bindings

  QtSqlBuildVersion* = gorge("pkg-config --modversion Qt6Sql")
    ## The version used when compiling the application

{.passl: QtSqlLibs}
