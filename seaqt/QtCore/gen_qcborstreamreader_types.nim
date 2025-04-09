type QCborStreamReader* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qcborstreamreader.cpp", cflags).}

proc fcQCborStreamReader_delete(self: pointer) {.importc: "QCborStreamReader_delete".}
proc `=destroy`(self: var QCborStreamReader) =
  if self.owned: fcQCborStreamReader_delete(self.h)

proc `=sink`(dest: var QCborStreamReader, source: QCborStreamReader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborStreamReader, source: QCborStreamReader) {.error.}
proc delete*(self: sink QCborStreamReader) =
  let h = self.h
  wasMoved(self)
  fcQCborStreamReader_delete(h)

