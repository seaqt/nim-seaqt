type QRunnable* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qrunnable.cpp", cflags).}

proc fcQRunnable_delete(self: pointer) {.importc: "QRunnable_delete".}
proc `=destroy`(self: var QRunnable) =
  if self.owned: fcQRunnable_delete(self.h)

proc `=sink`(dest: var QRunnable, source: QRunnable) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRunnable, source: QRunnable) {.error.}
proc delete*(self: sink QRunnable) =
  let h = self.h
  wasMoved(self)
  fcQRunnable_delete(h)

