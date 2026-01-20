type QSGMaterialType* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qsgmaterialtype.cpp", QtQuickCFlags).}

proc fcQSGMaterialType_delete(self: pointer) {.importc: "QSGMaterialType_delete".}
proc `=destroy`(self: var QSGMaterialType) =
  if self.owned: fcQSGMaterialType_delete(self.h)

proc `=sink`(dest: var QSGMaterialType, source: QSGMaterialType) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterialType, source: QSGMaterialType) {.error.}
proc delete*(self: sink QSGMaterialType) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterialType_delete(h)

