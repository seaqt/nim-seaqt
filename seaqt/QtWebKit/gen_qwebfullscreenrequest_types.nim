type QWebFullScreenRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebfullscreenrequest.cpp", cflags).}

proc fcQWebFullScreenRequest_delete(self: pointer) {.importc: "QWebFullScreenRequest_delete".}
proc `=destroy`(self: var QWebFullScreenRequest) =
  if self.owned: fcQWebFullScreenRequest_delete(self.h)

proc `=sink`(dest: var QWebFullScreenRequest, source: QWebFullScreenRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebFullScreenRequest, source: QWebFullScreenRequest) {.error.}
proc delete*(self: sink QWebFullScreenRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebFullScreenRequest_delete(h)

