type QWebSecurityOrigin* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkit_pkg

{.compile("gen_qwebsecurityorigin.cpp", QtWebKitCFlags).}

proc fcQWebSecurityOrigin_delete(self: pointer) {.importc: "QWebSecurityOrigin_delete".}
proc `=destroy`(self: var QWebSecurityOrigin) =
  if self.owned: fcQWebSecurityOrigin_delete(self.h)

proc `=sink`(dest: var QWebSecurityOrigin, source: QWebSecurityOrigin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebSecurityOrigin, source: QWebSecurityOrigin) {.error.}
proc delete*(self: sink QWebSecurityOrigin) =
  let h = self.h
  wasMoved(self)
  fcQWebSecurityOrigin_delete(h)

