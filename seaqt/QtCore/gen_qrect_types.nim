type QRect* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qrect.cpp", cflags).}

proc fcQRect_delete(self: pointer) {.importc: "QRect_delete".}
proc `=destroy`(self: var QRect) =
  if self.owned: fcQRect_delete(self.h)

proc `=sink`(dest: var QRect, source: QRect) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRect, source: QRect) {.error.}
proc delete*(self: sink QRect) =
  let h = self.h
  wasMoved(self)
  fcQRect_delete(h)

type QRectF* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQRectF_delete(self: pointer) {.importc: "QRectF_delete".}
proc `=destroy`(self: var QRectF) =
  if self.owned: fcQRectF_delete(self.h)

proc `=sink`(dest: var QRectF, source: QRectF) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRectF, source: QRectF) {.error.}
proc delete*(self: sink QRectF) =
  let h = self.h
  wasMoved(self)
  fcQRectF_delete(h)

