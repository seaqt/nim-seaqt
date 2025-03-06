type QImageWriter* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
{.compile("gen_qimagewriter.cpp", cflags).}

proc fcQImageWriter_delete(self: pointer) {.importc: "QImageWriter_delete".}
proc `=destroy`(self: var QImageWriter) =
  if self.owned: fcQImageWriter_delete(self.h)

proc `=sink`(dest: var QImageWriter, source: QImageWriter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QImageWriter, source: QImageWriter) {.error.}
proc delete*(self: sink QImageWriter) =
  let h = self.h
  wasMoved(self)
  fcQImageWriter_delete(h)

