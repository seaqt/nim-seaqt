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

struct QHistoryState_VTable {
	void (*destructor)(struct QHistoryState_VTable* vtbl, QHistoryState* self);
	QMetaObject* (*metaObject)(struct QHistoryState_VTable* vtbl, const QHistoryState* self);
	void* (*metacast)(struct QHistoryState_VTable* vtbl, QHistoryState* self, const char* param1);
	int (*metacall)(struct QHistoryState_VTable* vtbl, QHistoryState* self, int param1, int param2, void** param3);
	void (*onEntry)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QEvent* event);
	void (*onExit)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QEvent* event);
	bool (*event)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QEvent* e);
	bool (*eventFilter)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QTimerEvent* event);
	void (*childEvent)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QChildEvent* event);
	void (*customEvent)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QEvent* event);
	void (*connectNotify)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QHistoryState_VTable* vtbl, QHistoryState* self, QMetaMethod* signal);
};
QHistoryState* QHistoryState_new(struct QHistoryState_VTable* vtbl);
QHistoryState* QHistoryState_new2(struct QHistoryState_VTable* vtbl, int type);
QHistoryState* QHistoryState_new3(struct QHistoryState_VTable* vtbl, QState* parent);
QHistoryState* QHistoryState_new4(struct QHistoryState_VTable* vtbl, int type, QState* parent);
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
QMetaObject* QHistoryState_virtualbase_metaObject(const void* self);
void* QHistoryState_virtualbase_metacast(void* self, const char* param1);
int QHistoryState_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QHistoryState_virtualbase_onEntry(void* self, QEvent* event);
void QHistoryState_virtualbase_onExit(void* self, QEvent* event);
bool QHistoryState_virtualbase_event(void* self, QEvent* e);
bool QHistoryState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QHistoryState_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QHistoryState_virtualbase_childEvent(void* self, QChildEvent* event);
void QHistoryState_virtualbase_customEvent(void* self, QEvent* event);
void QHistoryState_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QHistoryState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QHistoryState_protectedbase_sender(const void* self);
int QHistoryState_protectedbase_senderSignalIndex(const void* self);
int QHistoryState_protectedbase_receivers(const void* self, const char* signal);
bool QHistoryState_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QHistoryState_staticMetaObject();
void QHistoryState_delete(QHistoryState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
