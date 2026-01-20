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

type QVideoFramePaintOptions* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQVideoFramePaintOptions_delete(self: pointer) {.importc: "QVideoFrame__PaintOptions_delete".}
proc `=destroy`(self: var QVideoFramePaintOptions) =
  if self.owned: fcQVideoFramePaintOptions_delete(self.h)

proc `=sink`(dest: var QVideoFramePaintOptions, source: QVideoFramePaintOptions) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QVideoFramePaintOptions, source: QVideoFramePaintOptions) {.error.}
proc delete*(self: sink QVideoFramePaintOptions) =
  let h = self.h
  wasMoved(self)
  fcQVideoFramePaintOptions_delete(h)

