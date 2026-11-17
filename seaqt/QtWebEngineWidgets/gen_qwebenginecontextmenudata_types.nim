type QWebEngineContextMenuData* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginewidgets_pkg

{.compile("gen_qwebenginecontextmenudata.cpp", QtWebEngineWidgetsCFlags).}

proc fcQWebEngineContextMenuData_delete(self: pointer) {.importc: "QWebEngineContextMenuData_delete".}
proc `=destroy`(self: var QWebEngineContextMenuData) =
  if self.owned: fcQWebEngineContextMenuData_delete(self.h)

proc `=sink`(dest: var QWebEngineContextMenuData, source: QWebEngineContextMenuData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineContextMenuData, source: QWebEngineContextMenuData) {.error.}
proc delete*(self: sink QWebEngineContextMenuData) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineContextMenuData_delete(h)

