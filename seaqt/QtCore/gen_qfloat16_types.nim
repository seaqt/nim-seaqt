type qfloat16* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qfloat16.cpp", cflags).}

proc fcqfloat16_delete(self: pointer) {.importc: "qfloat16_delete".}
proc `=destroy`(self: var qfloat16) =
  if self.owned: fcqfloat16_delete(self.h)

proc `=sink`(dest: var qfloat16, source: qfloat16) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var qfloat16, source: qfloat16) {.error.}
proc delete*(self: sink qfloat16) =
  let h = self.h
  wasMoved(self)
  fcqfloat16_delete(h)

