type QSslConfiguration* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qsslconfiguration.cpp", cflags).}

proc fcQSslConfiguration_delete(self: pointer) {.importc: "QSslConfiguration_delete".}
proc `=destroy`(self: var QSslConfiguration) =
  if self.owned: fcQSslConfiguration_delete(self.h)

proc `=sink`(dest: var QSslConfiguration, source: QSslConfiguration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslConfiguration, source: QSslConfiguration) {.error.}
proc delete*(self: sink QSslConfiguration) =
  let h = self.h
  wasMoved(self)
  fcQSslConfiguration_delete(h)

