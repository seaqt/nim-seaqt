type QScriptContext* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Script") & " -fPIC"
{.compile("gen_qscriptcontext.cpp", cflags).}

proc fcQScriptContext_delete(self: pointer) {.importc: "QScriptContext_delete".}
proc `=destroy`(self: var QScriptContext) =
  if self.owned: fcQScriptContext_delete(self.h)

proc `=sink`(dest: var QScriptContext, source: QScriptContext) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptContext, source: QScriptContext) {.error.}
proc delete*(self: sink QScriptContext) =
  let h = self.h
  wasMoved(self)
  fcQScriptContext_delete(h)

