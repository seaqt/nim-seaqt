type QWebEngineUrlScheme* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebengineurlscheme.cpp", cflags).}

proc fcQWebEngineUrlScheme_delete(self: pointer) {.importc: "QWebEngineUrlScheme_delete".}
proc `=destroy`(self: var QWebEngineUrlScheme) =
  if self.owned: fcQWebEngineUrlScheme_delete(self.h)

proc `=sink`(dest: var QWebEngineUrlScheme, source: QWebEngineUrlScheme) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineUrlScheme, source: QWebEngineUrlScheme) {.error.}
proc delete*(self: sink QWebEngineUrlScheme) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineUrlScheme_delete(h)

