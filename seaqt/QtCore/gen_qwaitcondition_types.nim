type QWaitCondition* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qwaitcondition.cpp", cflags).}

proc fcQWaitCondition_delete(self: pointer) {.importc: "QWaitCondition_delete".}
proc `=destroy`(self: var QWaitCondition) =
  if self.owned: fcQWaitCondition_delete(self.h)

proc `=sink`(dest: var QWaitCondition, source: QWaitCondition) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWaitCondition, source: QWaitCondition) {.error.}
proc delete*(self: sink QWaitCondition) =
  let h = self.h
  wasMoved(self)
  fcQWaitCondition_delete(h)

