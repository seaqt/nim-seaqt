type QAudioBuffer* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qaudiobuffer.cpp", QtMultimediaCFlags).}

proc fcQAudioBuffer_delete(self: pointer) {.importc: "QAudioBuffer_delete".}
proc `=destroy`(self: var QAudioBuffer) =
  if self.owned: fcQAudioBuffer_delete(self.h)

proc `=sink`(dest: var QAudioBuffer, source: QAudioBuffer) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAudioBuffer, source: QAudioBuffer) {.error.}
proc delete*(self: sink QAudioBuffer) =
  let h = self.h
  wasMoved(self)
  fcQAudioBuffer_delete(h)

