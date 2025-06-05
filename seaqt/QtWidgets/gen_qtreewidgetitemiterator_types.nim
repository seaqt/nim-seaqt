type QTreeWidgetItemIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qtreewidgetitemiterator.cpp", QtWidgetsCFlags).}

proc fcQTreeWidgetItemIterator_delete(self: pointer) {.importc: "QTreeWidgetItemIterator_delete".}
proc `=destroy`(self: var QTreeWidgetItemIterator) =
  if self.owned: fcQTreeWidgetItemIterator_delete(self.h)

proc `=sink`(dest: var QTreeWidgetItemIterator, source: QTreeWidgetItemIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTreeWidgetItemIterator, source: QTreeWidgetItemIterator) {.error.}
proc delete*(self: sink QTreeWidgetItemIterator) =
  let h = self.h
  wasMoved(self)
  fcQTreeWidgetItemIterator_delete(h)

