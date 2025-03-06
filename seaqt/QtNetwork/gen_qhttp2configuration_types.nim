type QHttp2Configuration* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qhttp2configuration.cpp", cflags).}

proc fcQHttp2Configuration_delete(self: pointer) {.importc: "QHttp2Configuration_delete".}
proc `=destroy`(self: var QHttp2Configuration) =
  if self.owned: fcQHttp2Configuration_delete(self.h)

proc `=sink`(dest: var QHttp2Configuration, source: QHttp2Configuration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHttp2Configuration, source: QHttp2Configuration) {.error.}
proc delete*(self: sink QHttp2Configuration) =
  let h = self.h
  wasMoved(self)
  fcQHttp2Configuration_delete(h)

