import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebPage* = object of gen_qobject_types.QObject
type QWebPageViewportAttributes* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets") & " -fPIC"
{.compile("gen_qwebpage.cpp", cflags).}

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
type QWebPageChooseMultipleFilesExtensionReturn* = object of QWebPageExtensionReturn
type QWebPageErrorPageExtensionOption* = object of QWebPageExtensionOption
type QWebPageErrorPageExtensionReturn* = object of QWebPageExtensionReturn
