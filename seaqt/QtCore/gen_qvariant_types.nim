type QVariant* {.inheritable.} = object
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

type QVariantComparisonHelper* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVariantComparisonHelper_delete(self: pointer) {.importc: "QVariantComparisonHelper_delete".}
proc `=destroy`(self: var QVariantComparisonHelper) =
  if self.owned: fcQVariantComparisonHelper_delete(self.h)

proc `=sink`(dest: var QVariantComparisonHelper, source: QVariantComparisonHelper) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVariantComparisonHelper, source: QVariantComparisonHelper) {.error.}
proc delete*(self: sink QVariantComparisonHelper) =
  let h = self.h
  wasMoved(self)
  fcQVariantComparisonHelper_delete(h)

type QVariantHandler* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVariantHandler_delete(self: pointer) {.importc: "QVariant__Handler_delete".}
proc `=destroy`(self: var QVariantHandler) =
  if self.owned: fcQVariantHandler_delete(self.h)

proc `=sink`(dest: var QVariantHandler, source: QVariantHandler) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVariantHandler, source: QVariantHandler) {.error.}
proc delete*(self: sink QVariantHandler) =
  let h = self.h
  wasMoved(self)
  fcQVariantHandler_delete(h)

type QSequentialIterableconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSequentialIterableconst_iterator_delete(self: pointer) {.importc: "QSequentialIterable__const_iterator_delete".}
proc `=destroy`(self: var QSequentialIterableconst_iterator) =
  if self.owned: fcQSequentialIterableconst_iterator_delete(self.h)

proc `=sink`(dest: var QSequentialIterableconst_iterator, source: QSequentialIterableconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSequentialIterableconst_iterator, source: QSequentialIterableconst_iterator) {.error.}
proc delete*(self: sink QSequentialIterableconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQSequentialIterableconst_iterator_delete(h)

type QAssociativeIterableconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAssociativeIterableconst_iterator_delete(self: pointer) {.importc: "QAssociativeIterable__const_iterator_delete".}
proc `=destroy`(self: var QAssociativeIterableconst_iterator) =
  if self.owned: fcQAssociativeIterableconst_iterator_delete(self.h)

proc `=sink`(dest: var QAssociativeIterableconst_iterator, source: QAssociativeIterableconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAssociativeIterableconst_iterator, source: QAssociativeIterableconst_iterator) {.error.}
proc delete*(self: sink QAssociativeIterableconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQAssociativeIterableconst_iterator_delete(h)

