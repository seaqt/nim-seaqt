type QScriptClass* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptclass.cpp", QtScriptCFlags).}

proc fcQScriptClass_delete(self: pointer) {.importc: "QScriptClass_delete".}
proc `=destroy`(self: var QScriptClass) =
  if self.owned: fcQScriptClass_delete(self.h)

proc `=sink`(dest: var QScriptClass, source: QScriptClass) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptClass, source: QScriptClass) {.error.}
proc delete*(self: sink QScriptClass) =
  let h = self.h
  wasMoved(self)
  fcQScriptClass_delete(h)

