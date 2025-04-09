type QObjectData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qobject.cpp", cflags).}

proc fcQObjectData_delete(self: pointer) {.importc: "QObjectData_delete".}
proc `=destroy`(self: var QObjectData) =
  if self.owned: fcQObjectData_delete(self.h)

proc `=sink`(dest: var QObjectData, source: QObjectData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QObjectData, source: QObjectData) {.error.}
proc delete*(self: sink QObjectData) =
  let h = self.h
  wasMoved(self)
  fcQObjectData_delete(h)

type QObject* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQObject_delete(self: pointer) {.importc: "QObject_delete".}
proc `=destroy`(self: var QObject) =
  if self.owned: fcQObject_delete(self.h)

proc `=sink`(dest: var QObject, source: QObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QObject, source: QObject) {.error.}
proc delete*(self: sink QObject) =
  let h = self.h
  wasMoved(self)
  fcQObject_delete(h)

proc fcQObject_deleteLater(self: pointer) {.importc: "QObject_deleteLater".}
proc deleteLater*(self: sink QObject) =
  let h = self.h
  wasMoved(self)
  fcQObject_deleteLater(h)

type QSignalBlocker* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSignalBlocker_delete(self: pointer) {.importc: "QSignalBlocker_delete".}
proc `=destroy`(self: var QSignalBlocker) =
  if self.owned: fcQSignalBlocker_delete(self.h)

proc `=sink`(dest: var QSignalBlocker, source: QSignalBlocker) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSignalBlocker, source: QSignalBlocker) {.error.}
proc delete*(self: sink QSignalBlocker) =
  let h = self.h
  wasMoved(self)
  fcQSignalBlocker_delete(h)

