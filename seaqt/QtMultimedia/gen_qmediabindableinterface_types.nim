type QMediaBindableInterface* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qmediabindableinterface.cpp", cflags).}

proc fcQMediaBindableInterface_delete(self: pointer) {.importc: "QMediaBindableInterface_delete".}
proc `=destroy`(self: var QMediaBindableInterface) =
  if self.owned: fcQMediaBindableInterface_delete(self.h)

proc `=sink`(dest: var QMediaBindableInterface, source: QMediaBindableInterface) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMediaBindableInterface, source: QMediaBindableInterface) {.error.}
proc delete*(self: sink QMediaBindableInterface) =
  let h = self.h
  wasMoved(self)
  fcQMediaBindableInterface_delete(h)

