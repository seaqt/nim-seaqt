import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerWidgetBoxInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerWidgetBoxInterface, source: QDesignerWidgetBoxInterface) {.error.}
proc `=sink`(dest: var QDesignerWidgetBoxInterface, source: QDesignerWidgetBoxInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDesignerWidgetBoxInterfaceWidget* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractwidgetbox.cpp", QtDesignerCFlags).}

proc fcQDesignerWidgetBoxInterfaceWidget_delete(self: pointer) {.importc: "QDesignerWidgetBoxInterface__Widget_delete".}
proc `=destroy`(self: var QDesignerWidgetBoxInterfaceWidget) =
  if self.owned: fcQDesignerWidgetBoxInterfaceWidget_delete(self.h)

proc `=sink`(dest: var QDesignerWidgetBoxInterfaceWidget, source: QDesignerWidgetBoxInterfaceWidget) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerWidgetBoxInterfaceWidget, source: QDesignerWidgetBoxInterfaceWidget) {.error.}
proc delete*(self: sink QDesignerWidgetBoxInterfaceWidget) =
  let h = self.h
  wasMoved(self)
  fcQDesignerWidgetBoxInterfaceWidget_delete(h)

type QDesignerWidgetBoxInterfaceCategory* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQDesignerWidgetBoxInterfaceCategory_delete(self: pointer) {.importc: "QDesignerWidgetBoxInterface__Category_delete".}
proc `=destroy`(self: var QDesignerWidgetBoxInterfaceCategory) =
  if self.owned: fcQDesignerWidgetBoxInterfaceCategory_delete(self.h)

proc `=sink`(dest: var QDesignerWidgetBoxInterfaceCategory, source: QDesignerWidgetBoxInterfaceCategory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerWidgetBoxInterfaceCategory, source: QDesignerWidgetBoxInterfaceCategory) {.error.}
proc delete*(self: sink QDesignerWidgetBoxInterfaceCategory) =
  let h = self.h
  wasMoved(self)
  fcQDesignerWidgetBoxInterfaceCategory_delete(h)

