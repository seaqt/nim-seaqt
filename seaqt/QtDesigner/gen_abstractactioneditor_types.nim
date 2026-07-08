import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerActionEditorInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerActionEditorInterface, source: QDesignerActionEditorInterface) {.error.}
proc `=sink`(dest: var QDesignerActionEditorInterface, source: QDesignerActionEditorInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

