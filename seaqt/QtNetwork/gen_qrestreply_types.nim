type QRestReply* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qrestreply.cpp", QtNetworkCFlags).}

proc fcQRestReply_delete(self: pointer) {.importc: "QRestReply_delete".}
proc `=destroy`(self: var QRestReply) =
  if self.owned: fcQRestReply_delete(self.h)

proc `=sink`(dest: var QRestReply, source: QRestReply) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRestReply, source: QRestReply) {.error.}
proc delete*(self: sink QRestReply) =
  let h = self.h
  wasMoved(self)
  fcQRestReply_delete(h)

