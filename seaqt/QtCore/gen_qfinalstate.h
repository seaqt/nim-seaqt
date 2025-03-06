#pragma once
#ifndef SEAQT_QTCORE_GEN_QFINALSTATE_H
#define SEAQT_QTCORE_GEN_QFINALSTATE_H

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
class QChildEvent;
class QEvent;
class QFinalState;
class QMetaMethod;
class QMetaObject;
class QObject;
class QState;
class QTimerEvent;
#else
typedef struct QAbstractState QAbstractState;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFinalState QFinalState;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QFinalState_VTable {
	void (*destructor)(struct QFinalState_VTable* vtbl, QFinalState* self);
	QMetaObject* (*metaObject)(struct QFinalState_VTable* vtbl, const QFinalState* self);
	void* (*metacast)(struct QFinalState_VTable* vtbl, QFinalState* self, const char* param1);
	int (*metacall)(struct QFinalState_VTable* vtbl, QFinalState* self, int param1, int param2, void** param3);
	void (*onEntry)(struct QFinalState_VTable* vtbl, QFinalState* self, QEvent* event);
	void (*onExit)(struct QFinalState_VTable* vtbl, QFinalState* self, QEvent* event);
	bool (*event)(struct QFinalState_VTable* vtbl, QFinalState* self, QEvent* e);
	bool (*eventFilter)(struct QFinalState_VTable* vtbl, QFinalState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QFinalState_VTable* vtbl, QFinalState* self, QTimerEvent* event);
	void (*childEvent)(struct QFinalState_VTable* vtbl, QFinalState* self, QChildEvent* event);
	void (*customEvent)(struct QFinalState_VTable* vtbl, QFinalState* self, QEvent* event);
	void (*connectNotify)(struct QFinalState_VTable* vtbl, QFinalState* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFinalState_VTable* vtbl, QFinalState* self, QMetaMethod* signal);
};
QFinalState* QFinalState_new(struct QFinalState_VTable* vtbl);
QFinalState* QFinalState_new2(struct QFinalState_VTable* vtbl, QState* parent);
void QFinalState_virtbase(QFinalState* src, QAbstractState** outptr_QAbstractState);
QMetaObject* QFinalState_metaObject(const QFinalState* self);
void* QFinalState_metacast(QFinalState* self, const char* param1);
int QFinalState_metacall(QFinalState* self, int param1, int param2, void** param3);
struct miqt_string QFinalState_tr(const char* s);
struct miqt_string QFinalState_trUtf8(const char* s);
void QFinalState_onEntry(QFinalState* self, QEvent* event);
void QFinalState_onExit(QFinalState* self, QEvent* event);
bool QFinalState_event(QFinalState* self, QEvent* e);
struct miqt_string QFinalState_tr2(const char* s, const char* c);
struct miqt_string QFinalState_tr3(const char* s, const char* c, int n);
struct miqt_string QFinalState_trUtf82(const char* s, const char* c);
struct miqt_string QFinalState_trUtf83(const char* s, const char* c, int n);
QMetaObject* QFinalState_virtualbase_metaObject(const void* self);
void* QFinalState_virtualbase_metacast(void* self, const char* param1);
int QFinalState_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QFinalState_virtualbase_onEntry(void* self, QEvent* event);
void QFinalState_virtualbase_onExit(void* self, QEvent* event);
bool QFinalState_virtualbase_event(void* self, QEvent* e);
bool QFinalState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFinalState_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QFinalState_virtualbase_childEvent(void* self, QChildEvent* event);
void QFinalState_virtualbase_customEvent(void* self, QEvent* event);
void QFinalState_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFinalState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QFinalState_protectedbase_sender(const void* self);
int QFinalState_protectedbase_senderSignalIndex(const void* self);
int QFinalState_protectedbase_receivers(const void* self, const char* signal);
bool QFinalState_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QFinalState_staticMetaObject();
void QFinalState_delete(QFinalState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
