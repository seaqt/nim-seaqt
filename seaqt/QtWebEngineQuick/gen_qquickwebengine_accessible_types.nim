import ../QtGui/gen_qaccessibleobject_types
export gen_qaccessibleobject_types

type QQuickWebEngineViewAccessible* = object of gen_qaccessibleobject_types.QAccessibleObject
proc `=copy`(dest: var QQuickWebEngineViewAccessible, source: QQuickWebEngineViewAccessible) {.error.}
proc `=sink`(dest: var QQuickWebEngineViewAccessible, source: QQuickWebEngineViewAccessible) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible* = object of gen_qaccessibleobject_types.QAccessibleObject
proc `=copy`(dest: var QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible, source: QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible) {.error.}
proc `=sink`(dest: var QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible, source: QtWebEngineCoreRenderWidgetHostViewQtDelegateQuickAccessible) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

