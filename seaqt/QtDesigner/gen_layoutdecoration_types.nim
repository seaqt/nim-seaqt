type QDesignerLayoutDecorationExtension* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_layoutdecoration.cpp", QtDesignerCFlags).}

proc fcQDesignerLayoutDecorationExtension_delete(self: pointer) {.importc: "QDesignerLayoutDecorationExtension_delete".}
proc `=destroy`(self: var QDesignerLayoutDecorationExtension) =
  if self.owned: fcQDesignerLayoutDecorationExtension_delete(self.h)

proc `=sink`(dest: var QDesignerLayoutDecorationExtension, source: QDesignerLayoutDecorationExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerLayoutDecorationExtension, source: QDesignerLayoutDecorationExtension) {.error.}
proc delete*(self: sink QDesignerLayoutDecorationExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerLayoutDecorationExtension_delete(h)

