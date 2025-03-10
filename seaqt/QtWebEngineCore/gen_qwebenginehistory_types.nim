type QWebEngineHistoryItem* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebenginehistory.cpp", cflags).}

proc fcQWebEngineHistoryItem_delete(self: pointer) {.importc: "QWebEngineHistoryItem_delete".}
proc `=destroy`(self: var QWebEngineHistoryItem) =
  if self.owned: fcQWebEngineHistoryItem_delete(self.h)

proc `=sink`(dest: var QWebEngineHistoryItem, source: QWebEngineHistoryItem) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QWebEngineHistoryItem, source: QWebEngineHistoryItem) {.error.}
proc delete*(self: sink QWebEngineHistoryItem) =
  let h = self.h
  wasMoved(self)
  fcQWebEngineHistoryItem_delete(h)

import ../QtCore/gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QWebEngineHistoryModel* = object of gen_qabstractitemmodel_types.QAbstractListModel
proc `=copy`(dest: var QWebEngineHistoryModel, source: QWebEngineHistoryModel) {.error.}
proc `=sink`(dest: var QWebEngineHistoryModel, source: QWebEngineHistoryModel) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

import ../QtCore/gen_qobject_types
export gen_qobject_types

type QWebEngineHistory* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QWebEngineHistory, source: QWebEngineHistory) {.error.}
proc `=sink`(dest: var QWebEngineHistory, source: QWebEngineHistory) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

