type QScriptProgram* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptprogram.cpp", QtScriptCFlags).}

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

