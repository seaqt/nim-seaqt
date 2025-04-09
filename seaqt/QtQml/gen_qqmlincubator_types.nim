type QQmlIncubator* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qqmlincubator.cpp", cflags).}

proc fcQQmlIncubator_delete(self: pointer) {.importc: "QQmlIncubator_delete".}
proc `=destroy`(self: var QQmlIncubator) =
  if self.owned: fcQQmlIncubator_delete(self.h)

proc `=sink`(dest: var QQmlIncubator, source: QQmlIncubator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlIncubator, source: QQmlIncubator) {.error.}
proc delete*(self: sink QQmlIncubator) =
  let h = self.h
  wasMoved(self)
  fcQQmlIncubator_delete(h)

type QQmlIncubationController* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQQmlIncubationController_delete(self: pointer) {.importc: "QQmlIncubationController_delete".}
proc `=destroy`(self: var QQmlIncubationController) =
  if self.owned: fcQQmlIncubationController_delete(self.h)

proc `=sink`(dest: var QQmlIncubationController, source: QQmlIncubationController) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QQmlIncubationController, source: QQmlIncubationController) {.error.}
proc delete*(self: sink QQmlIncubationController) =
  let h = self.h
  wasMoved(self)
  fcQQmlIncubationController_delete(h)

