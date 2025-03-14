type QCborMap* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcbormap.cpp", QtCoreCFlags).}

proc fcQCborMap_delete(self: pointer) {.importc: "QCborMap_delete".}
proc `=destroy`(self: var QCborMap) =
  if self.owned: fcQCborMap_delete(self.h)

proc `=sink`(dest: var QCborMap, source: QCborMap) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborMap, source: QCborMap) {.error.}
proc delete*(self: sink QCborMap) =
  let h = self.h
  wasMoved(self)
  fcQCborMap_delete(h)

type QCborMapIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborMapIterator_delete(self: pointer) {.importc: "QCborMap__Iterator_delete".}
proc `=destroy`(self: var QCborMapIterator) =
  if self.owned: fcQCborMapIterator_delete(self.h)

proc `=sink`(dest: var QCborMapIterator, source: QCborMapIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborMapIterator, source: QCborMapIterator) {.error.}
proc delete*(self: sink QCborMapIterator) =
  let h = self.h
  wasMoved(self)
  fcQCborMapIterator_delete(h)

type QCborMapConstIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQCborMapConstIterator_delete(self: pointer) {.importc: "QCborMap__ConstIterator_delete".}
proc `=destroy`(self: var QCborMapConstIterator) =
  if self.owned: fcQCborMapConstIterator_delete(self.h)

proc `=sink`(dest: var QCborMapConstIterator, source: QCborMapConstIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborMapConstIterator, source: QCborMapConstIterator) {.error.}
proc delete*(self: sink QCborMapConstIterator) =
  let h = self.h
  wasMoved(self)
  fcQCborMapConstIterator_delete(h)

