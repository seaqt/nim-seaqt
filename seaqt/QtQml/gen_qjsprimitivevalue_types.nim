type QJSPrimitiveUndefined* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Qml") & " -fPIC"
{.compile("gen_qjsprimitivevalue.cpp", cflags).}

proc fcQJSPrimitiveUndefined_delete(self: pointer) {.importc: "QJSPrimitiveUndefined_delete".}
proc `=destroy`(self: var QJSPrimitiveUndefined) =
  if self.owned: fcQJSPrimitiveUndefined_delete(self.h)

proc `=sink`(dest: var QJSPrimitiveUndefined, source: QJSPrimitiveUndefined) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSPrimitiveUndefined, source: QJSPrimitiveUndefined) {.error.}
proc delete*(self: sink QJSPrimitiveUndefined) =
  let h = self.h
  wasMoved(self)
  fcQJSPrimitiveUndefined_delete(h)

type QJSPrimitiveNull* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJSPrimitiveNull_delete(self: pointer) {.importc: "QJSPrimitiveNull_delete".}
proc `=destroy`(self: var QJSPrimitiveNull) =
  if self.owned: fcQJSPrimitiveNull_delete(self.h)

proc `=sink`(dest: var QJSPrimitiveNull, source: QJSPrimitiveNull) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSPrimitiveNull, source: QJSPrimitiveNull) {.error.}
proc delete*(self: sink QJSPrimitiveNull) =
  let h = self.h
  wasMoved(self)
  fcQJSPrimitiveNull_delete(h)

type QJSPrimitiveValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJSPrimitiveValue_delete(self: pointer) {.importc: "QJSPrimitiveValue_delete".}
proc `=destroy`(self: var QJSPrimitiveValue) =
  if self.owned: fcQJSPrimitiveValue_delete(self.h)

proc `=sink`(dest: var QJSPrimitiveValue, source: QJSPrimitiveValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSPrimitiveValue, source: QJSPrimitiveValue) {.error.}
proc delete*(self: sink QJSPrimitiveValue) =
  let h = self.h
  wasMoved(self)
  fcQJSPrimitiveValue_delete(h)

