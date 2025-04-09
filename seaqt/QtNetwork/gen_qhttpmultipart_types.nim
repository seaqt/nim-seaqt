type QHttpPart* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qhttpmultipart.cpp", cflags).}

proc fcQHttpPart_delete(self: pointer) {.importc: "QHttpPart_delete".}
proc `=destroy`(self: var QHttpPart) =
  if self.owned: fcQHttpPart_delete(self.h)

proc `=sink`(dest: var QHttpPart, source: QHttpPart) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHttpPart, source: QHttpPart) {.error.}
proc delete*(self: sink QHttpPart) =
  let h = self.h
  wasMoved(self)
  fcQHttpPart_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QHttpMultiPart* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QHttpMultiPart, source: QHttpMultiPart) {.error.}
proc `=sink`(dest: var QHttpMultiPart, source: QHttpMultiPart) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

