type QHttpHeaders* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qhttpheaders.cpp", QtNetworkCFlags).}

proc fcQHttpHeaders_delete(self: pointer) {.importc: "QHttpHeaders_delete".}
proc `=destroy`(self: var QHttpHeaders) =
  if self.owned: fcQHttpHeaders_delete(self.h)

proc `=sink`(dest: var QHttpHeaders, source: QHttpHeaders) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHttpHeaders, source: QHttpHeaders) {.error.}
proc delete*(self: sink QHttpHeaders) =
  let h = self.h
  wasMoved(self)
  fcQHttpHeaders_delete(h)

