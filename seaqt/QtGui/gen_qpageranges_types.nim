type QPageRanges* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qpageranges.cpp", QtGuiCFlags).}

proc fcQPageRanges_delete(self: pointer) {.importc: "QPageRanges_delete".}
proc `=destroy`(self: var QPageRanges) =
  if self.owned: fcQPageRanges_delete(self.h)

proc `=sink`(dest: var QPageRanges, source: QPageRanges) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPageRanges, source: QPageRanges) {.error.}
proc delete*(self: sink QPageRanges) =
  let h = self.h
  wasMoved(self)
  fcQPageRanges_delete(h)

type QPageRangesRange* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPageRangesRange_delete(self: pointer) {.importc: "QPageRanges__Range_delete".}
proc `=destroy`(self: var QPageRangesRange) =
  if self.owned: fcQPageRangesRange_delete(self.h)

proc `=sink`(dest: var QPageRangesRange, source: QPageRangesRange) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPageRangesRange, source: QPageRangesRange) {.error.}
proc delete*(self: sink QPageRangesRange) =
  let h = self.h
  wasMoved(self)
  fcQPageRangesRange_delete(h)

