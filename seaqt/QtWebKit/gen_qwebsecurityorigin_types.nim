type QWebSecurityOrigin* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebsecurityorigin.cpp", cflags).}

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

