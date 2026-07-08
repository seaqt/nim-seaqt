type QDesignerOptionsPageInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractoptionspage.cpp", QtDesignerCFlags).}

proc fcQDesignerOptionsPageInterface_delete(self: pointer) {.importc: "QDesignerOptionsPageInterface_delete".}
proc `=destroy`(self: var QDesignerOptionsPageInterface) =
  if self.owned: fcQDesignerOptionsPageInterface_delete(self.h)

proc `=sink`(dest: var QDesignerOptionsPageInterface, source: QDesignerOptionsPageInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerOptionsPageInterface, source: QDesignerOptionsPageInterface) {.error.}
proc delete*(self: sink QDesignerOptionsPageInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerOptionsPageInterface_delete(h)

