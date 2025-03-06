type QWebEngineSettings* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginesettings.cpp", cflags).}

proc fcQWebEngineSettings_delete(self: pointer) {.importc: "QWebEngineSettings_delete".}
proc `=destroy`(self: var QWebEngineSettings) =
  if self.owned: fcQWebEngineSettings_delete(self.h)

proc `=sink`(dest: var QWebEngineSettings, source: QWebEngineSettings) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineSettings, source: QWebEngineSettings) {.error.}
proc delete*(self: sink QWebEngineSettings) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineSettings_delete(h)

