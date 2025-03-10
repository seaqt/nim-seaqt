type QProcessEnvironment* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qprocess.cpp", cflags).}

proc fcQProcessEnvironment_delete(self: pointer) {.importc: "QProcessEnvironment_delete".}
proc `=destroy`(self: var QProcessEnvironment) =
  if self.owned: fcQProcessEnvironment_delete(self.h)

proc `=sink`(dest: var QProcessEnvironment, source: QProcessEnvironment) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QProcessEnvironment, source: QProcessEnvironment) {.error.}
proc delete*(self: sink QProcessEnvironment) =
  let h = self.h
  wasMoved(self)
  fcQProcessEnvironment_delete(h)

import ./gen_qiodevice_types
export gen_qiodevice_types

type QProcess* = object of gen_qiodevice_types.QIODevice
proc `=copy`(dest: var QProcess, source: QProcess) {.error.}
proc `=sink`(dest: var QProcess, source: QProcess) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

