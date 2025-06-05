type QStringConverterBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

type QStringConverter* = object of QStringConverterBase
proc `=copy`(dest: var QStringConverter, source: QStringConverter) {.error.}
proc `=sink`(dest: var QStringConverter, source: QStringConverter) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QStringConverterBaseState* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qstringconverter_base.cpp", QtCoreCFlags).}

proc fcQStringConverterBaseState_delete(self: pointer) {.importc: "QStringConverterBase__State_delete".}
proc `=destroy`(self: var QStringConverterBaseState) =
  if self.owned: fcQStringConverterBaseState_delete(self.h)

proc `=sink`(dest: var QStringConverterBaseState, source: QStringConverterBaseState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QStringConverterBaseState, source: QStringConverterBaseState) {.error.}
proc delete*(self: sink QStringConverterBaseState) =
  let h = self.h
  wasMoved(self)
  fcQStringConverterBaseState_delete(h)

