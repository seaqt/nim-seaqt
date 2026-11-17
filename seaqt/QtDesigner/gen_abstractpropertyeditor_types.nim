import ../QtWidgets/gen_qwidget_types
export gen_qwidget_types

type QDesignerPropertyEditorInterface* = object of gen_qwidget_types.QWidget
proc `=copy`(dest: var QDesignerPropertyEditorInterface, source: QDesignerPropertyEditorInterface) {.error.}
proc `=sink`(dest: var QDesignerPropertyEditorInterface, source: QDesignerPropertyEditorInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

