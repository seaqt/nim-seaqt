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

typedef struct VirtualQFinalState VirtualQFinalState;
typedef struct QFinalState_VTable{
	void (*destructor)(VirtualQFinalState* self);
	QMetaObject* (*metaObject)(const VirtualQFinalState* self);
	void* (*metacast)(VirtualQFinalState* self, const char* param1);
	int (*metacall)(VirtualQFinalState* self, int param1, int param2, void** param3);
	void (*onEntry)(VirtualQFinalState* self, QEvent* event);
	void (*onExit)(VirtualQFinalState* self, QEvent* event);
	bool (*event)(VirtualQFinalState* self, QEvent* e);
	bool (*eventFilter)(VirtualQFinalState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFinalState* self, QTimerEvent* event);
	void (*childEvent)(VirtualQFinalState* self, QChildEvent* event);
	void (*customEvent)(VirtualQFinalState* self, QEvent* event);
	void (*connectNotify)(VirtualQFinalState* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFinalState* self, QMetaMethod* signal);
}QFinalState_VTable;

const QFinalState_VTable* QFinalState_vtbl(const VirtualQFinalState* self);
void* QFinalState_vdata(const VirtualQFinalState* self);
void QFinalState_setVdata(VirtualQFinalState* self, void* vdata);

VirtualQFinalState* QFinalState_new(const QFinalState_VTable* vtbl, void* vdata);
VirtualQFinalState* QFinalState_new2(const QFinalState_VTable* vtbl, void* vdata, QState* parent);

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

QMetaObject* QFinalState_virtualbase_metaObject(const VirtualQFinalState* self);
void* QFinalState_virtualbase_metacast(VirtualQFinalState* self, const char* param1);
int QFinalState_virtualbase_metacall(VirtualQFinalState* self, int param1, int param2, void** param3);
void QFinalState_virtualbase_onEntry(VirtualQFinalState* self, QEvent* event);
void QFinalState_virtualbase_onExit(VirtualQFinalState* self, QEvent* event);
bool QFinalState_virtualbase_event(VirtualQFinalState* self, QEvent* e);
bool QFinalState_virtualbase_eventFilter(VirtualQFinalState* self, QObject* watched, QEvent* event);
void QFinalState_virtualbase_timerEvent(VirtualQFinalState* self, QTimerEvent* event);
void QFinalState_virtualbase_childEvent(VirtualQFinalState* self, QChildEvent* event);
void QFinalState_virtualbase_customEvent(VirtualQFinalState* self, QEvent* event);
void QFinalState_virtualbase_connectNotify(VirtualQFinalState* self, QMetaMethod* signal);
void QFinalState_virtualbase_disconnectNotify(VirtualQFinalState* self, QMetaMethod* signal);

QObject* QFinalState_protectedbase_sender(const VirtualQFinalState* self);
int QFinalState_protectedbase_senderSignalIndex(const VirtualQFinalState* self);
int QFinalState_protectedbase_receivers(const VirtualQFinalState* self, const char* signal);
bool QFinalState_protectedbase_isSignalConnected(const VirtualQFinalState* self, QMetaMethod* signal);

const QMetaObject* QFinalState_staticMetaObject();
void QFinalState_delete(QFinalState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
