#pragma once
#ifndef SEAQT_QTCORE_GEN_QSIGNALTRANSITION_H
#define SEAQT_QTCORE_GEN_QSIGNALTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractTransition;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSignalTransition;
class QState;
class QTimerEvent;
#else
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSignalTransition QSignalTransition;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSignalTransition_VTable {
	void (*destructor)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self);
	QMetaObject* (*metaObject)(struct QSignalTransition_VTable* vtbl, const QSignalTransition* self);
	void* (*metacast)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, const char* param1);
	int (*metacall)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, int param1, int param2, void** param3);
	bool (*eventTest)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QEvent* event);
	void (*onTransition)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QEvent* event);
	bool (*event)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QEvent* e);
	bool (*eventFilter)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QTimerEvent* event);
	void (*childEvent)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QChildEvent* event);
	void (*customEvent)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QEvent* event);
	void (*connectNotify)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSignalTransition_VTable* vtbl, QSignalTransition* self, QMetaMethod* signal);
};
QSignalTransition* QSignalTransition_new(struct QSignalTransition_VTable* vtbl);
QSignalTransition* QSignalTransition_new2(struct QSignalTransition_VTable* vtbl, QObject* sender, const char* signal);
QSignalTransition* QSignalTransition_new3(struct QSignalTransition_VTable* vtbl, QState* sourceState);
QSignalTransition* QSignalTransition_new4(struct QSignalTransition_VTable* vtbl, QObject* sender, const char* signal, QState* sourceState);
void QSignalTransition_virtbase(QSignalTransition* src, QAbstractTransition** outptr_QAbstractTransition);
QMetaObject* QSignalTransition_metaObject(const QSignalTransition* self);
void* QSignalTransition_metacast(QSignalTransition* self, const char* param1);
int QSignalTransition_metacall(QSignalTransition* self, int param1, int param2, void** param3);
struct miqt_string QSignalTransition_tr(const char* s);
struct miqt_string QSignalTransition_trUtf8(const char* s);
QObject* QSignalTransition_senderObject(const QSignalTransition* self);
void QSignalTransition_setSenderObject(QSignalTransition* self, QObject* sender);
struct miqt_string QSignalTransition_signal(const QSignalTransition* self);
void QSignalTransition_setSignal(QSignalTransition* self, struct miqt_string signal);
bool QSignalTransition_eventTest(QSignalTransition* self, QEvent* event);
void QSignalTransition_onTransition(QSignalTransition* self, QEvent* event);
bool QSignalTransition_event(QSignalTransition* self, QEvent* e);
struct miqt_string QSignalTransition_tr2(const char* s, const char* c);
struct miqt_string QSignalTransition_tr3(const char* s, const char* c, int n);
struct miqt_string QSignalTransition_trUtf82(const char* s, const char* c);
struct miqt_string QSignalTransition_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSignalTransition_virtualbase_metaObject(const void* self);
void* QSignalTransition_virtualbase_metacast(void* self, const char* param1);
int QSignalTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSignalTransition_virtualbase_eventTest(void* self, QEvent* event);
void QSignalTransition_virtualbase_onTransition(void* self, QEvent* event);
bool QSignalTransition_virtualbase_event(void* self, QEvent* e);
bool QSignalTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSignalTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSignalTransition_virtualbase_childEvent(void* self, QChildEvent* event);
void QSignalTransition_virtualbase_customEvent(void* self, QEvent* event);
void QSignalTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSignalTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSignalTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSignalTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSignalTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSignalTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSignalTransition_staticMetaObject();
void QSignalTransition_delete(QSignalTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
