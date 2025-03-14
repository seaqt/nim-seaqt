type QBitArray* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qbitarray.cpp", QtCoreCFlags).}

proc fcQBitArray_delete(self: pointer) {.importc: "QBitArray_delete".}
proc `=destroy`(self: var QBitArray) =
  if self.owned: fcQBitArray_delete(self.h)

proc `=sink`(dest: var QBitArray, source: QBitArray) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBitArray, source: QBitArray) {.error.}
proc delete*(self: sink QBitArray) =
  let h = self.h
  wasMoved(self)
  fcQBitArray_delete(h)

type QBitRef* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQBitRef_delete(self: pointer) {.importc: "QBitRef_delete".}
proc `=destroy`(self: var QBitRef) =
  if self.owned: fcQBitRef_delete(self.h)

proc `=sink`(dest: var QBitRef, source: QBitRef) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QBitRef, source: QBitRef) {.error.}
proc delete*(self: sink QBitRef) =
  let h = self.h
  wasMoved(self)
  fcQBitRef_delete(h)

