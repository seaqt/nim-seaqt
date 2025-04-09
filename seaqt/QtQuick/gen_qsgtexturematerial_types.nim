import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

type QSGOpaqueTextureMaterial* = object of gen_qsgmaterial_types.QSGMaterial
proc `=copy`(dest: var QSGOpaqueTextureMaterial, source: QSGOpaqueTextureMaterial) {.error.}
proc `=sink`(dest: var QSGOpaqueTextureMaterial, source: QSGOpaqueTextureMaterial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGTextureMaterial* = object of QSGOpaqueTextureMaterial
proc `=copy`(dest: var QSGTextureMaterial, source: QSGTextureMaterial) {.error.}
proc `=sink`(dest: var QSGTextureMaterial, source: QSGTextureMaterial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

