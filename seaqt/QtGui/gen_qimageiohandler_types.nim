type QImageIOHandler* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Gui") & " -fPIC"
{.compile("gen_qimageiohandler.cpp", cflags).}

proc fcQImageIOHandler_delete(self: pointer) {.importc: "QImageIOHandler_delete".}
proc `=destroy`(self: var QImageIOHandler) =
  if self.owned: fcQImageIOHandler_delete(self.h)

proc `=sink`(dest: var QImageIOHandler, source: QImageIOHandler) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QImageIOHandler, source: QImageIOHandler) {.error.}
proc delete*(self: sink QImageIOHandler) =
  let h = self.h
  wasMoved(self)
  fcQImageIOHandler_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QImageIOPlugin* = object of gen_qobject_types.QObject
