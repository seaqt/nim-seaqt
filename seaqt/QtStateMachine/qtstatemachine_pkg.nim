const
  QtStateMachineCFlags* =
    gorge("pkg-config --cflags Qt6StateMachine") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtStateMachineLibs* = gorge("pkg-config --libs Qt6StateMachine")

  QtStateMachineGenVersion* = "6.11.1"
    ## The version used for generating the bindings

  QtStateMachineBuildVersion* {.strdefine.} =
    block:
      const v = gorge("pkg-config --modversion Qt6StateMachine")
      if v.len > 0: v else: QtStateMachineGenVersion
    ## The version used when compiling the application - nim check and
    ## nimsuggest do not run gorge and fall back to the generation version;
    ## override with -d:QtStateMachineBuildVersion=x.y.z

{.passl: QtStateMachineLibs}
