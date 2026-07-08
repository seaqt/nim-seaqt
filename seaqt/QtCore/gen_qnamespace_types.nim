type QKeyCombination* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qnamespace.cpp", QtCoreCFlags).}

proc fcQKeyCombination_delete(self: pointer) {.importc: "QKeyCombination_delete".}
proc `=destroy`(self: var QKeyCombination) =
  if self.owned: fcQKeyCombination_delete(self.h)

proc `=sink`(dest: var QKeyCombination, source: QKeyCombination) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QKeyCombination, source: QKeyCombination) {.error.}
proc delete*(self: sink QKeyCombination) =
  let h = self.h
  wasMoved(self)
  fcQKeyCombination_delete(h)

