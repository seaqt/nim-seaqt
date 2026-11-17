type QSslDiffieHellmanParameters* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qssldiffiehellmanparameters.cpp", QtNetworkCFlags).}

proc fcQSslDiffieHellmanParameters_delete(self: pointer) {.importc: "QSslDiffieHellmanParameters_delete".}
proc `=destroy`(self: var QSslDiffieHellmanParameters) =
  if self.owned: fcQSslDiffieHellmanParameters_delete(self.h)

proc `=sink`(dest: var QSslDiffieHellmanParameters, source: QSslDiffieHellmanParameters) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSslDiffieHellmanParameters, source: QSslDiffieHellmanParameters) {.error.}
proc delete*(self: sink QSslDiffieHellmanParameters) =
  let h = self.h
  wasMoved(self)
  fcQSslDiffieHellmanParameters_delete(h)

