type QWebEngineHistoryItem* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginewidgets_pkg

{.compile("gen_qwebenginehistory.cpp", QtWebEngineWidgetsCFlags).}

proc fcQWebEngineHistoryItem_delete(self: pointer) {.importc: "QWebEngineHistoryItem_delete".}
proc `=destroy`(self: var QWebEngineHistoryItem) =
  if self.owned: fcQWebEngineHistoryItem_delete(self.h)

proc `=sink`(dest: var QWebEngineHistoryItem, source: QWebEngineHistoryItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineHistoryItem, source: QWebEngineHistoryItem) {.error.}
proc delete*(self: sink QWebEngineHistoryItem) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineHistoryItem_delete(h)

type QWebEngineHistory* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

