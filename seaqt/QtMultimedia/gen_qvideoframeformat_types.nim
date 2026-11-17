type QVideoFrameFormat* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qvideoframeformat.cpp", QtMultimediaCFlags).}

proc fcQVideoFrameFormat_delete(self: pointer) {.importc: "QVideoFrameFormat_delete".}
proc `=destroy`(self: var QVideoFrameFormat) =
  if self.owned: fcQVideoFrameFormat_delete(self.h)

proc `=sink`(dest: var QVideoFrameFormat, source: QVideoFrameFormat) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoFrameFormat, source: QVideoFrameFormat) {.error.}
proc delete*(self: sink QVideoFrameFormat) =
  let h = self.h
  wasMoved(self)
  fcQVideoFrameFormat_delete(h)

