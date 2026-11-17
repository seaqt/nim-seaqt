type QByteArrayMatcher* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qbytearraymatcher.cpp", QtCoreCFlags).}

proc fcQByteArrayMatcher_delete(self: pointer) {.importc: "QByteArrayMatcher_delete".}
proc `=destroy`(self: var QByteArrayMatcher) =
  if self.owned: fcQByteArrayMatcher_delete(self.h)

proc `=sink`(dest: var QByteArrayMatcher, source: QByteArrayMatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QByteArrayMatcher, source: QByteArrayMatcher) {.error.}
proc delete*(self: sink QByteArrayMatcher) =
  let h = self.h
  wasMoved(self)
  fcQByteArrayMatcher_delete(h)

type QStaticByteArrayMatcherBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQStaticByteArrayMatcherBase_delete(self: pointer) {.importc: "QStaticByteArrayMatcherBase_delete".}
proc `=destroy`(self: var QStaticByteArrayMatcherBase) =
  if self.owned: fcQStaticByteArrayMatcherBase_delete(self.h)

proc `=sink`(dest: var QStaticByteArrayMatcherBase, source: QStaticByteArrayMatcherBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStaticByteArrayMatcherBase, source: QStaticByteArrayMatcherBase) {.error.}
proc delete*(self: sink QStaticByteArrayMatcherBase) =
  let h = self.h
  wasMoved(self)
  fcQStaticByteArrayMatcherBase_delete(h)

