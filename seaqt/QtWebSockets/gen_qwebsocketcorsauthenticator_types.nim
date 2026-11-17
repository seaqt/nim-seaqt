type QWebSocketCorsAuthenticator* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtwebsockets_pkg

{.compile("gen_qwebsocketcorsauthenticator.cpp", QtWebSocketsCFlags).}

proc fcQWebSocketCorsAuthenticator_delete(self: pointer) {.importc: "QWebSocketCorsAuthenticator_delete".}
proc `=destroy`(self: var QWebSocketCorsAuthenticator) =
  if self.owned: fcQWebSocketCorsAuthenticator_delete(self.h)

proc `=sink`(dest: var QWebSocketCorsAuthenticator, source: QWebSocketCorsAuthenticator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebSocketCorsAuthenticator, source: QWebSocketCorsAuthenticator) {.error.}
proc delete*(self: sink QWebSocketCorsAuthenticator) =
  let h = self.h
  wasMoved(self)
  fcQWebSocketCorsAuthenticator_delete(h)

