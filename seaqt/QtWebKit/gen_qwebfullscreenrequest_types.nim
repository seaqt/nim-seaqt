type QWebFullScreenRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkit_pkg

{.compile("gen_qwebfullscreenrequest.cpp", QtWebKitCFlags).}

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

