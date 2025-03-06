type QScriptProgram* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Script") & " -fPIC"
{.compile("gen_qscriptprogram.cpp", cflags).}

proc fcQScriptProgram_delete(self: pointer) {.importc: "QScriptProgram_delete".}
proc `=destroy`(self: var QScriptProgram) =
  if self.owned: fcQScriptProgram_delete(self.h)

proc `=sink`(dest: var QScriptProgram, source: QScriptProgram) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptProgram, source: QScriptProgram) {.error.}
proc delete*(self: sink QScriptProgram) =
  let h = self.h
  wasMoved(self)
  fcQScriptProgram_delete(h)

