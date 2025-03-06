type QJSValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Qml") & " -fPIC"
{.compile("gen_qjsvalue.cpp", cflags).}

proc fcQJSValue_delete(self: pointer) {.importc: "QJSValue_delete".}
proc `=destroy`(self: var QJSValue) =
  if self.owned: fcQJSValue_delete(self.h)

proc `=sink`(dest: var QJSValue, source: QJSValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJSValue, source: QJSValue) {.error.}
proc delete*(self: sink QJSValue) =
  let h = self.h
  wasMoved(self)
  fcQJSValue_delete(h)

