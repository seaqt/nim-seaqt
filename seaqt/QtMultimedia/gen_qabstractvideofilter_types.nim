type QVideoFilterRunnable* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qabstractvideofilter.cpp", cflags).}

proc fcQVideoFilterRunnable_delete(self: pointer) {.importc: "QVideoFilterRunnable_delete".}
proc `=destroy`(self: var QVideoFilterRunnable) =
  if self.owned: fcQVideoFilterRunnable_delete(self.h)

proc `=sink`(dest: var QVideoFilterRunnable, source: QVideoFilterRunnable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoFilterRunnable, source: QVideoFilterRunnable) {.error.}
proc delete*(self: sink QVideoFilterRunnable) =
  let h = self.h
  wasMoved(self)
  fcQVideoFilterRunnable_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QAbstractVideoFilter* = object of gen_qobject_types.QObject
