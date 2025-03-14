type QCborArray* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcborarray.cpp", QtCoreCFlags).}

proc fcQCborArray_delete(self: pointer) {.importc: "QCborArray_delete".}
proc `=destroy`(self: var QCborArray) =
  if self.owned: fcQCborArray_delete(self.h)

proc `=sink`(dest: var QCborArray, source: QCborArray) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborArray, source: QCborArray) {.error.}
proc delete*(self: sink QCborArray) =
  let h = self.h
  wasMoved(self)
  fcQCborArray_delete(h)

type QCborArrayIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborArrayIterator_delete(self: pointer) {.importc: "QCborArray__Iterator_delete".}
proc `=destroy`(self: var QCborArrayIterator) =
  if self.owned: fcQCborArrayIterator_delete(self.h)

proc `=sink`(dest: var QCborArrayIterator, source: QCborArrayIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborArrayIterator, source: QCborArrayIterator) {.error.}
proc delete*(self: sink QCborArrayIterator) =
  let h = self.h
  wasMoved(self)
  fcQCborArrayIterator_delete(h)

type QCborArrayConstIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborArrayConstIterator_delete(self: pointer) {.importc: "QCborArray__ConstIterator_delete".}
proc `=destroy`(self: var QCborArrayConstIterator) =
  if self.owned: fcQCborArrayConstIterator_delete(self.h)

proc `=sink`(dest: var QCborArrayConstIterator, source: QCborArrayConstIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborArrayConstIterator, source: QCborArrayConstIterator) {.error.}
proc delete*(self: sink QCborArrayConstIterator) =
  let h = self.h
  wasMoved(self)
  fcQCborArrayConstIterator_delete(h)

