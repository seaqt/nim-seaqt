import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebPluginFactory* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebPluginFactory, source: QWebPluginFactory) {.error.}
proc `=sink`(dest: var QWebPluginFactory, source: QWebPluginFactory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QWebPluginFactoryMimeType* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebkit_pkg

{.compile("gen_qwebpluginfactory.cpp", QtWebKitCFlags).}

proc fcQWebPluginFactoryMimeType_delete(self: pointer) {.importc: "QWebPluginFactory__MimeType_delete".}
proc `=destroy`(self: var QWebPluginFactoryMimeType) =
  if self.owned: fcQWebPluginFactoryMimeType_delete(self.h)

proc `=sink`(dest: var QWebPluginFactoryMimeType, source: QWebPluginFactoryMimeType) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPluginFactoryMimeType, source: QWebPluginFactoryMimeType) {.error.}
proc delete*(self: sink QWebPluginFactoryMimeType) =
  let h = self.h
  wasMoved(self)
  fcQWebPluginFactoryMimeType_delete(h)

type QWebPluginFactoryPlugin* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebPluginFactoryPlugin_delete(self: pointer) {.importc: "QWebPluginFactory__Plugin_delete".}
proc `=destroy`(self: var QWebPluginFactoryPlugin) =
  if self.owned: fcQWebPluginFactoryPlugin_delete(self.h)

proc `=sink`(dest: var QWebPluginFactoryPlugin, source: QWebPluginFactoryPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPluginFactoryPlugin, source: QWebPluginFactoryPlugin) {.error.}
proc delete*(self: sink QWebPluginFactoryPlugin) =
  let h = self.h
  wasMoved(self)
  fcQWebPluginFactoryPlugin_delete(h)

type QWebPluginFactoryExtensionOption* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebPluginFactoryExtensionOption_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionOption_delete".}
proc `=destroy`(self: var QWebPluginFactoryExtensionOption) =
  if self.owned: fcQWebPluginFactoryExtensionOption_delete(self.h)

proc `=sink`(dest: var QWebPluginFactoryExtensionOption, source: QWebPluginFactoryExtensionOption) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPluginFactoryExtensionOption, source: QWebPluginFactoryExtensionOption) {.error.}
proc delete*(self: sink QWebPluginFactoryExtensionOption) =
  let h = self.h
  wasMoved(self)
  fcQWebPluginFactoryExtensionOption_delete(h)

type QWebPluginFactoryExtensionReturn* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebPluginFactoryExtensionReturn_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionReturn_delete".}
proc `=destroy`(self: var QWebPluginFactoryExtensionReturn) =
  if self.owned: fcQWebPluginFactoryExtensionReturn_delete(self.h)

proc `=sink`(dest: var QWebPluginFactoryExtensionReturn, source: QWebPluginFactoryExtensionReturn) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebPluginFactoryExtensionReturn, source: QWebPluginFactoryExtensionReturn) {.error.}
proc delete*(self: sink QWebPluginFactoryExtensionReturn) =
  let h = self.h
  wasMoved(self)
  fcQWebPluginFactoryExtensionReturn_delete(h)

