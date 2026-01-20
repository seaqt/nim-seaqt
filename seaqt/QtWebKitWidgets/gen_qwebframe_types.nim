type QWebHitTestResult* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkitwidgets_pkg

{.compile("gen_qwebframe.cpp", QtWebKitWidgetsCFlags).}

proc fcQWebHitTestResult_delete(self: pointer) {.importc: "QWebHitTestResult_delete".}
proc `=destroy`(self: var QWebHitTestResult) =
  if self.owned: fcQWebHitTestResult_delete(self.h)

proc `=sink`(dest: var QWebHitTestResult, source: QWebHitTestResult) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebHitTestResult, source: QWebHitTestResult) {.error.}
proc delete*(self: sink QWebHitTestResult) =
  let h = self.h
  wasMoved(self)
  fcQWebHitTestResult_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebFrame* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebFrame, source: QWebFrame) {.error.}
proc `=sink`(dest: var QWebFrame, source: QWebFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

