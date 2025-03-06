#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTATE_H
#define SEAQT_QTCORE_GEN_QSTATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

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

struct QState_VTable {
	void (*destructor)(struct QState_VTable* vtbl, QState* self);
	QMetaObject* (*metaObject)(struct QState_VTable* vtbl, const QState* self);
	void* (*metacast)(struct QState_VTable* vtbl, QState* self, const char* param1);
	int (*metacall)(struct QState_VTable* vtbl, QState* self, int param1, int param2, void** param3);
	void (*onEntry)(struct QState_VTable* vtbl, QState* self, QEvent* event);
	void (*onExit)(struct QState_VTable* vtbl, QState* self, QEvent* event);
	bool (*event)(struct QState_VTable* vtbl, QState* self, QEvent* e);
	bool (*eventFilter)(struct QState_VTable* vtbl, QState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QState_VTable* vtbl, QState* self, QTimerEvent* event);
	void (*childEvent)(struct QState_VTable* vtbl, QState* self, QChildEvent* event);
	void (*customEvent)(struct QState_VTable* vtbl, QState* self, QEvent* event);
	void (*connectNotify)(struct QState_VTable* vtbl, QState* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QState_VTable* vtbl, QState* self, QMetaMethod* signal);
};
QState* QState_new(struct QState_VTable* vtbl);
QState* QState_new2(struct QState_VTable* vtbl, int childMode);
QState* QState_new3(struct QState_VTable* vtbl, QState* parent);
QState* QState_new4(struct QState_VTable* vtbl, int childMode, QState* parent);
void QState_virtbase(QState* src, QAbstractState** outptr_QAbstractState);
QMetaObject* QState_metaObject(const QState* self);
void* QState_metacast(QState* self, const char* param1);
int QState_metacall(QState* self, int param1, int param2, void** param3);
struct miqt_string QState_tr(const char* s);
struct miqt_string QState_trUtf8(const char* s);
QAbstractState* QState_errorState(const QState* self);
void QState_setErrorState(QState* self, QAbstractState* state);
void QState_addTransition(QState* self, QAbstractTransition* transition);
QSignalTransition* QState_addTransition2(QState* self, QObject* sender, const char* signal, QAbstractState* target);
QAbstractTransition* QState_addTransitionWithTarget(QState* self, QAbstractState* target);
void QState_removeTransition(QState* self, QAbstractTransition* transition);
struct miqt_array /* of QAbstractTransition* */  QState_transitions(const QState* self);
QAbstractState* QState_initialState(const QState* self);
void QState_setInitialState(QState* self, QAbstractState* state);
int QState_childMode(const QState* self);
void QState_setChildMode(QState* self, int mode);
void QState_assignProperty(QState* self, QObject* object, const char* name, QVariant* value);
void QState_onEntry(QState* self, QEvent* event);
void QState_onExit(QState* self, QEvent* event);
bool QState_event(QState* self, QEvent* e);
struct miqt_string QState_tr2(const char* s, const char* c);
struct miqt_string QState_tr3(const char* s, const char* c, int n);
struct miqt_string QState_trUtf82(const char* s, const char* c);
struct miqt_string QState_trUtf83(const char* s, const char* c, int n);
QMetaObject* QState_virtualbase_metaObject(const void* self);
void* QState_virtualbase_metacast(void* self, const char* param1);
int QState_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QState_virtualbase_onEntry(void* self, QEvent* event);
void QState_virtualbase_onExit(void* self, QEvent* event);
bool QState_virtualbase_event(void* self, QEvent* e);
bool QState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QState_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QState_virtualbase_childEvent(void* self, QChildEvent* event);
void QState_virtualbase_customEvent(void* self, QEvent* event);
void QState_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QState_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QState_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QState_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QState_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QState_staticMetaObject();
void QState_delete(QState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
