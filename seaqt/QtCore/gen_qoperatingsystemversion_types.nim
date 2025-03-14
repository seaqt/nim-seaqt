type QOperatingSystemVersionBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qoperatingsystemversion.cpp", QtCoreCFlags).}

proc fcQOperatingSystemVersionBase_delete(self: pointer) {.importc: "QOperatingSystemVersionBase_delete".}
proc `=destroy`(self: var QOperatingSystemVersionBase) =
  if self.owned: fcQOperatingSystemVersionBase_delete(self.h)

proc `=sink`(dest: var QOperatingSystemVersionBase, source: QOperatingSystemVersionBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QOperatingSystemVersionBase, source: QOperatingSystemVersionBase) {.error.}
proc delete*(self: sink QOperatingSystemVersionBase) =
  let h = self.h
  wasMoved(self)
  fcQOperatingSystemVersionBase_delete(h)

type QOperatingSystemVersion* = object of QOperatingSystemVersionBase
proc `=copy`(dest: var QOperatingSystemVersion, source: QOperatingSystemVersion) {.error.}
proc `=sink`(dest: var QOperatingSystemVersion, source: QOperatingSystemVersion) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

