type partial_ordering* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qcompare.cpp", QtCoreCFlags).}

proc fcpartial_ordering_delete(self: pointer) {.importc: "partial_ordering_delete".}
proc `=destroy`(self: var partial_ordering) =
  if self.owned: fcpartial_ordering_delete(self.h)

proc `=sink`(dest: var partial_ordering, source: partial_ordering) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var partial_ordering, source: partial_ordering) {.error.}
proc delete*(self: sink partial_ordering) =
  let h = self.h
  wasMoved(self)
  fcpartial_ordering_delete(h)

type weak_ordering* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcweak_ordering_delete(self: pointer) {.importc: "weak_ordering_delete".}
proc `=destroy`(self: var weak_ordering) =
  if self.owned: fcweak_ordering_delete(self.h)

proc `=sink`(dest: var weak_ordering, source: weak_ordering) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var weak_ordering, source: weak_ordering) {.error.}
proc delete*(self: sink weak_ordering) =
  let h = self.h
  wasMoved(self)
  fcweak_ordering_delete(h)

type strong_ordering* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcstrong_ordering_delete(self: pointer) {.importc: "strong_ordering_delete".}
proc `=destroy`(self: var strong_ordering) =
  if self.owned: fcstrong_ordering_delete(self.h)

proc `=sink`(dest: var strong_ordering, source: strong_ordering) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var strong_ordering, source: strong_ordering) {.error.}
proc delete*(self: sink strong_ordering) =
  let h = self.h
  wasMoved(self)
  fcstrong_ordering_delete(h)

type QPartialOrdering* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQPartialOrdering_delete(self: pointer) {.importc: "QPartialOrdering_delete".}
proc `=destroy`(self: var QPartialOrdering) =
  if self.owned: fcQPartialOrdering_delete(self.h)

proc `=sink`(dest: var QPartialOrdering, source: QPartialOrdering) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPartialOrdering, source: QPartialOrdering) {.error.}
proc delete*(self: sink QPartialOrdering) =
  let h = self.h
  wasMoved(self)
  fcQPartialOrdering_delete(h)

