import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerWidgetFactoryInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerWidgetFactoryInterface, source: QDesignerWidgetFactoryInterface) {.error.}
proc `=sink`(dest: var QDesignerWidgetFactoryInterface, source: QDesignerWidgetFactoryInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

