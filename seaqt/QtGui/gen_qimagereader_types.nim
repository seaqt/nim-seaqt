type QImageReader* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qimagereader.cpp", QtGuiCFlags).}

proc fcQImageReader_delete(self: pointer) {.importc: "QImageReader_delete".}
proc `=destroy`(self: var QImageReader) =
  if self.owned: fcQImageReader_delete(self.h)

proc `=sink`(dest: var QImageReader, source: QImageReader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QImageReader, source: QImageReader) {.error.}
proc delete*(self: sink QImageReader) =
  let h = self.h
  wasMoved(self)
  fcQImageReader_delete(h)

