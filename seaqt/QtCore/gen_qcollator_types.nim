type QCollatorSortKey* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcollator.cpp", QtCoreCFlags).}

proc fcQCollatorSortKey_delete(self: pointer) {.importc: "QCollatorSortKey_delete".}
proc `=destroy`(self: var QCollatorSortKey) =
  if self.owned: fcQCollatorSortKey_delete(self.h)

proc `=sink`(dest: var QCollatorSortKey, source: QCollatorSortKey) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCollatorSortKey, source: QCollatorSortKey) {.error.}
proc delete*(self: sink QCollatorSortKey) =
  let h = self.h
  wasMoved(self)
  fcQCollatorSortKey_delete(h)

type QCollator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCollator_delete(self: pointer) {.importc: "QCollator_delete".}
proc `=destroy`(self: var QCollator) =
  if self.owned: fcQCollator_delete(self.h)

proc `=sink`(dest: var QCollator, source: QCollator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCollator, source: QCollator) {.error.}
proc delete*(self: sink QCollator) =
  let h = self.h
  wasMoved(self)
  fcQCollator_delete(h)

