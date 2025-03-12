#pragma once
#ifndef SEAQT_QTCORE_GEN_QHISTORYSTATE_H
#define SEAQT_QTCORE_GEN_QHISTORYSTATE_H

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
class QHistoryState;
class QMetaMethod;
class QMetaObject;
class QObject;
class QState;
class QTimerEvent;
#else
typedef struct QAbstractState QAbstractState;
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHistoryState QHistoryState;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQHistoryState VirtualQHistoryState;
typedef struct QHistoryState_VTable{
	void (*destructor)(VirtualQHistoryState* self);
	QMetaObject* (*metaObject)(const VirtualQHistoryState* self);
	void* (*metacast)(VirtualQHistoryState* self, const char* param1);
	int (*metacall)(VirtualQHistoryState* self, int param1, int param2, void** param3);
	void (*onEntry)(VirtualQHistoryState* self, QEvent* event);
	void (*onExit)(VirtualQHistoryState* self, QEvent* event);
	bool (*event)(VirtualQHistoryState* self, QEvent* e);
	bool (*eventFilter)(VirtualQHistoryState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQHistoryState* self, QTimerEvent* event);
	void (*childEvent)(VirtualQHistoryState* self, QChildEvent* event);
	void (*customEvent)(VirtualQHistoryState* self, QEvent* event);
	void (*connectNotify)(VirtualQHistoryState* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQHistoryState* self, QMetaMethod* signal);
}QHistoryState_VTable;

const QHistoryState_VTable* QHistoryState_vtbl(const VirtualQHistoryState* self);
void* QHistoryState_vdata(const VirtualQHistoryState* self);
void QHistoryState_setVdata(VirtualQHistoryState* self, void* vdata);

VirtualQHistoryState* QHistoryState_new(const QHistoryState_VTable* vtbl, void* vdata);
VirtualQHistoryState* QHistoryState_new2(const QHistoryState_VTable* vtbl, void* vdata, int type);
VirtualQHistoryState* QHistoryState_new3(const QHistoryState_VTable* vtbl, void* vdata, QState* parent);
VirtualQHistoryState* QHistoryState_new4(const QHistoryState_VTable* vtbl, void* vdata, int type, QState* parent);

void QHistoryState_virtbase(QHistoryState* src, QAbstractState** outptr_QAbstractState);
QMetaObject* QHistoryState_metaObject(const QHistoryState* self);
void* QHistoryState_metacast(QHistoryState* self, const char* param1);
int QHistoryState_metacall(QHistoryState* self, int param1, int param2, void** param3);
struct miqt_string QHistoryState_tr(const char* s);
struct miqt_string QHistoryState_trUtf8(const char* s);
QAbstractTransition* QHistoryState_defaultTransition(const QHistoryState* self);
void QHistoryState_setDefaultTransition(QHistoryState* self, QAbstractTransition* transition);
QAbstractState* QHistoryState_defaultState(const QHistoryState* self);
void QHistoryState_setDefaultState(QHistoryState* self, QAbstractState* state);
int QHistoryState_historyType(const QHistoryState* self);
void QHistoryState_setHistoryType(QHistoryState* self, int type);
void QHistoryState_onEntry(QHistoryState* self, QEvent* event);
void QHistoryState_onExit(QHistoryState* self, QEvent* event);
bool QHistoryState_event(QHistoryState* self, QEvent* e);
struct miqt_string QHistoryState_tr2(const char* s, const char* c);
struct miqt_string QHistoryState_tr3(const char* s, const char* c, int n);
struct miqt_string QHistoryState_trUtf82(const char* s, const char* c);
struct miqt_string QHistoryState_trUtf83(const char* s, const char* c, int n);

QMetaObject* QHistoryState_virtualbase_metaObject(const VirtualQHistoryState* self);
void* QHistoryState_virtualbase_metacast(VirtualQHistoryState* self, const char* param1);
int QHistoryState_virtualbase_metacall(VirtualQHistoryState* self, int param1, int param2, void** param3);
void QHistoryState_virtualbase_onEntry(VirtualQHistoryState* self, QEvent* event);
void QHistoryState_virtualbase_onExit(VirtualQHistoryState* self, QEvent* event);
bool QHistoryState_virtualbase_event(VirtualQHistoryState* self, QEvent* e);
bool QHistoryState_virtualbase_eventFilter(VirtualQHistoryState* self, QObject* watched, QEvent* event);
void QHistoryState_virtualbase_timerEvent(VirtualQHistoryState* self, QTimerEvent* event);
void QHistoryState_virtualbase_childEvent(VirtualQHistoryState* self, QChildEvent* event);
void QHistoryState_virtualbase_customEvent(VirtualQHistoryState* self, QEvent* event);
void QHistoryState_virtualbase_connectNotify(VirtualQHistoryState* self, QMetaMethod* signal);
void QHistoryState_virtualbase_disconnectNotify(VirtualQHistoryState* self, QMetaMethod* signal);

QObject* QHistoryState_protectedbase_sender(const VirtualQHistoryState* self);
int QHistoryState_protectedbase_senderSignalIndex(const VirtualQHistoryState* self);
int QHistoryState_protectedbase_receivers(const VirtualQHistoryState* self, const char* signal);
bool QHistoryState_protectedbase_isSignalConnected(const VirtualQHistoryState* self, QMetaMethod* signal);

const QMetaObject* QHistoryState_staticMetaObject();
void QHistoryState_delete(QHistoryState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
