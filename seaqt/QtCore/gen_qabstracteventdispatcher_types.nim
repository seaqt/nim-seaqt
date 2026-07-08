import ./gen_qobject_types
export gen_qobject_types

type QAbstractEventDispatcher* = object of gen_qobject_types.QObject
proc `=copy`(dest: var QAbstractEventDispatcher, source: QAbstractEventDispatcher) {.error.}
proc `=sink`(dest: var QAbstractEventDispatcher, source: QAbstractEventDispatcher) =
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

