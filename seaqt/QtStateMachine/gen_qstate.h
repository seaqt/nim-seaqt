#pragma once
#ifndef SEAQT_QTSTATEMACHINE_GEN_QSTATE_H
#define SEAQT_QTSTATEMACHINE_GEN_QSTATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractState;
class QAbstractTransition;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSignalTransition;
class QState;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractState QAbstractState;
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSignalTransition QSignalTransition;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQState VirtualQState;
typedef struct QState_VTable{
	void (*destructor)(VirtualQState* self);
	QMetaObject* (*metaObject)(const VirtualQState* self);
	void* (*metacast)(VirtualQState* self, const char* param1);
	int (*metacall)(VirtualQState* self, int param1, int param2, void** param3);
	void (*onEntry)(VirtualQState* self, QEvent* event);
	void (*onExit)(VirtualQState* self, QEvent* event);
	bool (*event)(VirtualQState* self, QEvent* e);
	bool (*eventFilter)(VirtualQState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQState* self, QTimerEvent* event);
	void (*childEvent)(VirtualQState* self, QChildEvent* event);
	void (*customEvent)(VirtualQState* self, QEvent* event);
	void (*connectNotify)(VirtualQState* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQState* self, QMetaMethod* signal);
}QState_VTable;

void* QState_vdata(VirtualQState* self);
VirtualQState* vdata_QState(void* vdata);

VirtualQState* QState_new(const QState_VTable* vtbl, size_t vdata);
VirtualQState* QState_new_childMode(const QState_VTable* vtbl, size_t vdata, int childMode);
VirtualQState* QState_new_parent(const QState_VTable* vtbl, size_t vdata, QState* parent);
VirtualQState* QState_new_childMode_parent(const QState_VTable* vtbl, size_t vdata, int childMode, QState* parent);

void QState_virtbase(QState* src, QAbstractState** outptr_QAbstractState);
QMetaObject* QState_metaObject(const QState* self);
void* QState_metacast(QState* self, const char* param1);
int QState_metacall(QState* self, int param1, int param2, void** param3);
struct seaqt_string QState_tr_s(const char* s);
QAbstractState* QState_errorState(const QState* self);
void QState_setErrorState(QState* self, QAbstractState* state);
void QState_addTransition_transition(QState* self, QAbstractTransition* transition);
QSignalTransition* QState_addTransition_sender_signal_target(QState* self, QObject* sender, const char* signal, QAbstractState* target);
QAbstractTransition* QState_addTransition_target(QState* self, QAbstractState* target);
void QState_removeTransition(QState* self, QAbstractTransition* transition);
struct seaqt_array /* of QAbstractTransition* */  QState_transitions(const QState* self);
QAbstractState* QState_initialState(const QState* self);
void QState_setInitialState(QState* self, QAbstractState* state);
int QState_childMode(const QState* self);
void QState_setChildMode(QState* self, int mode);
void QState_assignProperty(QState* self, QObject* object, const char* name, QVariant* value);
void QState_onEntry(QState* self, QEvent* event);
void QState_onExit(QState* self, QEvent* event);
bool QState_event(QState* self, QEvent* e);
struct seaqt_string QState_tr_s_c(const char* s, const char* c);
struct seaqt_string QState_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QState_virtualbase_metaObject(const VirtualQState* self);
void* QState_virtualbase_metacast(VirtualQState* self, const char* param1);
int QState_virtualbase_metacall(VirtualQState* self, int param1, int param2, void** param3);
void QState_virtualbase_onEntry(VirtualQState* self, QEvent* event);
void QState_virtualbase_onExit(VirtualQState* self, QEvent* event);
bool QState_virtualbase_event(VirtualQState* self, QEvent* e);
bool QState_virtualbase_eventFilter(VirtualQState* self, QObject* watched, QEvent* event);
void QState_virtualbase_timerEvent(VirtualQState* self, QTimerEvent* event);
void QState_virtualbase_childEvent(VirtualQState* self, QChildEvent* event);
void QState_virtualbase_customEvent(VirtualQState* self, QEvent* event);
void QState_virtualbase_connectNotify(VirtualQState* self, QMetaMethod* signal);
void QState_virtualbase_disconnectNotify(VirtualQState* self, QMetaMethod* signal);

QObject* QState_protectedbase_sender(const VirtualQState* self);
int QState_protectedbase_senderSignalIndex(const VirtualQState* self);
int QState_protectedbase_receivers(const VirtualQState* self, const char* signal);
bool QState_protectedbase_isSignalConnected(const VirtualQState* self, QMetaMethod* signal);

void QState_connect_finished(QState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QState_connect_propertiesAssigned(QState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QState_connect_childModeChanged(QState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QState_connect_initialStateChanged(QState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QState_connect_errorStateChanged(QState* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

void QState_delete(QState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
