import ./gen_qobject_types
export gen_qobject_types

type QAbstractEventDispatcher* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractEventDispatcher, source: QAbstractEventDispatcher) {.error.}
proc `=sink`(dest: var QAbstractEventDispatcher, source: QAbstractEventDispatcher) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractEventDispatcherV2* = object of QAbstractEventDispatcher
proc `=copy`(dest: var QAbstractEventDispatcherV2, source: QAbstractEventDispatcherV2) {.error.}
proc `=sink`(dest: var QAbstractEventDispatcherV2, source: QAbstractEventDispatcherV2) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QAbstractEventDispatcherTimerInfo* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtcore_pkg

{.compile("gen_qabstracteventdispatcher.cpp", QtCoreCFlags).}

proc fcQAbstractEventDispatcherTimerInfo_delete(self: pointer) {.importc: "QAbstractEventDispatcher__TimerInfo_delete".}
proc `=destroy`(self: var QAbstractEventDispatcherTimerInfo) =
  if self.owned: fcQAbstractEventDispatcherTimerInfo_delete(self.h)

proc `=sink`(dest: var QAbstractEventDispatcherTimerInfo, source: QAbstractEventDispatcherTimerInfo) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractEventDispatcherTimerInfo, source: QAbstractEventDispatcherTimerInfo) {.error.}
proc delete*(self: sink QAbstractEventDispatcherTimerInfo) =
  let h = self.h
  wasMoved(self)
  fcQAbstractEventDispatcherTimerInfo_delete(h)

type QAbstractEventDispatcherTimerInfoV2* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQAbstractEventDispatcherTimerInfoV2_delete(self: pointer) {.importc: "QAbstractEventDispatcher__TimerInfoV2_delete".}
proc `=destroy`(self: var QAbstractEventDispatcherTimerInfoV2) =
  if self.owned: fcQAbstractEventDispatcherTimerInfoV2_delete(self.h)

proc `=sink`(dest: var QAbstractEventDispatcherTimerInfoV2, source: QAbstractEventDispatcherTimerInfoV2) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QAbstractEventDispatcherTimerInfoV2, source: QAbstractEventDispatcherTimerInfoV2) {.error.}
proc delete*(self: sink QAbstractEventDispatcherTimerInfoV2) =
  let h = self.h
  wasMoved(self)
  fcQAbstractEventDispatcherTimerInfoV2_delete(h)

