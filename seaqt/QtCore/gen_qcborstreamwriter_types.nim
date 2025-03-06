type QCborStreamWriter* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qcborstreamwriter.cpp", cflags).}

proc fcQCborStreamWriter_delete(self: pointer) {.importc: "QCborStreamWriter_delete".}
proc `=destroy`(self: var QCborStreamWriter) =
  if self.owned: fcQCborStreamWriter_delete(self.h)

proc `=sink`(dest: var QCborStreamWriter, source: QCborStreamWriter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborStreamWriter, source: QCborStreamWriter) {.error.}
proc delete*(self: sink QCborStreamWriter) =
  let h = self.h
  wasMoved(self)
  fcQCborStreamWriter_delete(h)

