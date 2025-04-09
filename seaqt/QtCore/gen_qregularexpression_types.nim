type QRegularExpression* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qregularexpression.cpp", cflags).}

proc fcQRegularExpression_delete(self: pointer) {.importc: "QRegularExpression_delete".}
proc `=destroy`(self: var QRegularExpression) =
  if self.owned: fcQRegularExpression_delete(self.h)

proc `=sink`(dest: var QRegularExpression, source: QRegularExpression) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRegularExpression, source: QRegularExpression) {.error.}
proc delete*(self: sink QRegularExpression) =
  let h = self.h
  wasMoved(self)
  fcQRegularExpression_delete(h)

type QRegularExpressionMatch* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQRegularExpressionMatch_delete(self: pointer) {.importc: "QRegularExpressionMatch_delete".}
proc `=destroy`(self: var QRegularExpressionMatch) =
  if self.owned: fcQRegularExpressionMatch_delete(self.h)

proc `=sink`(dest: var QRegularExpressionMatch, source: QRegularExpressionMatch) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRegularExpressionMatch, source: QRegularExpressionMatch) {.error.}
proc delete*(self: sink QRegularExpressionMatch) =
  let h = self.h
  wasMoved(self)
  fcQRegularExpressionMatch_delete(h)

type QRegularExpressionMatchIterator* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQRegularExpressionMatchIterator_delete(self: pointer) {.importc: "QRegularExpressionMatchIterator_delete".}
proc `=destroy`(self: var QRegularExpressionMatchIterator) =
  if self.owned: fcQRegularExpressionMatchIterator_delete(self.h)

proc `=sink`(dest: var QRegularExpressionMatchIterator, source: QRegularExpressionMatchIterator) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QRegularExpressionMatchIterator, source: QRegularExpressionMatchIterator) {.error.}
proc delete*(self: sink QRegularExpressionMatchIterator) =
  let h = self.h
  wasMoved(self)
  fcQRegularExpressionMatchIterator_delete(h)

