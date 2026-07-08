import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerIntegrationInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerIntegrationInterface, source: QDesignerIntegrationInterface) {.error.}
proc `=sink`(dest: var QDesignerIntegrationInterface, source: QDesignerIntegrationInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QDesignerIntegration* = object of QDesignerIntegrationInterface
proc `=copy`(dest: var QDesignerIntegration, source: QDesignerIntegration) {.error.}
proc `=sink`(dest: var QDesignerIntegration, source: QDesignerIntegration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

