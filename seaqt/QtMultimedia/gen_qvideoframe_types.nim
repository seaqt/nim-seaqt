type QVideoFrame* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qvideoframe.cpp", QtMultimediaCFlags).}

proc fcQVideoFrame_delete(self: pointer) {.importc: "QVideoFrame_delete".}
proc `=destroy`(self: var QVideoFrame) =
  if self.owned: fcQVideoFrame_delete(self.h)

proc `=sink`(dest: var QVideoFrame, source: QVideoFrame) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoFrame, source: QVideoFrame) {.error.}
proc delete*(self: sink QVideoFrame) =
  let h = self.h
  wasMoved(self)
  fcQVideoFrame_delete(h)

