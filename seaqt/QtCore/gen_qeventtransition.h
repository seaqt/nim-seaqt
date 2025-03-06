#pragma once
#ifndef SEAQT_QTCORE_GEN_QEVENTTRANSITION_H
#define SEAQT_QTCORE_GEN_QEVENTTRANSITION_H

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
class QEventTransition;
class QMetaMethod;
class QMetaObject;
class QObject;
class QState;
class QTimerEvent;
#else
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QEventTransition QEventTransition;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QEventTransition_VTable {
	void (*destructor)(struct QEventTransition_VTable* vtbl, QEventTransition* self);
	QMetaObject* (*metaObject)(struct QEventTransition_VTable* vtbl, const QEventTransition* self);
	void* (*metacast)(struct QEventTransition_VTable* vtbl, QEventTransition* self, const char* param1);
	int (*metacall)(struct QEventTransition_VTable* vtbl, QEventTransition* self, int param1, int param2, void** param3);
	bool (*eventTest)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QEvent* event);
	void (*onTransition)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QEvent* event);
	bool (*event)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QEvent* e);
	bool (*eventFilter)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QTimerEvent* event);
	void (*childEvent)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QChildEvent* event);
	void (*customEvent)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QEvent* event);
	void (*connectNotify)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QEventTransition_VTable* vtbl, QEventTransition* self, QMetaMethod* signal);
};
QEventTransition* QEventTransition_new(struct QEventTransition_VTable* vtbl);
QEventTransition* QEventTransition_new2(struct QEventTransition_VTable* vtbl, QObject* object, int type);
QEventTransition* QEventTransition_new3(struct QEventTransition_VTable* vtbl, QState* sourceState);
QEventTransition* QEventTransition_new4(struct QEventTransition_VTable* vtbl, QObject* object, int type, QState* sourceState);
void QEventTransition_virtbase(QEventTransition* src, QAbstractTransition** outptr_QAbstractTransition);
QMetaObject* QEventTransition_metaObject(const QEventTransition* self);
void* QEventTransition_metacast(QEventTransition* self, const char* param1);
int QEventTransition_metacall(QEventTransition* self, int param1, int param2, void** param3);
struct miqt_string QEventTransition_tr(const char* s);
struct miqt_string QEventTransition_trUtf8(const char* s);
QObject* QEventTransition_eventSource(const QEventTransition* self);
void QEventTransition_setEventSource(QEventTransition* self, QObject* object);
int QEventTransition_eventType(const QEventTransition* self);
void QEventTransition_setEventType(QEventTransition* self, int type);
bool QEventTransition_eventTest(QEventTransition* self, QEvent* event);
void QEventTransition_onTransition(QEventTransition* self, QEvent* event);
bool QEventTransition_event(QEventTransition* self, QEvent* e);
struct miqt_string QEventTransition_tr2(const char* s, const char* c);
struct miqt_string QEventTransition_tr3(const char* s, const char* c, int n);
struct miqt_string QEventTransition_trUtf82(const char* s, const char* c);
struct miqt_string QEventTransition_trUtf83(const char* s, const char* c, int n);
QMetaObject* QEventTransition_virtualbase_metaObject(const void* self);
void* QEventTransition_virtualbase_metacast(void* self, const char* param1);
int QEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QEventTransition_virtualbase_eventTest(void* self, QEvent* event);
void QEventTransition_virtualbase_onTransition(void* self, QEvent* event);
bool QEventTransition_virtualbase_event(void* self, QEvent* e);
bool QEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QEventTransition_virtualbase_childEvent(void* self, QChildEvent* event);
void QEventTransition_virtualbase_customEvent(void* self, QEvent* event);
void QEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QEventTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QEventTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QEventTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QEventTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QEventTransition_staticMetaObject();
void QEventTransition_delete(QEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
