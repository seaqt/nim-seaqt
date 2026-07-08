type QFontVariableAxis* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qfontvariableaxis.cpp", QtGuiCFlags).}

proc fcQFontVariableAxis_delete(self: pointer) {.importc: "QFontVariableAxis_delete".}
proc `=destroy`(self: var QFontVariableAxis) =
  if self.owned: fcQFontVariableAxis_delete(self.h)

proc `=sink`(dest: var QFontVariableAxis, source: QFontVariableAxis) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFontVariableAxis, source: QFontVariableAxis) {.error.}
proc delete*(self: sink QFontVariableAxis) =
  let h = self.h
  wasMoved(self)
  fcQFontVariableAxis_delete(h)

