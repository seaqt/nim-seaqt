import ../QtWidgets/gen_qaccessiblewidget_types
export gen_qaccessiblewidget_types

type QWebEngineViewAccessible* = object of gen_qaccessiblewidget_types.QAccessibleWidget
proc `=copy`(dest: var QWebEngineViewAccessible, source: QWebEngineViewAccessible) {.error.}
proc `=sink`(dest: var QWebEngineViewAccessible, source: QWebEngineViewAccessible) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible* = object of gen_qaccessiblewidget_types.QAccessibleWidget
proc `=copy`(dest: var QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible, source: QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible) {.error.}
proc `=sink`(dest: var QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible, source: QtWebEngineCoreRenderWidgetHostViewQtDelegateWidgetAccessible) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

