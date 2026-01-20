type QScriptContextInfo* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptcontextinfo.cpp", QtScriptCFlags).}

proc fcQScriptContextInfo_delete(self: pointer) {.importc: "QScriptContextInfo_delete".}
proc `=destroy`(self: var QScriptContextInfo) =
  if self.owned: fcQScriptContextInfo_delete(self.h)

proc `=sink`(dest: var QScriptContextInfo, source: QScriptContextInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptContextInfo, source: QScriptContextInfo) {.error.}
proc delete*(self: sink QScriptContextInfo) =
  let h = self.h
  wasMoved(self)
  fcQScriptContextInfo_delete(h)

