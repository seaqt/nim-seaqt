type QHstsPolicy* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qhstspolicy.cpp", cflags).}

proc fcQHstsPolicy_delete(self: pointer) {.importc: "QHstsPolicy_delete".}
proc `=destroy`(self: var QHstsPolicy) =
  if self.owned: fcQHstsPolicy_delete(self.h)

proc `=sink`(dest: var QHstsPolicy, source: QHstsPolicy) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHstsPolicy, source: QHstsPolicy) {.error.}
proc delete*(self: sink QHstsPolicy) =
  let h = self.h
  wasMoved(self)
  fcQHstsPolicy_delete(h)

