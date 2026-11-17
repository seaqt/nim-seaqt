type QtMocHelpersNoType* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qtmochelpers.cpp", QtCoreCFlags).}

proc fcQtMocHelpersNoType_delete(self: pointer) {.importc: "QtMocHelpers__NoType_delete".}
proc `=destroy`(self: var QtMocHelpersNoType) =
  if self.owned: fcQtMocHelpersNoType_delete(self.h)

proc `=sink`(dest: var QtMocHelpersNoType, source: QtMocHelpersNoType) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QtMocHelpersNoType, source: QtMocHelpersNoType) {.error.}
proc delete*(self: sink QtMocHelpersNoType) =
  let h = self.h
  wasMoved(self)
  fcQtMocHelpersNoType_delete(h)

