type QWebEngineFileSystemAccessRequest* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginefilesystemaccessrequest.cpp", cflags).}

proc fcQWebEngineFileSystemAccessRequest_delete(self: pointer) {.importc: "QWebEngineFileSystemAccessRequest_delete".}
proc `=destroy`(self: var QWebEngineFileSystemAccessRequest) =
  if self.owned: fcQWebEngineFileSystemAccessRequest_delete(self.h)

proc `=sink`(dest: var QWebEngineFileSystemAccessRequest, source: QWebEngineFileSystemAccessRequest) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineFileSystemAccessRequest, source: QWebEngineFileSystemAccessRequest) {.error.}
proc delete*(self: sink QWebEngineFileSystemAccessRequest) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineFileSystemAccessRequest_delete(h)

