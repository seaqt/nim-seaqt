type QWidgetData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qwidget.cpp", QtWidgetsCFlags).}

proc fcQWidgetData_delete(self: pointer) {.importc: "QWidgetData_delete".}
proc `=destroy`(self: var QWidgetData) =
  if self.owned: fcQWidgetData_delete(self.h)

proc `=sink`(dest: var QWidgetData, source: QWidgetData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWidgetData, source: QWidgetData) {.error.}
proc delete*(self: sink QWidgetData) =
  let h = self.h
  wasMoved(self)
  fcQWidgetData_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QPaintDevice
type QWidget* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWidget, source: QWidget) {.error.}
proc `=sink`(dest: var QWidget, source: QWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

