type QRemoteObjectSourceLocationInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtremoteobjects_pkg

{.compile("gen_qtremoteobjectglobal.cpp", QtRemoteObjectsCFlags).}

proc fcQRemoteObjectSourceLocationInfo_delete(self: pointer) {.importc: "QRemoteObjectSourceLocationInfo_delete".}
proc `=destroy`(self: var QRemoteObjectSourceLocationInfo) =
  if self.owned: fcQRemoteObjectSourceLocationInfo_delete(self.h)

proc `=sink`(dest: var QRemoteObjectSourceLocationInfo, source: QRemoteObjectSourceLocationInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRemoteObjectSourceLocationInfo, source: QRemoteObjectSourceLocationInfo) {.error.}
proc delete*(self: sink QRemoteObjectSourceLocationInfo) =
  let h = self.h
  wasMoved(self)
  fcQRemoteObjectSourceLocationInfo_delete(h)

