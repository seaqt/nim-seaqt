type Disambiguated_t* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qnamespace.cpp", cflags).}

proc fcDisambiguated_t_delete(self: pointer) {.importc: "Disambiguated_t_delete".}
proc `=destroy`(self: var Disambiguated_t) =
  if self.owned: fcDisambiguated_t_delete(self.h)

proc `=sink`(dest: var Disambiguated_t, source: Disambiguated_t) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var Disambiguated_t, source: Disambiguated_t) {.error.}
proc delete*(self: sink Disambiguated_t) =
  let h = self.h
  wasMoved(self)
  fcDisambiguated_t_delete(h)

type QInternal* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQInternal_delete(self: pointer) {.importc: "QInternal_delete".}
proc `=destroy`(self: var QInternal) =
  if self.owned: fcQInternal_delete(self.h)

proc `=sink`(dest: var QInternal, source: QInternal) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QInternal, source: QInternal) {.error.}
proc delete*(self: sink QInternal) =
  let h = self.h
  wasMoved(self)
  fcQInternal_delete(h)

type QKeyCombination* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQKeyCombination_delete(self: pointer) {.importc: "QKeyCombination_delete".}
proc `=destroy`(self: var QKeyCombination) =
  if self.owned: fcQKeyCombination_delete(self.h)

proc `=sink`(dest: var QKeyCombination, source: QKeyCombination) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QKeyCombination, source: QKeyCombination) {.error.}
proc delete*(self: sink QKeyCombination) =
  let h = self.h
  wasMoved(self)
  fcQKeyCombination_delete(h)

