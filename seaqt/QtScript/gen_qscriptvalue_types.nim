type QScriptValue* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Script") & " -fPIC"
{.compile("gen_qscriptvalue.cpp", cflags).}

proc fcQScriptValue_delete(self: pointer) {.importc: "QScriptValue_delete".}
proc `=destroy`(self: var QScriptValue) =
  if self.owned: fcQScriptValue_delete(self.h)

proc `=sink`(dest: var QScriptValue, source: QScriptValue) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptValue, source: QScriptValue) {.error.}
proc delete*(self: sink QScriptValue) =
  let h = self.h
  wasMoved(self)
  fcQScriptValue_delete(h)

