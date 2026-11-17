type QtWebEngineCoreUIDelegatesManager* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginequick_pkg

{.compile("gen_ui_delegates_manager.cpp", QtWebEngineQuickCFlags).}

proc fcQtWebEngineCoreUIDelegatesManager_delete(self: pointer) {.importc: "QtWebEngineCore__UIDelegatesManager_delete".}
proc `=destroy`(self: var QtWebEngineCoreUIDelegatesManager) =
  if self.owned: fcQtWebEngineCoreUIDelegatesManager_delete(self.h)

proc `=sink`(dest: var QtWebEngineCoreUIDelegatesManager, source: QtWebEngineCoreUIDelegatesManager) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QtWebEngineCoreUIDelegatesManager, source: QtWebEngineCoreUIDelegatesManager) {.error.}
proc delete*(self: sink QtWebEngineCoreUIDelegatesManager) =
  let h = self.h
  wasMoved(self)
  fcQtWebEngineCoreUIDelegatesManager_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QtWebEngineCoreAutofillPopupEventFilter* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QtWebEngineCoreAutofillPopupEventFilter, source: QtWebEngineCoreAutofillPopupEventFilter) {.error.}
proc `=sink`(dest: var QtWebEngineCoreAutofillPopupEventFilter, source: QtWebEngineCoreAutofillPopupEventFilter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

