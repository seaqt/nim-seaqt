type QPageLayout* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpagelayout.cpp", QtGuiCFlags).}

proc fcQPageLayout_delete(self: pointer) {.importc: "QPageLayout_delete".}
proc `=destroy`(self: var QPageLayout) =
  if self.owned: fcQPageLayout_delete(self.h)

proc `=sink`(dest: var QPageLayout, source: QPageLayout) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPageLayout, source: QPageLayout) {.error.}
proc delete*(self: sink QPageLayout) =
  let h = self.h
  wasMoved(self)
  fcQPageLayout_delete(h)

