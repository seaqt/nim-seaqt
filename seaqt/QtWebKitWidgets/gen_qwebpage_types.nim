import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebPage* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebPage, source: QWebPage) {.error.}
proc `=sink`(dest: var QWebPage, source: QWebPage) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebPageViewportAttributes* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkitwidgets_pkg

{.compile("gen_qwebpage.cpp", QtWebKitWidgetsCFlags).}

proc fcQWebPageViewportAttributes_delete(self: pointer) {.importc: "QWebPage__ViewportAttributes_delete".}
proc `=destroy`(self: var QWebPageViewportAttributes) =
  if self.owned: fcQWebPageViewportAttributes_delete(self.h)

proc `=sink`(dest: var QWebPageViewportAttributes, source: QWebPageViewportAttributes) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPageViewportAttributes, source: QWebPageViewportAttributes) {.error.}
proc delete*(self: sink QWebPageViewportAttributes) =
  let h = self.h
  wasMoved(self)
  fcQWebPageViewportAttributes_delete(h)

type QWebPageExtensionOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebPageExtensionOption_delete(self: pointer) {.importc: "QWebPage__ExtensionOption_delete".}
proc `=destroy`(self: var QWebPageExtensionOption) =
  if self.owned: fcQWebPageExtensionOption_delete(self.h)

proc `=sink`(dest: var QWebPageExtensionOption, source: QWebPageExtensionOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPageExtensionOption, source: QWebPageExtensionOption) {.error.}
proc delete*(self: sink QWebPageExtensionOption) =
  let h = self.h
  wasMoved(self)
  fcQWebPageExtensionOption_delete(h)

type QWebPageExtensionReturn* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebPageExtensionReturn_delete(self: pointer) {.importc: "QWebPage__ExtensionReturn_delete".}
proc `=destroy`(self: var QWebPageExtensionReturn) =
  if self.owned: fcQWebPageExtensionReturn_delete(self.h)

proc `=sink`(dest: var QWebPageExtensionReturn, source: QWebPageExtensionReturn) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPageExtensionReturn, source: QWebPageExtensionReturn) {.error.}
proc delete*(self: sink QWebPageExtensionReturn) =
  let h = self.h
  wasMoved(self)
  fcQWebPageExtensionReturn_delete(h)

type QWebPageChooseMultipleFilesExtensionOption* = object of QWebPageExtensionOption
proc `=copy`(dest: var QWebPageChooseMultipleFilesExtensionOption, source: QWebPageChooseMultipleFilesExtensionOption) {.error.}
proc `=sink`(dest: var QWebPageChooseMultipleFilesExtensionOption, source: QWebPageChooseMultipleFilesExtensionOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebPageChooseMultipleFilesExtensionReturn* = object of QWebPageExtensionReturn
proc `=copy`(dest: var QWebPageChooseMultipleFilesExtensionReturn, source: QWebPageChooseMultipleFilesExtensionReturn) {.error.}
proc `=sink`(dest: var QWebPageChooseMultipleFilesExtensionReturn, source: QWebPageChooseMultipleFilesExtensionReturn) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebPageErrorPageExtensionOption* = object of QWebPageExtensionOption
proc `=copy`(dest: var QWebPageErrorPageExtensionOption, source: QWebPageErrorPageExtensionOption) {.error.}
proc `=sink`(dest: var QWebPageErrorPageExtensionOption, source: QWebPageErrorPageExtensionOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebPageErrorPageExtensionReturn* = object of QWebPageExtensionReturn
proc `=copy`(dest: var QWebPageErrorPageExtensionReturn, source: QWebPageErrorPageExtensionReturn) {.error.}
proc `=sink`(dest: var QWebPageErrorPageExtensionReturn, source: QWebPageErrorPageExtensionReturn) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

