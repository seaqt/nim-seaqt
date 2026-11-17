type QMediaResource* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qmediaresource.cpp", QtMultimediaCFlags).}

proc fcQMediaResource_delete(self: pointer) {.importc: "QMediaResource_delete".}
proc `=destroy`(self: var QMediaResource) =
  if self.owned: fcQMediaResource_delete(self.h)

proc `=sink`(dest: var QMediaResource, source: QMediaResource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaResource, source: QMediaResource) {.error.}
proc delete*(self: sink QMediaResource) =
  let h = self.h
  wasMoved(self)
  fcQMediaResource_delete(h)

