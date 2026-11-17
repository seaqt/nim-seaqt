type QWebEnginePermission* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebenginepermission.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEnginePermission_delete(self: pointer) {.importc: "QWebEnginePermission_delete".}
proc `=destroy`(self: var QWebEnginePermission) =
  if self.owned: fcQWebEnginePermission_delete(self.h)

proc `=sink`(dest: var QWebEnginePermission, source: QWebEnginePermission) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEnginePermission, source: QWebEnginePermission) {.error.}
proc delete*(self: sink QWebEnginePermission) =
  let h = self.h
  wasMoved(self)
  fcQWebEnginePermission_delete(h)

