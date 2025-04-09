import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

type QSGVertexColorMaterial* = object of gen_qsgmaterial_types.QSGMaterial
proc `=copy`(dest: var QSGVertexColorMaterial, source: QSGVertexColorMaterial) {.error.}
proc `=sink`(dest: var QSGVertexColorMaterial, source: QSGVertexColorMaterial) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

