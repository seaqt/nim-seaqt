type QScriptable* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptable.cpp", QtScriptCFlags).}

proc fcQScriptable_delete(self: pointer) {.importc: "QScriptable_delete".}
proc `=destroy`(self: var QScriptable) =
  if self.owned: fcQScriptable_delete(self.h)

proc `=sink`(dest: var QScriptable, source: QScriptable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptable, source: QScriptable) {.error.}
proc delete*(self: sink QScriptable) =
  let h = self.h
  wasMoved(self)
  fcQScriptable_delete(h)

