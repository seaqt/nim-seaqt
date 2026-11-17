type QDesignerMetaDataBaseItemInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractmetadatabase.cpp", QtDesignerCFlags).}

proc fcQDesignerMetaDataBaseItemInterface_delete(self: pointer) {.importc: "QDesignerMetaDataBaseItemInterface_delete".}
proc `=destroy`(self: var QDesignerMetaDataBaseItemInterface) =
  if self.owned: fcQDesignerMetaDataBaseItemInterface_delete(self.h)

proc `=sink`(dest: var QDesignerMetaDataBaseItemInterface, source: QDesignerMetaDataBaseItemInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerMetaDataBaseItemInterface, source: QDesignerMetaDataBaseItemInterface) {.error.}
proc delete*(self: sink QDesignerMetaDataBaseItemInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerMetaDataBaseItemInterface_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QDesignerMetaDataBaseInterface* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QDesignerMetaDataBaseInterface, source: QDesignerMetaDataBaseInterface) {.error.}
proc `=sink`(dest: var QDesignerMetaDataBaseInterface, source: QDesignerMetaDataBaseInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

