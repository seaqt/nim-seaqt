type QLibraryInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qlibraryinfo.cpp", QtCoreCFlags).}

proc fcQLibraryInfo_delete(self: pointer) {.importc: "QLibraryInfo_delete".}
proc `=destroy`(self: var QLibraryInfo) =
  if self.owned: fcQLibraryInfo_delete(self.h)

proc `=sink`(dest: var QLibraryInfo, source: QLibraryInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QLibraryInfo, source: QLibraryInfo) {.error.}
proc delete*(self: sink QLibraryInfo) =
  let h = self.h
  wasMoved(self)
  fcQLibraryInfo_delete(h)

