type QAudioFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qaudioformat.cpp", QtMultimediaCFlags).}

proc fcQAudioFormat_delete(self: pointer) {.importc: "QAudioFormat_delete".}
proc `=destroy`(self: var QAudioFormat) =
  if self.owned: fcQAudioFormat_delete(self.h)

proc `=sink`(dest: var QAudioFormat, source: QAudioFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioFormat, source: QAudioFormat) {.error.}
proc delete*(self: sink QAudioFormat) =
  let h = self.h
  wasMoved(self)
  fcQAudioFormat_delete(h)

