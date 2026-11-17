type QWebEngineGlobalSettingsDnsMode* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtwebenginecore_pkg

{.compile("gen_qwebengineglobalsettings.cpp", QtWebEngineCoreCFlags).}

proc fcQWebEngineGlobalSettingsDnsMode_delete(self: pointer) {.importc: "QWebEngineGlobalSettings__DnsMode_delete".}
proc `=destroy`(self: var QWebEngineGlobalSettingsDnsMode) =
  if self.owned: fcQWebEngineGlobalSettingsDnsMode_delete(self.h)

proc `=sink`(dest: var QWebEngineGlobalSettingsDnsMode, source: QWebEngineGlobalSettingsDnsMode) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineGlobalSettingsDnsMode, source: QWebEngineGlobalSettingsDnsMode) {.error.}
proc delete*(self: sink QWebEngineGlobalSettingsDnsMode) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineGlobalSettingsDnsMode_delete(h)

