type QPrinterInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtprintsupport_pkg

{.compile("gen_qprinterinfo.cpp", QtPrintSupportCFlags).}

proc fcQPrinterInfo_delete(self: pointer) {.importc: "QPrinterInfo_delete".}
proc `=destroy`(self: var QPrinterInfo) =
  if self.owned: fcQPrinterInfo_delete(self.h)

proc `=sink`(dest: var QPrinterInfo, source: QPrinterInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPrinterInfo, source: QPrinterInfo) {.error.}
proc delete*(self: sink QPrinterInfo) =
  let h = self.h
  wasMoved(self)
  fcQPrinterInfo_delete(h)

