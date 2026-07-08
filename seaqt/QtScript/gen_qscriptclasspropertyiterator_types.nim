type QScriptClassPropertyIterator* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtscript_pkg

{.compile("gen_qscriptclasspropertyiterator.cpp", QtScriptCFlags).}

proc fcQScriptClassPropertyIterator_delete(self: pointer) {.importc: "QScriptClassPropertyIterator_delete".}
proc `=destroy`(self: var QScriptClassPropertyIterator) =
  if self.owned: fcQScriptClassPropertyIterator_delete(self.h)

proc `=sink`(dest: var QScriptClassPropertyIterator, source: QScriptClassPropertyIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScriptClassPropertyIterator, source: QScriptClassPropertyIterator) {.error.}
proc delete*(self: sink QScriptClassPropertyIterator) =
  let h = self.h
  wasMoved(self)
  fcQScriptClassPropertyIterator_delete(h)

