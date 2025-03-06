type QOcspResponse* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Network") & " -fPIC"
{.compile("gen_qocspresponse.cpp", cflags).}

proc fcQOcspResponse_delete(self: pointer) {.importc: "QOcspResponse_delete".}
proc `=destroy`(self: var QOcspResponse) =
  if self.owned: fcQOcspResponse_delete(self.h)

proc `=sink`(dest: var QOcspResponse, source: QOcspResponse) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QOcspResponse, source: QOcspResponse) {.error.}
proc delete*(self: sink QOcspResponse) =
  let h = self.h
  wasMoved(self)
  fcQOcspResponse_delete(h)

