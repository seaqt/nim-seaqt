#pragma once
#ifndef SEAQT_QTSTATEMACHINE_GEN_QSTATEMACHINE_H
#define SEAQT_QTSTATEMACHINE_GEN_QSTATEMACHINE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

void* QStateMachine_vdata(VirtualQStateMachine* self);
VirtualQStateMachine* vdata_QStateMachine(void* vdata);

VirtualQStateMachine* QStateMachine_new(const QStateMachine_VTable* vtbl, size_t vdata);
VirtualQStateMachine* QStateMachine_new_childMode(const QStateMachine_VTable* vtbl, size_t vdata, int childMode);
VirtualQStateMachine* QStateMachine_new_parent(const QStateMachine_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQStateMachine* QStateMachine_new_childMode_parent(const QStateMachine_VTable* vtbl, size_t vdata, int childMode, QObject* parent);

void QStateMachine_virtbase(QStateMachine* src, QState** outptr_QState);
QMetaObject* QStateMachine_metaObject(const QStateMachine* self);
void* QStateMachine_metacast(QStateMachine* self, const char* param1);
int QStateMachine_metacall(QStateMachine* self, int param1, int param2, void** param3);
struct seaqt_string QStateMachine_tr_s(const char* s);
void QStateMachine_addState(QStateMachine* self, QAbstractState* state);
void QStateMachine_removeState(QStateMachine* self, QAbstractState* state);
int QStateMachine_error(const QStateMachine* self);
struct seaqt_string QStateMachine_errorString(const QStateMachine* self);
void QStateMachine_clearError(QStateMachine* self);
bool QStateMachine_isRunning(const QStateMachine* self);
bool QStateMachine_isAnimated(const QStateMachine* self);
void QStateMachine_setAnimated(QStateMachine* self, bool enabled);
void QStateMachine_addDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
struct seaqt_array /* of QAbstractAnimation* */  QStateMachine_defaultAnimations(const QStateMachine* self);
void QStateMachine_removeDefaultAnimation(QStateMachine* self, QAbstractAnimation* animation);
int QStateMachine_globalRestorePolicy(const QStateMachine* self);
void QStateMachine_setGlobalRestorePolicy(QStateMachine* self, int restorePolicy);
void QStateMachine_postEvent_event(QStateMachine* self, QEvent* event);
int QStateMachine_postDelayedEvent_QEvent_int(QStateMachine* self, QEvent* event, int delay);
bool QStateMachine_cancelDelayedEvent(QStateMachine* self, int id);
struct seaqt_array /* set of QAbstractState* */  QStateMachine_configuration(const QStateMachine* self);
bool QStateMachine_eventFilter(QStateMachine* self, QObject* watched, QEvent* event);
void QStateMachine_start(QStateMachine* self);
void QStateMachine_stop(QStateMachine* self);
void QStateMachine_setRunning(QStateMachine* self, bool running);
void QStateMachine_runningChanged(QStateMachine* self, bool running);
void QStateMachine_connect_runningChanged(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QStateMachine_onEntry(QStateMachine* self, QEvent* event);
void QStateMachine_onExit(QStateMachine* self, QEvent* event);
void QStateMachine_beginSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_endSelectTransitions(QStateMachine* self, QEvent* event);
void QStateMachine_beginMicrostep(QStateMachine* self, QEvent* event);
void QStateMachine_endMicrostep(QStateMachine* self, QEvent* event);
bool QStateMachine_event(QStateMachine* self, QEvent* e);
struct seaqt_string QStateMachine_tr_s_c(const char* s, const char* c);
struct seaqt_string QStateMachine_tr_s_c_n(const char* s, const char* c, int n);
void QStateMachine_postEvent_event_priority(QStateMachine* self, QEvent* event, int priority);

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

void QStateMachine_connect_started(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QStateMachine_connect_stopped(QStateMachine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

void QStateMachine_delete(QStateMachine* self);

typedef struct VirtualQStateMachineSignalEvent VirtualQStateMachineSignalEvent;
typedef struct QStateMachine__SignalEvent_VTable{
	void (*destructor)(VirtualQStateMachineSignalEvent* self);
	void (*setAccepted)(VirtualQStateMachineSignalEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQStateMachineSignalEvent* self);
}QStateMachine__SignalEvent_VTable;

void* QStateMachine__SignalEvent_vdata(VirtualQStateMachineSignalEvent* self);
VirtualQStateMachineSignalEvent* vdata_QStateMachine__SignalEvent(void* vdata);

VirtualQStateMachineSignalEvent* QStateMachine__SignalEvent_new_sender_signalIndex_arguments(const QStateMachine__SignalEvent_VTable* vtbl, size_t vdata, QObject* sender, int signalIndex, struct seaqt_array /* of QVariant* */  arguments);
VirtualQStateMachineSignalEvent* QStateMachine__SignalEvent_new_from(const QStateMachine__SignalEvent_VTable* vtbl, size_t vdata, QStateMachine__SignalEvent* from);

void QStateMachine__SignalEvent_virtbase(QStateMachine__SignalEvent* src, QEvent** outptr_QEvent);
QObject* QStateMachine__SignalEvent_sender(const QStateMachine__SignalEvent* self);
int QStateMachine__SignalEvent_signalIndex(const QStateMachine__SignalEvent* self);
struct seaqt_array /* of QVariant* */  QStateMachine__SignalEvent_arguments(const QStateMachine__SignalEvent* self);
void QStateMachine__SignalEvent_operatorAssign(QStateMachine__SignalEvent* self, QStateMachine__SignalEvent* from);

void QStateMachine__SignalEvent_virtualbase_setAccepted(VirtualQStateMachineSignalEvent* self, bool accepted);
QEvent* QStateMachine__SignalEvent_virtualbase_clone(const VirtualQStateMachineSignalEvent* self);

void QStateMachine__SignalEvent_delete(QStateMachine__SignalEvent* self);

typedef struct VirtualQStateMachineWrappedEvent VirtualQStateMachineWrappedEvent;
typedef struct QStateMachine__WrappedEvent_VTable{
	void (*destructor)(VirtualQStateMachineWrappedEvent* self);
	void (*setAccepted)(VirtualQStateMachineWrappedEvent* self, bool accepted);
	QEvent* (*clone)(const VirtualQStateMachineWrappedEvent* self);
}QStateMachine__WrappedEvent_VTable;

void* QStateMachine__WrappedEvent_vdata(VirtualQStateMachineWrappedEvent* self);
VirtualQStateMachineWrappedEvent* vdata_QStateMachine__WrappedEvent(void* vdata);

VirtualQStateMachineWrappedEvent* QStateMachine__WrappedEvent_new_object_event(const QStateMachine__WrappedEvent_VTable* vtbl, size_t vdata, QObject* object, QEvent* event);
VirtualQStateMachineWrappedEvent* QStateMachine__WrappedEvent_new_from(const QStateMachine__WrappedEvent_VTable* vtbl, size_t vdata, QStateMachine__WrappedEvent* from);

void QStateMachine__WrappedEvent_virtbase(QStateMachine__WrappedEvent* src, QEvent** outptr_QEvent);
QObject* QStateMachine__WrappedEvent_object(const QStateMachine__WrappedEvent* self);
QEvent* QStateMachine__WrappedEvent_event(const QStateMachine__WrappedEvent* self);
void QStateMachine__WrappedEvent_operatorAssign(QStateMachine__WrappedEvent* self, QStateMachine__WrappedEvent* from);

void QStateMachine__WrappedEvent_virtualbase_setAccepted(VirtualQStateMachineWrappedEvent* self, bool accepted);
QEvent* QStateMachine__WrappedEvent_virtualbase_clone(const VirtualQStateMachineWrappedEvent* self);

void QStateMachine__WrappedEvent_delete(QStateMachine__WrappedEvent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
