type QWebElement* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebelement.cpp", cflags).}

proc fcQWebElement_delete(self: pointer) {.importc: "QWebElement_delete".}
proc `=destroy`(self: var QWebElement) =
  if self.owned: fcQWebElement_delete(self.h)

proc `=sink`(dest: var QWebElement, source: QWebElement) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebElement, source: QWebElement) {.error.}
proc delete*(self: sink QWebElement) =
  let h = self.h
  wasMoved(self)
  fcQWebElement_delete(h)

type QWebElementCollection* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebElementCollection_delete(self: pointer) {.importc: "QWebElementCollection_delete".}
proc `=destroy`(self: var QWebElementCollection) =
  if self.owned: fcQWebElementCollection_delete(self.h)

proc `=sink`(dest: var QWebElementCollection, source: QWebElementCollection) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebElementCollection, source: QWebElementCollection) {.error.}
proc delete*(self: sink QWebElementCollection) =
  let h = self.h
  wasMoved(self)
  fcQWebElementCollection_delete(h)

type QWebElementCollectionconst_iterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebElementCollectionconst_iterator_delete(self: pointer) {.importc: "QWebElementCollection__const_iterator_delete".}
proc `=destroy`(self: var QWebElementCollectionconst_iterator) =
  if self.owned: fcQWebElementCollectionconst_iterator_delete(self.h)

proc `=sink`(dest: var QWebElementCollectionconst_iterator, source: QWebElementCollectionconst_iterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebElementCollectionconst_iterator, source: QWebElementCollectionconst_iterator) {.error.}
proc delete*(self: sink QWebElementCollectionconst_iterator) =
  let h = self.h
  wasMoved(self)
  fcQWebElementCollectionconst_iterator_delete(h)

type QWebElementCollectioniterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebElementCollectioniterator_delete(self: pointer) {.importc: "QWebElementCollection__iterator_delete".}
proc `=destroy`(self: var QWebElementCollectioniterator) =
  if self.owned: fcQWebElementCollectioniterator_delete(self.h)

proc `=sink`(dest: var QWebElementCollectioniterator, source: QWebElementCollectioniterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebElementCollectioniterator, source: QWebElementCollectioniterator) {.error.}
proc delete*(self: sink QWebElementCollectioniterator) =
  let h = self.h
  wasMoved(self)
  fcQWebElementCollectioniterator_delete(h)

