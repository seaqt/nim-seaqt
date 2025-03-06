type QResource* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qresource.cpp", cflags).}

proc fcQResource_delete(self: pointer) {.importc: "QResource_delete".}
proc `=destroy`(self: var QResource) =
  if self.owned: fcQResource_delete(self.h)

proc `=sink`(dest: var QResource, source: QResource) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QResource, source: QResource) {.error.}
proc delete*(self: sink QResource) =
  let h = self.h
  wasMoved(self)
  fcQResource_delete(h)

