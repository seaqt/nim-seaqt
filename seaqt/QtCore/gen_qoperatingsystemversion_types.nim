type QOperatingSystemVersion* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qoperatingsystemversion.cpp", cflags).}

proc fcQOperatingSystemVersion_delete(self: pointer) {.importc: "QOperatingSystemVersion_delete".}
proc `=destroy`(self: var QOperatingSystemVersion) =
  if self.owned: fcQOperatingSystemVersion_delete(self.h)

proc `=sink`(dest: var QOperatingSystemVersion, source: QOperatingSystemVersion) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QOperatingSystemVersion, source: QOperatingSystemVersion) {.error.}
proc delete*(self: sink QOperatingSystemVersion) =
  let h = self.h
  wasMoved(self)
  fcQOperatingSystemVersion_delete(h)

