const
  QtSqlCFlags* =
    gorge("pkg-config --cflags Qt6Sql") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtSqlLibs* = gorge("pkg-config --libs Qt6Sql")

  QtSqlGenVersion* = "6.11.1"
    ## The version used for generating the bindings

  QtSqlBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6Sql")
      if v.len > 0: v else: QtSqlGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtSqlBuildVersion=x.y.z

{.passl: QtSqlLibs}
