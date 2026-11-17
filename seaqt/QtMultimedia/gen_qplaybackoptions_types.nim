type QPlaybackOptions* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qplaybackoptions.cpp", QtMultimediaCFlags).}

proc fcQPlaybackOptions_delete(self: pointer) {.importc: "QPlaybackOptions_delete".}
proc `=destroy`(self: var QPlaybackOptions) =
  if self.owned: fcQPlaybackOptions_delete(self.h)

proc `=sink`(dest: var QPlaybackOptions, source: QPlaybackOptions) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QPlaybackOptions, source: QPlaybackOptions) {.error.}
proc delete*(self: sink QPlaybackOptions) =
  let h = self.h
  wasMoved(self)
  fcQPlaybackOptions_delete(h)

