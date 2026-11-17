const
  QtStateMachineCFlags* =
    gorge("pkg-config --cflags Qt6StateMachine") &
    (when defined(gcc) or defined(llvm): " -fPIC" else: "")

  QtStateMachineLibs* = gorge("pkg-config --libs Qt6StateMachine")

  QtStateMachineGenVersion* = "6.8.3"
    ## The version used for generating the bindings

  QtStateMachineBuildVersion* = gorge("pkg-config --modversion Qt6StateMachine")
    ## The version used when compiling the application

{.passl: QtStateMachineLibs}
