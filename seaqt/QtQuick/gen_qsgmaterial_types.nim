type QSGMaterial* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Quick") & " -fPIC"
{.compile("gen_qsgmaterial.cpp", cflags).}

proc fcQSGMaterial_delete(self: pointer) {.importc: "QSGMaterial_delete".}
proc `=destroy`(self: var QSGMaterial) =
  if self.owned: fcQSGMaterial_delete(self.h)

proc `=sink`(dest: var QSGMaterial, source: QSGMaterial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterial, source: QSGMaterial) {.error.}
proc delete*(self: sink QSGMaterial) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterial_delete(h)

