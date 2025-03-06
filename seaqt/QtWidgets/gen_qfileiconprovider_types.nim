type QFileIconProvider* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qfileiconprovider.cpp", cflags).}

proc fcQFileIconProvider_delete(self: pointer) {.importc: "QFileIconProvider_delete".}
proc `=destroy`(self: var QFileIconProvider) =
  if self.owned: fcQFileIconProvider_delete(self.h)

proc `=sink`(dest: var QFileIconProvider, source: QFileIconProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFileIconProvider, source: QFileIconProvider) {.error.}
proc delete*(self: sink QFileIconProvider) =
  let h = self.h
  wasMoved(self)
  fcQFileIconProvider_delete(h)

