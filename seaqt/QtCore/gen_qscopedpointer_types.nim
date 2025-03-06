type QScopedPointerPodDeleter* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qscopedpointer.cpp", cflags).}

proc fcQScopedPointerPodDeleter_delete(self: pointer) {.importc: "QScopedPointerPodDeleter_delete".}
proc `=destroy`(self: var QScopedPointerPodDeleter) =
  if self.owned: fcQScopedPointerPodDeleter_delete(self.h)

proc `=sink`(dest: var QScopedPointerPodDeleter, source: QScopedPointerPodDeleter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QScopedPointerPodDeleter, source: QScopedPointerPodDeleter) {.error.}
proc delete*(self: sink QScopedPointerPodDeleter) =
  let h = self.h
  wasMoved(self)
  fcQScopedPointerPodDeleter_delete(h)

