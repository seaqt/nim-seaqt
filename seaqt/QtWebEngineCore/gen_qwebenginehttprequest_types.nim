type QWebEngineHttpRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginehttprequest.cpp", cflags).}

proc fcQWebEngineHttpRequest_delete(self: pointer) {.importc: "QWebEngineHttpRequest_delete".}
proc `=destroy`(self: var QWebEngineHttpRequest) =
  if self.owned: fcQWebEngineHttpRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineHttpRequest, source: QWebEngineHttpRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineHttpRequest, source: QWebEngineHttpRequest) {.error.}
proc delete*(self: sink QWebEngineHttpRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineHttpRequest_delete(h)

