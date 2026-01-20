type QScriptValueIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptvalueiterator.cpp", QtScriptCFlags).}

proc fcQScriptValueIterator_delete(self: pointer) {.importc: "QScriptValueIterator_delete".}
proc `=destroy`(self: var QScriptValueIterator) =
  if self.owned: fcQScriptValueIterator_delete(self.h)

proc `=sink`(dest: var QScriptValueIterator, source: QScriptValueIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptValueIterator, source: QScriptValueIterator) {.error.}
proc delete*(self: sink QScriptValueIterator) =
  let h = self.h
  wasMoved(self)
  fcQScriptValueIterator_delete(h)

