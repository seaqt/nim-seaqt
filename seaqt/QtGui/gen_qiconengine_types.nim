type QIconEngine* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qiconengine.cpp", QtGuiCFlags).}

proc fcQIconEngine_delete(self: pointer) {.importc: "QIconEngine_delete".}
proc `=destroy`(self: var QIconEngine) =
  if self.owned: fcQIconEngine_delete(self.h)

proc `=sink`(dest: var QIconEngine, source: QIconEngine) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIconEngine, source: QIconEngine) {.error.}
proc delete*(self: sink QIconEngine) =
  let h = self.h
  wasMoved(self)
  fcQIconEngine_delete(h)

type QIconEngineAvailableSizesArgument* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQIconEngineAvailableSizesArgument_delete(self: pointer) {.importc: "QIconEngine__AvailableSizesArgument_delete".}
proc `=destroy`(self: var QIconEngineAvailableSizesArgument) =
  if self.owned: fcQIconEngineAvailableSizesArgument_delete(self.h)

proc `=sink`(dest: var QIconEngineAvailableSizesArgument, source: QIconEngineAvailableSizesArgument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIconEngineAvailableSizesArgument, source: QIconEngineAvailableSizesArgument) {.error.}
proc delete*(self: sink QIconEngineAvailableSizesArgument) =
  let h = self.h
  wasMoved(self)
  fcQIconEngineAvailableSizesArgument_delete(h)

type QIconEngineScaledPixmapArgument* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQIconEngineScaledPixmapArgument_delete(self: pointer) {.importc: "QIconEngine__ScaledPixmapArgument_delete".}
proc `=destroy`(self: var QIconEngineScaledPixmapArgument) =
  if self.owned: fcQIconEngineScaledPixmapArgument_delete(self.h)

proc `=sink`(dest: var QIconEngineScaledPixmapArgument, source: QIconEngineScaledPixmapArgument) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QIconEngineScaledPixmapArgument, source: QIconEngineScaledPixmapArgument) {.error.}
proc delete*(self: sink QIconEngineScaledPixmapArgument) =
  let h = self.h
  wasMoved(self)
  fcQIconEngineScaledPixmapArgument_delete(h)

