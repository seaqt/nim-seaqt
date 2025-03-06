type QScriptString* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Script") & " -fPIC"
{.compile("gen_qscriptstring.cpp", cflags).}

proc fcQScriptString_delete(self: pointer) {.importc: "QScriptString_delete".}
proc `=destroy`(self: var QScriptString) =
  if self.owned: fcQScriptString_delete(self.h)

proc `=sink`(dest: var QScriptString, source: QScriptString) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptString, source: QScriptString) {.error.}
proc delete*(self: sink QScriptString) =
  let h = self.h
  wasMoved(self)
  fcQScriptString_delete(h)

