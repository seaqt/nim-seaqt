type QItemEditorCreatorBase* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwidgets_pkg

{.compile("gen_qitemeditorfactory.cpp", QtWidgetsCFlags).}

proc fcQItemEditorCreatorBase_delete(self: pointer) {.importc: "QItemEditorCreatorBase_delete".}
proc `=destroy`(self: var QItemEditorCreatorBase) =
  if self.owned: fcQItemEditorCreatorBase_delete(self.h)

proc `=sink`(dest: var QItemEditorCreatorBase, source: QItemEditorCreatorBase) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QItemEditorCreatorBase, source: QItemEditorCreatorBase) {.error.}
proc delete*(self: sink QItemEditorCreatorBase) =
  let h = self.h
  wasMoved(self)
  fcQItemEditorCreatorBase_delete(h)

type QItemEditorFactory* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQItemEditorFactory_delete(self: pointer) {.importc: "QItemEditorFactory_delete".}
proc `=destroy`(self: var QItemEditorFactory) =
  if self.owned: fcQItemEditorFactory_delete(self.h)

proc `=sink`(dest: var QItemEditorFactory, source: QItemEditorFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QItemEditorFactory, source: QItemEditorFactory) {.error.}
proc delete*(self: sink QItemEditorFactory) =
  let h = self.h
  wasMoved(self)
  fcQItemEditorFactory_delete(h)

