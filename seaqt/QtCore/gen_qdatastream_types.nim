type QDataStream* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qdatastream.cpp", QtCoreCFlags).}

proc fcQDataStream_delete(self: pointer) {.importc: "QDataStream_delete".}
proc `=destroy`(self: var QDataStream) =
  if self.owned: fcQDataStream_delete(self.h)

proc `=sink`(dest: var QDataStream, source: QDataStream) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDataStream, source: QDataStream) {.error.}
proc delete*(self: sink QDataStream) =
  let h = self.h
  wasMoved(self)
  fcQDataStream_delete(h)

