type QTableWidgetSelectionRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qtablewidget.cpp", QtWidgetsCFlags).}

proc fcQTableWidgetSelectionRange_delete(self: pointer) {.importc: "QTableWidgetSelectionRange_delete".}
proc `=destroy`(self: var QTableWidgetSelectionRange) =
  if self.owned: fcQTableWidgetSelectionRange_delete(self.h)

proc `=sink`(dest: var QTableWidgetSelectionRange, source: QTableWidgetSelectionRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTableWidgetSelectionRange, source: QTableWidgetSelectionRange) {.error.}
proc delete*(self: sink QTableWidgetSelectionRange) =
  let h = self.h
  wasMoved(self)
  fcQTableWidgetSelectionRange_delete(h)

type QTableWidgetItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTableWidgetItem_delete(self: pointer) {.importc: "QTableWidgetItem_delete".}
proc `=destroy`(self: var QTableWidgetItem) =
  if self.owned: fcQTableWidgetItem_delete(self.h)

proc `=sink`(dest: var QTableWidgetItem, source: QTableWidgetItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTableWidgetItem, source: QTableWidgetItem) {.error.}
proc delete*(self: sink QTableWidgetItem) =
  let h = self.h
  wasMoved(self)
  fcQTableWidgetItem_delete(h)

import ./gen_qtableview_types
export gen_qtableview_types

type QTableWidget* = object of gen_qtableview_types.QTableView
proc `=copy`(dest: var QTableWidget, source: QTableWidget) {.error.}
proc `=sink`(dest: var QTableWidget, source: QTableWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

