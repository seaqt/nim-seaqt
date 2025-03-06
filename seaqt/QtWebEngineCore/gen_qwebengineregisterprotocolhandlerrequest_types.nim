type QWebEngineRegisterProtocolHandlerRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebengineregisterprotocolhandlerrequest.cpp", cflags).}

proc fcQWebEngineRegisterProtocolHandlerRequest_delete(self: pointer) {.importc: "QWebEngineRegisterProtocolHandlerRequest_delete".}
proc `=destroy`(self: var QWebEngineRegisterProtocolHandlerRequest) =
  if self.owned: fcQWebEngineRegisterProtocolHandlerRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineRegisterProtocolHandlerRequest, source: QWebEngineRegisterProtocolHandlerRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineRegisterProtocolHandlerRequest, source: QWebEngineRegisterProtocolHandlerRequest) {.error.}
proc delete*(self: sink QWebEngineRegisterProtocolHandlerRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineRegisterProtocolHandlerRequest_delete(h)

