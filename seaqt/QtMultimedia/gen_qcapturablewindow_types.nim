type QCapturableWindow* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtmultimedia_pkg

{.compile("gen_qcapturablewindow.cpp", QtMultimediaCFlags).}

proc fcQCapturableWindow_delete(self: pointer) {.importc: "QCapturableWindow_delete".}
proc `=destroy`(self: var QCapturableWindow) =
  if self.owned: fcQCapturableWindow_delete(self.h)

proc `=sink`(dest: var QCapturableWindow, source: QCapturableWindow) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QCapturableWindow, source: QCapturableWindow) {.error.}
proc delete*(self: sink QCapturableWindow) =
  let h = self.h
  wasMoved(self)
  fcQCapturableWindow_delete(h)

