type QSysInfo* {.inheritable, pure.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qsysinfo.cpp", QtCoreCFlags).}

proc fcQSysInfo_delete(self: pointer) {.importc: "QSysInfo_delete".}
proc `=destroy`(self: var QSysInfo) =
  if self.owned: fcQSysInfo_delete(self.h)

proc `=sink`(dest: var QSysInfo, source: QSysInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSysInfo, source: QSysInfo) {.error.}
proc delete*(self: sink QSysInfo) =
  let h = self.h
  wasMoved(self)
  fcQSysInfo_delete(h)

