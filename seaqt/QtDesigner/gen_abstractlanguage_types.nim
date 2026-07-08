type QDesignerLanguageExtension* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtdesigner_pkg

{.compile("gen_abstractlanguage.cpp", QtDesignerCFlags).}

proc fcQDesignerLanguageExtension_delete(self: pointer) {.importc: "QDesignerLanguageExtension_delete".}
proc `=destroy`(self: var QDesignerLanguageExtension) =
  if self.owned: fcQDesignerLanguageExtension_delete(self.h)

proc `=sink`(dest: var QDesignerLanguageExtension, source: QDesignerLanguageExtension) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QDesignerLanguageExtension, source: QDesignerLanguageExtension) {.error.}
proc delete*(self: sink QDesignerLanguageExtension) =
  let h = self.h
  wasMoved(self)
  fcQDesignerLanguageExtension_delete(h)

