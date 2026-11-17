type QDesignerFormWindowCursorInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractformwindowcursor.cpp", QtDesignerCFlags).}

proc fcQDesignerFormWindowCursorInterface_delete(self: pointer) {.importc: "QDesignerFormWindowCursorInterface_delete".}
proc `=destroy`(self: var QDesignerFormWindowCursorInterface) =
  if self.owned: fcQDesignerFormWindowCursorInterface_delete(self.h)

proc `=sink`(dest: var QDesignerFormWindowCursorInterface, source: QDesignerFormWindowCursorInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerFormWindowCursorInterface, source: QDesignerFormWindowCursorInterface) {.error.}
proc delete*(self: sink QDesignerFormWindowCursorInterface) =
  let h = self.h
  wasMoved(self)
  fcQDesignerFormWindowCursorInterface_delete(h)

