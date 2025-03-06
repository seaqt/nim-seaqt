type QJsonValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qjsonvalue.cpp", cflags).}

proc fcQJsonValue_delete(self: pointer) {.importc: "QJsonValue_delete".}
proc `=destroy`(self: var QJsonValue) =
  if self.owned: fcQJsonValue_delete(self.h)

proc `=sink`(dest: var QJsonValue, source: QJsonValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValue, source: QJsonValue) {.error.}
proc delete*(self: sink QJsonValue) =
  let h = self.h
  wasMoved(self)
  fcQJsonValue_delete(h)

type QJsonValueConstRef* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonValueConstRef_delete(self: pointer) {.importc: "QJsonValueConstRef_delete".}
proc `=destroy`(self: var QJsonValueConstRef) =
  if self.owned: fcQJsonValueConstRef_delete(self.h)

proc `=sink`(dest: var QJsonValueConstRef, source: QJsonValueConstRef) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonValueConstRef, source: QJsonValueConstRef) {.error.}
proc delete*(self: sink QJsonValueConstRef) =
  let h = self.h
  wasMoved(self)
  fcQJsonValueConstRef_delete(h)

type QJsonValueRef* = object of QJsonValueConstRef
