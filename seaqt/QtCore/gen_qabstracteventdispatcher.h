#pragma once
#ifndef SEAQT_QTCORE_GEN_QABSTRACTEVENTDISPATCHER_H
#define SEAQT_QTCORE_GEN_QABSTRACTEVENTDISPATCHER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractEventDispatcher;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QAbstractEventDispatcher__TimerInfo)
typedef QAbstractEventDispatcher::TimerInfo QAbstractEventDispatcher__TimerInfo;
#else
class QAbstractEventDispatcher__TimerInfo;
#endif
class QAbstractNativeEventFilter;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSocketNotifier;
class QThread;
#else
typedef struct QAbstractEventDispatcher QAbstractEventDispatcher;
typedef struct QAbstractEventDispatcher__TimerInfo QAbstractEventDispatcher__TimerInfo;
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSocketNotifier QSocketNotifier;
typedef struct QThread QThread;
#endif

void QAbstractEventDispatcher_virtbase(QAbstractEventDispatcher* src, QObject** outptr_QObject);
QMetaObject* QAbstractEventDispatcher_metaObject(const QAbstractEventDispatcher* self);
void* QAbstractEventDispatcher_metacast(QAbstractEventDispatcher* self, const char* param1);
int QAbstractEventDispatcher_metacall(QAbstractEventDispatcher* self, int param1, int param2, void** param3);
struct seaqt_string QAbstractEventDispatcher_tr_s(const char* s);
struct seaqt_string QAbstractEventDispatcher_trUtf8_s(const char* s);
QAbstractEventDispatcher* QAbstractEventDispatcher_instance();
bool QAbstractEventDispatcher_processEvents(QAbstractEventDispatcher* self, int flags);
bool QAbstractEventDispatcher_hasPendingEvents(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_registerSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
void QAbstractEventDispatcher_unregisterSocketNotifier(QAbstractEventDispatcher* self, QSocketNotifier* notifier);
int QAbstractEventDispatcher_registerTimer_interval_timerType_object(QAbstractEventDispatcher* self, int interval, int timerType, QObject* object);
void QAbstractEventDispatcher_registerTimer_timerId_interval_timerType_object(QAbstractEventDispatcher* self, int timerId, int interval, int timerType, QObject* object);
bool QAbstractEventDispatcher_unregisterTimer(QAbstractEventDispatcher* self, int timerId);
bool QAbstractEventDispatcher_unregisterTimers(QAbstractEventDispatcher* self, QObject* object);
struct seaqt_array /* of QAbstractEventDispatcher__TimerInfo* */  QAbstractEventDispatcher_registeredTimers(const QAbstractEventDispatcher* self, QObject* object);
int QAbstractEventDispatcher_remainingTime(QAbstractEventDispatcher* self, int timerId);
void QAbstractEventDispatcher_wakeUp(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_interrupt(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_flush(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_startingUp(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_closingDown(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_installNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
void QAbstractEventDispatcher_removeNativeEventFilter(QAbstractEventDispatcher* self, QAbstractNativeEventFilter* filterObj);
bool QAbstractEventDispatcher_filterNativeEvent(QAbstractEventDispatcher* self, struct seaqt_string eventType, void* message, long* result);
void QAbstractEventDispatcher_aboutToBlock(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_connect_aboutToBlock(QAbstractEventDispatcher* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractEventDispatcher_awake(QAbstractEventDispatcher* self);
void QAbstractEventDispatcher_connect_awake(QAbstractEventDispatcher* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QAbstractEventDispatcher_tr_s_c(const char* s, const char* c);
struct seaqt_string QAbstractEventDispatcher_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAbstractEventDispatcher_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAbstractEventDispatcher_trUtf8_s_c_n(const char* s, const char* c, int n);
QAbstractEventDispatcher* QAbstractEventDispatcher_instance_thread(QThread* thread);

void QAbstractEventDispatcher_delete(QAbstractEventDispatcher* self);

QAbstractEventDispatcher__TimerInfo* QAbstractEventDispatcher__TimerInfo_new(int id, int i, int t);

int QAbstractEventDispatcher__TimerInfo_timerId(const QAbstractEventDispatcher__TimerInfo* self);
void QAbstractEventDispatcher__TimerInfo_setTimerId(QAbstractEventDispatcher__TimerInfo* self, int timerId);
int QAbstractEventDispatcher__TimerInfo_interval(const QAbstractEventDispatcher__TimerInfo* self);
void QAbstractEventDispatcher__TimerInfo_setInterval(QAbstractEventDispatcher__TimerInfo* self, int interval);
int QAbstractEventDispatcher__TimerInfo_timerType(const QAbstractEventDispatcher__TimerInfo* self);
void QAbstractEventDispatcher__TimerInfo_setTimerType(QAbstractEventDispatcher__TimerInfo* self, int timerType);

void QAbstractEventDispatcher__TimerInfo_delete(QAbstractEventDispatcher__TimerInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
