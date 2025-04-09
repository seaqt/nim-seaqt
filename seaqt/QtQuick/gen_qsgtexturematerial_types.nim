import ./gen_qsgmaterial_types
export gen_qsgmaterial_types

type QSGOpaqueTextureMaterial* = object of gen_qsgmaterial_types.QSGMaterial
type QSGTextureMaterial* = object of QSGOpaqueTextureMaterial
