type QMetaContainer* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qmetacontainer.cpp", cflags).}

proc fcQMetaContainer_delete(self: pointer) {.importc: "QMetaContainer_delete".}
proc `=destroy`(self: var QMetaContainer) =
  if self.owned: fcQMetaContainer_delete(self.h)

proc `=sink`(dest: var QMetaContainer, source: QMetaContainer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QMetaContainer, source: QMetaContainer) {.error.}
proc delete*(self: sink QMetaContainer) =
  let h = self.h
  wasMoved(self)
  fcQMetaContainer_delete(h)

type QMetaSequence* = object of QMetaContainer
type QMetaAssociation* = object of QMetaContainer
