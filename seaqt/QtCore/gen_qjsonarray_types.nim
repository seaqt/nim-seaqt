type QJsonArray* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qjsonarray.cpp", QtCoreCFlags).}

proc fcQJsonArray_delete(self: pointer) {.importc: "QJsonArray_delete".}
proc `=destroy`(self: var QJsonArray) =
  if self.owned: fcQJsonArray_delete(self.h)

proc `=sink`(dest: var QJsonArray, source: QJsonArray) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonArray, source: QJsonArray) {.error.}
proc delete*(self: sink QJsonArray) =
  let h = self.h
  wasMoved(self)
  fcQJsonArray_delete(h)

type QJsonArrayiterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonArrayiterator_delete(self: pointer) {.importc: "QJsonArray__iterator_delete".}
proc `=destroy`(self: var QJsonArrayiterator) =
  if self.owned: fcQJsonArrayiterator_delete(self.h)

proc `=sink`(dest: var QJsonArrayiterator, source: QJsonArrayiterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonArrayiterator, source: QJsonArrayiterator) {.error.}
proc delete*(self: sink QJsonArrayiterator) =
  let h = self.h
  wasMoved(self)
  fcQJsonArrayiterator_delete(h)

type QJsonArrayconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonArrayconst_iterator_delete(self: pointer) {.importc: "QJsonArray__const_iterator_delete".}
proc `=destroy`(self: var QJsonArrayconst_iterator) =
  if self.owned: fcQJsonArrayconst_iterator_delete(self.h)

proc `=sink`(dest: var QJsonArrayconst_iterator, source: QJsonArrayconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonArrayconst_iterator, source: QJsonArrayconst_iterator) {.error.}
proc delete*(self: sink QJsonArrayconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQJsonArrayconst_iterator_delete(h)

