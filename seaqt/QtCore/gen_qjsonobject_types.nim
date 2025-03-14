type QJsonObject* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qjsonobject.cpp", QtCoreCFlags).}

proc fcQJsonObject_delete(self: pointer) {.importc: "QJsonObject_delete".}
proc `=destroy`(self: var QJsonObject) =
  if self.owned: fcQJsonObject_delete(self.h)

proc `=sink`(dest: var QJsonObject, source: QJsonObject) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonObject, source: QJsonObject) {.error.}
proc delete*(self: sink QJsonObject) =
  let h = self.h
  wasMoved(self)
  fcQJsonObject_delete(h)

type QJsonObjectiterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonObjectiterator_delete(self: pointer) {.importc: "QJsonObject__iterator_delete".}
proc `=destroy`(self: var QJsonObjectiterator) =
  if self.owned: fcQJsonObjectiterator_delete(self.h)

proc `=sink`(dest: var QJsonObjectiterator, source: QJsonObjectiterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonObjectiterator, source: QJsonObjectiterator) {.error.}
proc delete*(self: sink QJsonObjectiterator) =
  let h = self.h
  wasMoved(self)
  fcQJsonObjectiterator_delete(h)

type QJsonObjectconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQJsonObjectconst_iterator_delete(self: pointer) {.importc: "QJsonObject__const_iterator_delete".}
proc `=destroy`(self: var QJsonObjectconst_iterator) =
  if self.owned: fcQJsonObjectconst_iterator_delete(self.h)

proc `=sink`(dest: var QJsonObjectconst_iterator, source: QJsonObjectconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QJsonObjectconst_iterator, source: QJsonObjectconst_iterator) {.error.}
proc delete*(self: sink QJsonObjectconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQJsonObjectconst_iterator_delete(h)

