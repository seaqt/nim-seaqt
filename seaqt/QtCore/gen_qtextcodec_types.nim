type QTextCodec* {.inheritable.} = object
  h*: pointer
  owned*: bool

type QTextEncoder* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qtextcodec.cpp", QtCoreCFlags).}

proc fcQTextEncoder_delete(self: pointer) {.importc: "QTextEncoder_delete".}
proc `=destroy`(self: var QTextEncoder) =
  if self.owned: fcQTextEncoder_delete(self.h)

proc `=sink`(dest: var QTextEncoder, source: QTextEncoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextEncoder, source: QTextEncoder) {.error.}
proc delete*(self: sink QTextEncoder) =
  let h = self.h
  wasMoved(self)
  fcQTextEncoder_delete(h)

type QTextDecoder* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextDecoder_delete(self: pointer) {.importc: "QTextDecoder_delete".}
proc `=destroy`(self: var QTextDecoder) =
  if self.owned: fcQTextDecoder_delete(self.h)

proc `=sink`(dest: var QTextDecoder, source: QTextDecoder) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextDecoder, source: QTextDecoder) {.error.}
proc delete*(self: sink QTextDecoder) =
  let h = self.h
  wasMoved(self)
  fcQTextDecoder_delete(h)

type QTextCodecConverterState* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQTextCodecConverterState_delete(self: pointer) {.importc: "QTextCodec__ConverterState_delete".}
proc `=destroy`(self: var QTextCodecConverterState) =
  if self.owned: fcQTextCodecConverterState_delete(self.h)

proc `=sink`(dest: var QTextCodecConverterState, source: QTextCodecConverterState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QTextCodecConverterState, source: QTextCodecConverterState) {.error.}
proc delete*(self: sink QTextCodecConverterState) =
  let h = self.h
  wasMoved(self)
  fcQTextCodecConverterState_delete(h)

