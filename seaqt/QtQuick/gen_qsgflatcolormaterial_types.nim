import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

type QSGFlatColorMaterial* = object of gen_qsgmaterial_types.QSGMaterial
proc `=copy`(dest: var QSGFlatColorMaterial, source: QSGFlatColorMaterial) {.error.}
proc `=sink`(dest: var QSGFlatColorMaterial, source: QSGFlatColorMaterial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

