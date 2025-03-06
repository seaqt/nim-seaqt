type QMethodRawArguments* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qobjectdefs.cpp", cflags).}

proc fcQMethodRawArguments_delete(self: pointer) {.importc: "QMethodRawArguments_delete".}
proc `=destroy`(self: var QMethodRawArguments) =
  if self.owned: fcQMethodRawArguments_delete(self.h)

proc `=sink`(dest: var QMethodRawArguments, source: QMethodRawArguments) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMethodRawArguments, source: QMethodRawArguments) {.error.}
proc delete*(self: sink QMethodRawArguments) =
  let h = self.h
  wasMoved(self)
  fcQMethodRawArguments_delete(h)

type QGenericArgument* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQGenericArgument_delete(self: pointer) {.importc: "QGenericArgument_delete".}
proc `=destroy`(self: var QGenericArgument) =
  if self.owned: fcQGenericArgument_delete(self.h)

proc `=sink`(dest: var QGenericArgument, source: QGenericArgument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QGenericArgument, source: QGenericArgument) {.error.}
proc delete*(self: sink QGenericArgument) =
  let h = self.h
  wasMoved(self)
  fcQGenericArgument_delete(h)

type QGenericReturnArgument* = object of QGenericArgument
type QMetaObject* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaObject_delete(self: pointer) {.importc: "QMetaObject_delete".}
proc `=destroy`(self: var QMetaObject) =
  if self.owned: fcQMetaObject_delete(self.h)

proc `=sink`(dest: var QMetaObject, source: QMetaObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaObject, source: QMetaObject) {.error.}
proc delete*(self: sink QMetaObject) =
  let h = self.h
  wasMoved(self)
  fcQMetaObject_delete(h)

type QMetaObjectConnection* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaObjectConnection_delete(self: pointer) {.importc: "QMetaObject__Connection_delete".}
proc `=destroy`(self: var QMetaObjectConnection) =
  if self.owned: fcQMetaObjectConnection_delete(self.h)

proc `=sink`(dest: var QMetaObjectConnection, source: QMetaObjectConnection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaObjectConnection, source: QMetaObjectConnection) {.error.}
proc delete*(self: sink QMetaObjectConnection) =
  let h = self.h
  wasMoved(self)
  fcQMetaObjectConnection_delete(h)

type QMetaObjectSuperData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaObjectSuperData_delete(self: pointer) {.importc: "QMetaObject__SuperData_delete".}
proc `=destroy`(self: var QMetaObjectSuperData) =
  if self.owned: fcQMetaObjectSuperData_delete(self.h)

proc `=sink`(dest: var QMetaObjectSuperData, source: QMetaObjectSuperData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaObjectSuperData, source: QMetaObjectSuperData) {.error.}
proc delete*(self: sink QMetaObjectSuperData) =
  let h = self.h
  wasMoved(self)
  fcQMetaObjectSuperData_delete(h)

type QMetaObjectData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQMetaObjectData_delete(self: pointer) {.importc: "QMetaObject__Data_delete".}
proc `=destroy`(self: var QMetaObjectData) =
  if self.owned: fcQMetaObjectData_delete(self.h)

proc `=sink`(dest: var QMetaObjectData, source: QMetaObjectData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaObjectData, source: QMetaObjectData) {.error.}
proc delete*(self: sink QMetaObjectData) =
  let h = self.h
  wasMoved(self)
  fcQMetaObjectData_delete(h)

