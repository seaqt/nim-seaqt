type QAccessible* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qaccessible_base.cpp", cflags).}

proc fcQAccessible_delete(self: pointer) {.importc: "QAccessible_delete".}
proc `=destroy`(self: var QAccessible) =
  if self.owned: fcQAccessible_delete(self.h)

proc `=sink`(dest: var QAccessible, source: QAccessible) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessible, source: QAccessible) {.error.}
proc delete*(self: sink QAccessible) =
  let h = self.h
  wasMoved(self)
  fcQAccessible_delete(h)

type QAccessibleState* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleState_delete(self: pointer) {.importc: "QAccessible__State_delete".}
proc `=destroy`(self: var QAccessibleState) =
  if self.owned: fcQAccessibleState_delete(self.h)

proc `=sink`(dest: var QAccessibleState, source: QAccessibleState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleState, source: QAccessibleState) {.error.}
proc delete*(self: sink QAccessibleState) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleState_delete(h)

type QAccessibleActivationObserver* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAccessibleActivationObserver_delete(self: pointer) {.importc: "QAccessible__ActivationObserver_delete".}
proc `=destroy`(self: var QAccessibleActivationObserver) =
  if self.owned: fcQAccessibleActivationObserver_delete(self.h)

proc `=sink`(dest: var QAccessibleActivationObserver, source: QAccessibleActivationObserver) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAccessibleActivationObserver, source: QAccessibleActivationObserver) {.error.}
proc delete*(self: sink QAccessibleActivationObserver) =
  let h = self.h
  wasMoved(self)
  fcQAccessibleActivationObserver_delete(h)

