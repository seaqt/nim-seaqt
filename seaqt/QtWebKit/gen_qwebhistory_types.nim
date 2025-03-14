type QWebHistoryItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkit_pkg

{.compile("gen_qwebhistory.cpp", QtWebKitCFlags).}

proc fcQWebHistoryItem_delete(self: pointer) {.importc: "QWebHistoryItem_delete".}
proc `=destroy`(self: var QWebHistoryItem) =
  if self.owned: fcQWebHistoryItem_delete(self.h)

proc `=sink`(dest: var QWebHistoryItem, source: QWebHistoryItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebHistoryItem, source: QWebHistoryItem) {.error.}
proc delete*(self: sink QWebHistoryItem) =
  let h = self.h
  wasMoved(self)
  fcQWebHistoryItem_delete(h)

type QWebHistory* {.inheritable.} = object
  h*: pointer
  owned*: bool

