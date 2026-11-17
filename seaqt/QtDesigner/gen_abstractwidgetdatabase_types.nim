type QDesignerWidgetDataBaseItemInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractwidgetdatabase.cpp", QtDesignerCFlags).}

proc fcQDesignerWidgetDataBaseItemInterface_delete(self: pointer) {.importc: "QDesignerWidgetDataBaseItemInterface_delete".}
proc `=destroy`(self: var QDesignerWidgetDataBaseItemInterface) =
  if self.owned: fcQDesignerWidgetDataBaseItemInterface_delete(self.h)

proc `=sink`(dest: var QDesignerWidgetDataBaseItemInterface, source: QDesignerWidgetDataBaseItemInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerWidgetDataBaseItemInterface, source: QDesignerWidgetDataBaseItemInterface) {.error.}
proc delete*(self: sink QDesignerWidgetDataBaseItemInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerWidgetDataBaseItemInterface_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerWidgetDataBaseInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerWidgetDataBaseInterface, source: QDesignerWidgetDataBaseInterface) {.error.}
proc `=sink`(dest: var QDesignerWidgetDataBaseInterface, source: QDesignerWidgetDataBaseInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

