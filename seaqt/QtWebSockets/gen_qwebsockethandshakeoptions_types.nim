type QWebSocketHandshakeOptions* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtwebsockets_pkg

{.compile("gen_qwebsockethandshakeoptions.cpp", QtWebSocketsCFlags).}

proc fcQWebSocketHandshakeOptions_delete(self: pointer) {.importc: "QWebSocketHandshakeOptions_delete".}
proc `=destroy`(self: var QWebSocketHandshakeOptions) =
  if self.owned: fcQWebSocketHandshakeOptions_delete(self.h)

proc `=sink`(dest: var QWebSocketHandshakeOptions, source: QWebSocketHandshakeOptions) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebSocketHandshakeOptions, source: QWebSocketHandshakeOptions) {.error.}
proc delete*(self: sink QWebSocketHandshakeOptions) =
  let h = self.h
  wasMoved(self)
  fcQWebSocketHandshakeOptions_delete(h)

