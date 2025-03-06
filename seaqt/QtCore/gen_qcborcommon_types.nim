type QCborError* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qcborcommon.cpp", cflags).}

proc fcQCborError_delete(self: pointer) {.importc: "QCborError_delete".}
proc `=destroy`(self: var QCborError) =
  if self.owned: fcQCborError_delete(self.h)

proc `=sink`(dest: var QCborError, source: QCborError) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCborError, source: QCborError) {.error.}
proc delete*(self: sink QCborError) =
  let h = self.h
  wasMoved(self)
  fcQCborError_delete(h)

