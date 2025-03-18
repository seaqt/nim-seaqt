#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTATEMACHINE_H
#define SEAQT_QTCORE_GEN_QSTATEMACHINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractAnimation;
class QAbstractState;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QState;
class QStateMachine;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__SignalEvent)
typedef QStateMachine::SignalEvent QStateMachine__SignalEvent;
#else
class QStateMachine__SignalEvent;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QStateMachine__WrappedEvent)
typedef QStateMachine::WrappedEvent QStateMachine__WrappedEvent;
#else
class QStateMachine__WrappedEvent;
#endif
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractAnimation QAbstractAnimation;
typedef struct QAbstractState QAbstractState;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QStateMachine QStateMachine;
typedef struct QStateMachine__SignalEvent QStateMachine__SignalEvent;
typedef struct QStateMachine__WrappedEvent QStateMachine__WrappedEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQStateMachine VirtualQStateMachine;
typedef struct QStateMachine_VTable{
	void (*destructor)(VirtualQStateMachine* self);
	QMetaObject* (*metaObject)(const VirtualQStateMachine* self);
	void* (*metacast)(VirtualQStateMachine* self, const char* param1);
	int (*metacall)(VirtualQStateMachine* self, int param1, int param2, void** param3);
	bool (*eventFilter)(VirtualQStateMachine* self, QObject* watched, QEvent* event);
	void (*onEntry)(VirtualQStateMachine* self, QEvent* event);
	void (*onExit)(VirtualQStateMachine* self, QEvent* event);
	void (*beginSelectTransitions)(VirtualQStateMachine* self, QEvent* event);
	void (*endSelectTransitions)(VirtualQStateMachine* self, QEvent* event);
	void (*beginMicrostep)(VirtualQStateMachine* self, QEvent* event);
	void (*endMicrostep)(VirtualQStateMachine* self, QEvent* event);
	bool (*event)(VirtualQStateMachine* self, QEvent* e);
	void (*timerEvent)(VirtualQStateMachine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStateMachine* self, QChildEvent* event);
	void (*customEvent)(VirtualQStateMachine* self, QEvent* event);
	void (*connectNotify)(VirtualQStateMachine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStateMachine* self, QMetaMethod* signal);
}QStateMachine_VTable;

const QStateMachine_VTable* QStateMachine_vtbl(const VirtualQStateMachine* self);
void* QStateMachine_vdata(const VirtualQStateMachine* self);
void QStateMachine_setVdata(VirtualQStateMachine* self, void* vdata);

VirtualQStateMachine* QStateMachine_new(const QStateMachine_VTable* vtbl, void* vdata);
VirtualQStateMachine* QStateMachine_new2(const QStateMachine_VTable* vtbl, void* vdata, int childMode);
VirtualQStateMachine* QStateMachine_new3(const QStateMachine_VTable* vtbl, void* vdata, QObject* parent);
VirtualQStateMachine* QStateMachine_new4(const QStateMachine_VTable* vtbl, void* vdata, int childMode, QObject* parent);

void QStateMachine_virtbase(QStateMachine* src, QState** outptr_QState);
QMetaObject* QStateMachine_metaObject(const QStateMachine* self);
void* QStateMachine_metacast(QStateMachine* self, const char* param1);
int QStateMachine_metacall(QStateMachine* self, int param1, int param2, void** param3);
struct miqt_string QStateMachine_tr(const char* s);
struct miqt_string QStateMachine_trUtf8(const char* s);
void QStateMachine_addState(QStateMachine* self, QAbstractState* state);
void QStateMachine_removeState(QStateMachine* self, QAbstractState* state);
int QStateMachine_error(const QStateMachine* self);
struct miqt_string QStateMachine_errorString(const QStateMachine* self);
void QStateMachine_clearError(QStateMachine* self);
bool QStateMachine_isRunning(const QStateMachine* self);
bool QStateMachine_isAnimated(const QStateMachine* self);
void QStateMachine_setAnimated(QStateMachine* self, bool enabled);
void QStateMachine_addDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
struct miqt_array /* of QAbstractAnimation* */  QStateMachine_defaultAnimations(const QStateMachine* self);
void QStateMachine_removeDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
int QStateMachine_globalRestorePolicy(const QStateMachine* self);
void QStateMachine_setGlobalRestorePolicy(QStateMachine* self, int restorePolicy);
void QStateMachine_postEvent(QStateMachine* self, QEvent* event);
int QStateMachine_postDelayedEvent(QStateMachine* self, QEvent* event, int delay);
bool QStateMachine_cancelDelayedEvent(QStateMachine* self, int id);
struct miqt_array /* set of QAbstractState* */  QStateMachine_configuration(const QStateMachine* self);
bool QStateMachine_eventFilter(QStateMachine* self, QObject* watched, QEvent* event);
void QStateMachine_start(QStateMachine* self);
void QStateMachine_stop(QStateMachine* self);
void QStateMachine_setRunning(QStateMachine* self, bool running);
void QStateMachine_runningChanged(QStateMachine* self, bool running);
void QStateMachine_connect_runningChanged(VirtualQStateMachine* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QStateMachine_onEntry(QStateMachine* self, QEvent* event);
void QStateMachine_onExit(QStateMachine* self, QEvent* event);
void QStateMachine_beginSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_endSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_beginMicrostep(QStateMachine* self, QEvent* event);
void QStateMachine_endMicrostep(QStateMachine* self, QEvent* event);
bool QStateMachine_event(QStateMachine* self, QEvent* e);
struct miqt_string QStateMachine_tr2(const char* s, const char* c);
struct miqt_string QStateMachine_tr3(const char* s, const char* c, int n);
struct miqt_string QStateMachine_trUtf82(const char* s, const char* c);
struct miqt_string QStateMachine_trUtf83(const char* s, const char* c, int n);
void QStateMachine_postEvent2(QStateMachine* self, QEvent* event, int priority);

QMetaObject* QStateMachine_virtualbase_metaObject(const VirtualQStateMachine* self);
void* QStateMachine_virtualbase_metacast(VirtualQStateMachine* self, const char* param1);
int QStateMachine_virtualbase_metacall(VirtualQStateMachine* self, int param1, int param2, void** param3);
bool QStateMachine_virtualbase_eventFilter(VirtualQStateMachine* self, QObject* watched, QEvent* event);
void QStateMachine_virtualbase_onEntry(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_onExit(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_beginSelectTransitions(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_endSelectTransitions(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_beginMicrostep(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_endMicrostep(VirtualQStateMachine* self, QEvent* event);
bool QStateMachine_virtualbase_event(VirtualQStateMachine* self, QEvent* e);
void QStateMachine_virtualbase_timerEvent(VirtualQStateMachine* self, QTimerEvent* event);
void QStateMachine_virtualbase_childEvent(VirtualQStateMachine* self, QChildEvent* event);
void QStateMachine_virtualbase_customEvent(VirtualQStateMachine* self, QEvent* event);
void QStateMachine_virtualbase_connectNotify(VirtualQStateMachine* self, QMetaMethod* signal);
void QStateMachine_virtualbase_disconnectNotify(VirtualQStateMachine* self, QMetaMethod* signal);

QObject* QStateMachine_protectedbase_sender(const VirtualQStateMachine* self);
int QStateMachine_protectedbase_senderSignalIndex(const VirtualQStateMachine* self);
int QStateMachine_protectedbase_receivers(const VirtualQStateMachine* self, const char* signal);
bool QStateMachine_protectedbase_isSignalConnected(const VirtualQStateMachine* self, QMetaMethod* signal);

const QMetaObject* QStateMachine_staticMetaObject();
void QStateMachine_delete(QStateMachine* self);

QStateMachine__SignalEvent* QStateMachine__SignalEvent_new(QObject* sender, int signalIndex, struct miqt_array /* of QVariant* */  arguments);
QStateMachine__SignalEvent* QStateMachine__SignalEvent_new2(QStateMachine__SignalEvent* param1);

void QStateMachine__SignalEvent_virtbase(QStateMachine__SignalEvent* src, QEvent** outptr_QEvent);
QObject* QStateMachine__SignalEvent_sender(const QStateMachine__SignalEvent* self);
int QStateMachine__SignalEvent_signalIndex(const QStateMachine__SignalEvent* self);
struct miqt_array /* of QVariant* */  QStateMachine__SignalEvent_arguments(const QStateMachine__SignalEvent* self);

void QStateMachine__SignalEvent_delete(QStateMachine__SignalEvent* self);

QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new(QObject* object, QEvent* event);
QStateMachine__WrappedEvent* QStateMachine__WrappedEvent_new2(QStateMachine__WrappedEvent* param1);

void QStateMachine__WrappedEvent_virtbase(QStateMachine__WrappedEvent* src, QEvent** outptr_QEvent);
QObject* QStateMachine__WrappedEvent_object(const QStateMachine__WrappedEvent* self);
QEvent* QStateMachine__WrappedEvent_event(const QStateMachine__WrappedEvent* self);

void QStateMachine__WrappedEvent_delete(QStateMachine__WrappedEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
