type QWebSelectData* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5WebKit") & " -fPIC"
{.compile("gen_qwebkitplatformplugin.cpp", cflags).}

proc fcQWebSelectData_delete(self: pointer) {.importc: "QWebSelectData_delete".}
proc `=destroy`(self: var QWebSelectData) =
  if self.owned: fcQWebSelectData_delete(self.h)

proc `=sink`(dest: var QWebSelectData, source: QWebSelectData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebSelectData, source: QWebSelectData) {.error.}
proc delete*(self: sink QWebSelectData) =
  let h = self.h
  wasMoved(self)
  fcQWebSelectData_delete(h)

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebSelectMethod* = object of gen_qobject_types.QObject
type QWebNotificationData* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebNotificationData_delete(self: pointer) {.importc: "QWebNotificationData_delete".}
proc `=destroy`(self: var QWebNotificationData) =
  if self.owned: fcQWebNotificationData_delete(self.h)

proc `=sink`(dest: var QWebNotificationData, source: QWebNotificationData) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebNotificationData, source: QWebNotificationData) {.error.}
proc delete*(self: sink QWebNotificationData) =
  let h = self.h
  wasMoved(self)
  fcQWebNotificationData_delete(h)

type QWebNotificationPresenter* = object of gen_qobject_types.QObject
type QWebHapticFeedbackPlayer* = object of gen_qobject_types.QObject
type QWebTouchModifier* = object of gen_qobject_types.QObject
type QWebSpellChecker* = object of gen_qobject_types.QObject
type QWebKitPlatformPlugin* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebKitPlatformPlugin_delete(self: pointer) {.importc: "QWebKitPlatformPlugin_delete".}
proc `=destroy`(self: var QWebKitPlatformPlugin) =
  if self.owned: fcQWebKitPlatformPlugin_delete(self.h)

proc `=sink`(dest: var QWebKitPlatformPlugin, source: QWebKitPlatformPlugin) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebKitPlatformPlugin, source: QWebKitPlatformPlugin) {.error.}
proc delete*(self: sink QWebKitPlatformPlugin) =
  let h = self.h
  wasMoved(self)
  fcQWebKitPlatformPlugin_delete(h)

type QWebSpellCheckerGrammarDetail* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQWebSpellCheckerGrammarDetail_delete(self: pointer) {.importc: "QWebSpellChecker__GrammarDetail_delete".}
proc `=destroy`(self: var QWebSpellCheckerGrammarDetail) =
  if self.owned: fcQWebSpellCheckerGrammarDetail_delete(self.h)

proc `=sink`(dest: var QWebSpellCheckerGrammarDetail, source: QWebSpellCheckerGrammarDetail) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebSpellCheckerGrammarDetail, source: QWebSpellCheckerGrammarDetail) {.error.}
proc delete*(self: sink QWebSpellCheckerGrammarDetail) =
  let h = self.h
  wasMoved(self)
  fcQWebSpellCheckerGrammarDetail_delete(h)

