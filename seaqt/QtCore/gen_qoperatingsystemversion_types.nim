type QOperatingSystemVersionBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qoperatingsystemversion.cpp", cflags).}

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
