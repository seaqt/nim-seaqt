type QScriptSyntaxCheckResult* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptengine.cpp", QtScriptCFlags).}

proc fcQScriptSyntaxCheckResult_delete(self: pointer) {.importc: "QScriptSyntaxCheckResult_delete".}
proc `=destroy`(self: var QScriptSyntaxCheckResult) =
  if self.owned: fcQScriptSyntaxCheckResult_delete(self.h)

proc `=sink`(dest: var QScriptSyntaxCheckResult, source: QScriptSyntaxCheckResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptSyntaxCheckResult, source: QScriptSyntaxCheckResult) {.error.}
proc delete*(self: sink QScriptSyntaxCheckResult) =
  let h = self.h
  wasMoved(self)
  fcQScriptSyntaxCheckResult_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QScriptEngine* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QScriptEngine, source: QScriptEngine) {.error.}
proc `=sink`(dest: var QScriptEngine, source: QScriptEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

