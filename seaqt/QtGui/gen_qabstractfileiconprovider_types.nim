type QAbstractFileIconProvider* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtgui_pkg

{.compile("gen_qabstractfileiconprovider.cpp", QtGuiCFlags).}

proc fcQAbstractFileIconProvider_delete(self: pointer) {.importc: "QAbstractFileIconProvider_delete".}
proc `=destroy`(self: var QAbstractFileIconProvider) =
  if self.owned: fcQAbstractFileIconProvider_delete(self.h)

proc `=sink`(dest: var QAbstractFileIconProvider, source: QAbstractFileIconProvider) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractFileIconProvider, source: QAbstractFileIconProvider) {.error.}
proc delete*(self: sink QAbstractFileIconProvider) =
  let h = self.h
  wasMoved(self)
  fcQAbstractFileIconProvider_delete(h)

