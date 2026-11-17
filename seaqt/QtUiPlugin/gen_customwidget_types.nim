type QDesignerCustomWidgetInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtuiplugin_pkg

{.compile("gen_customwidget.cpp", QtUiPluginCFlags).}

proc fcQDesignerCustomWidgetInterface_delete(self: pointer) {.importc: "QDesignerCustomWidgetInterface_delete".}
proc `=destroy`(self: var QDesignerCustomWidgetInterface) =
  if self.owned: fcQDesignerCustomWidgetInterface_delete(self.h)

proc `=sink`(dest: var QDesignerCustomWidgetInterface, source: QDesignerCustomWidgetInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerCustomWidgetInterface, source: QDesignerCustomWidgetInterface) {.error.}
proc delete*(self: sink QDesignerCustomWidgetInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerCustomWidgetInterface_delete(h)

type QDesignerCustomWidgetCollectionInterface* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

proc fcQDesignerCustomWidgetCollectionInterface_delete(self: pointer) {.importc: "QDesignerCustomWidgetCollectionInterface_delete".}
proc `=destroy`(self: var QDesignerCustomWidgetCollectionInterface) =
  if self.owned: fcQDesignerCustomWidgetCollectionInterface_delete(self.h)

proc `=sink`(dest: var QDesignerCustomWidgetCollectionInterface, source: QDesignerCustomWidgetCollectionInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerCustomWidgetCollectionInterface, source: QDesignerCustomWidgetCollectionInterface) {.error.}
proc delete*(self: sink QDesignerCustomWidgetCollectionInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerCustomWidgetCollectionInterface_delete(h)

