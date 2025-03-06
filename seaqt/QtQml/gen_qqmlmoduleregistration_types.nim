type QQmlModuleRegistration* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlmoduleregistration.cpp", cflags).}

proc fcQQmlModuleRegistration_delete(self: pointer) {.importc: "QQmlModuleRegistration_delete".}
proc `=destroy`(self: var QQmlModuleRegistration) =
  if self.owned: fcQQmlModuleRegistration_delete(self.h)

proc `=sink`(dest: var QQmlModuleRegistration, source: QQmlModuleRegistration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlModuleRegistration, source: QQmlModuleRegistration) {.error.}
proc delete*(self: sink QQmlModuleRegistration) =
  let h = self.h
  wasMoved(self)
  fcQQmlModuleRegistration_delete(h)

