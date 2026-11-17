type QHttp1Configuration* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qhttp1configuration.cpp", QtNetworkCFlags).}

proc fcQHttp1Configuration_delete(self: pointer) {.importc: "QHttp1Configuration_delete".}
proc `=destroy`(self: var QHttp1Configuration) =
  if self.owned: fcQHttp1Configuration_delete(self.h)

proc `=sink`(dest: var QHttp1Configuration, source: QHttp1Configuration) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QHttp1Configuration, source: QHttp1Configuration) {.error.}
proc delete*(self: sink QHttp1Configuration) =
  let h = self.h
  wasMoved(self)
  fcQHttp1Configuration_delete(h)

