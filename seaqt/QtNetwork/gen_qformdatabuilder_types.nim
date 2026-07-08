type QFormDataPartBuilder* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtnetwork_pkg

{.compile("gen_qformdatabuilder.cpp", QtNetworkCFlags).}

proc fcQFormDataPartBuilder_delete(self: pointer) {.importc: "QFormDataPartBuilder_delete".}
proc `=destroy`(self: var QFormDataPartBuilder) =
  if self.owned: fcQFormDataPartBuilder_delete(self.h)

proc `=sink`(dest: var QFormDataPartBuilder, source: QFormDataPartBuilder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFormDataPartBuilder, source: QFormDataPartBuilder) {.error.}
proc delete*(self: sink QFormDataPartBuilder) =
  let h = self.h
  wasMoved(self)
  fcQFormDataPartBuilder_delete(h)

type QFormDataBuilder* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQFormDataBuilder_delete(self: pointer) {.importc: "QFormDataBuilder_delete".}
proc `=destroy`(self: var QFormDataBuilder) =
  if self.owned: fcQFormDataBuilder_delete(self.h)

proc `=sink`(dest: var QFormDataBuilder, source: QFormDataBuilder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QFormDataBuilder, source: QFormDataBuilder) {.error.}
proc delete*(self: sink QFormDataBuilder) =
  let h = self.h
  wasMoved(self)
  fcQFormDataBuilder_delete(h)

