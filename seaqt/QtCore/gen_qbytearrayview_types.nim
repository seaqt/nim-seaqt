type QByteArrayView* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qbytearrayview.cpp", cflags).}

proc fcQByteArrayView_delete(self: pointer) {.importc: "QByteArrayView_delete".}
proc `=destroy`(self: var QByteArrayView) =
  if self.owned: fcQByteArrayView_delete(self.h)

proc `=sink`(dest: var QByteArrayView, source: QByteArrayView) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QByteArrayView, source: QByteArrayView) {.error.}
proc delete*(self: sink QByteArrayView) =
  let h = self.h
  wasMoved(self)
  fcQByteArrayView_delete(h)

