type QVariant* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qvariant.cpp", QtCoreCFlags).}

proc fcQVariant_delete(self: pointer) {.importc: "QVariant_delete".}
proc `=destroy`(self: var QVariant) =
  if self.owned: fcQVariant_delete(self.h)

proc `=sink`(dest: var QVariant, source: QVariant) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVariant, source: QVariant) {.error.}
proc delete*(self: sink QVariant) =
  let h = self.h
  wasMoved(self)
  fcQVariant_delete(h)

