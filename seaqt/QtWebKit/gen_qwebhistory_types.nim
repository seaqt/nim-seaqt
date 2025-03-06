type QWebHistoryItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebhistory.cpp", cflags).}

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

