type QScriptEngineAgent* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptengineagent.cpp", QtScriptCFlags).}

proc fcQScriptEngineAgent_delete(self: pointer) {.importc: "QScriptEngineAgent_delete".}
proc `=destroy`(self: var QScriptEngineAgent) =
  if self.owned: fcQScriptEngineAgent_delete(self.h)

proc `=sink`(dest: var QScriptEngineAgent, source: QScriptEngineAgent) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptEngineAgent, source: QScriptEngineAgent) {.error.}
proc delete*(self: sink QScriptEngineAgent) =
  let h = self.h
  wasMoved(self)
  fcQScriptEngineAgent_delete(h)

