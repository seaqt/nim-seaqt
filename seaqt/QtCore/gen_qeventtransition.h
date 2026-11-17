#pragma once
#ifndef SEAQT_QTCORE_GEN_QEVENTTRANSITION_H
#define SEAQT_QTCORE_GEN_QEVENTTRANSITION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQEventTransition VirtualQEventTransition;
typedef struct QEventTransition_VTable{
	void (*destructor)(VirtualQEventTransition* self);
	QMetaObject* (*metaObject)(const VirtualQEventTransition* self);
	void* (*metacast)(VirtualQEventTransition* self, const char* param1);
	int (*metacall)(VirtualQEventTransition* self, int param1, int param2, void** param3);
	bool (*eventTest)(VirtualQEventTransition* self, QEvent* event);
	void (*onTransition)(VirtualQEventTransition* self, QEvent* event);
	bool (*event)(VirtualQEventTransition* self, QEvent* e);
	bool (*eventFilter)(VirtualQEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQEventTransition* self, QTimerEvent* event);
	void (*childEvent)(VirtualQEventTransition* self, QChildEvent* event);
	void (*customEvent)(VirtualQEventTransition* self, QEvent* event);
	void (*connectNotify)(VirtualQEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQEventTransition* self, QMetaMethod* signal);
}QEventTransition_VTable;

void* QEventTransition_vdata(VirtualQEventTransition* self);
VirtualQEventTransition* vdata_QEventTransition(void* vdata);

VirtualQEventTransition* QEventTransition_new(const QEventTransition_VTable* vtbl, size_t vdata);
VirtualQEventTransition* QEventTransition_new_object_type(const QEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type);
VirtualQEventTransition* QEventTransition_new_sourceState(const QEventTransition_VTable* vtbl, size_t vdata, QState* sourceState);
VirtualQEventTransition* QEventTransition_new_object_type_sourceState(const QEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type, QState* sourceState);

void QEventTransition_virtbase(QEventTransition* src, QAbstractTransition** outptr_QAbstractTransition);
QMetaObject* QEventTransition_metaObject(const QEventTransition* self);
void* QEventTransition_metacast(QEventTransition* self, const char* param1);
int QEventTransition_metacall(QEventTransition* self, int param1, int param2, void** param3);
struct seaqt_string QEventTransition_tr_s(const char* s);
struct seaqt_string QEventTransition_trUtf8_s(const char* s);
QObject* QEventTransition_eventSource(const QEventTransition* self);
void QEventTransition_setEventSource(QEventTransition* self, QObject* object);
int QEventTransition_eventType(const QEventTransition* self);
void QEventTransition_setEventType(QEventTransition* self, int type);
bool QEventTransition_eventTest(QEventTransition* self, QEvent* event);
void QEventTransition_onTransition(QEventTransition* self, QEvent* event);
bool QEventTransition_event(QEventTransition* self, QEvent* e);
struct seaqt_string QEventTransition_tr_s_c(const char* s, const char* c);
struct seaqt_string QEventTransition_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QEventTransition_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QEventTransition_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QEventTransition_virtualbase_metaObject(const VirtualQEventTransition* self);
void* QEventTransition_virtualbase_metacast(VirtualQEventTransition* self, const char* param1);
int QEventTransition_virtualbase_metacall(VirtualQEventTransition* self, int param1, int param2, void** param3);
bool QEventTransition_virtualbase_eventTest(VirtualQEventTransition* self, QEvent* event);
void QEventTransition_virtualbase_onTransition(VirtualQEventTransition* self, QEvent* event);
bool QEventTransition_virtualbase_event(VirtualQEventTransition* self, QEvent* e);
bool QEventTransition_virtualbase_eventFilter(VirtualQEventTransition* self, QObject* watched, QEvent* event);
void QEventTransition_virtualbase_timerEvent(VirtualQEventTransition* self, QTimerEvent* event);
void QEventTransition_virtualbase_childEvent(VirtualQEventTransition* self, QChildEvent* event);
void QEventTransition_virtualbase_customEvent(VirtualQEventTransition* self, QEvent* event);
void QEventTransition_virtualbase_connectNotify(VirtualQEventTransition* self, QMetaMethod* signal);
void QEventTransition_virtualbase_disconnectNotify(VirtualQEventTransition* self, QMetaMethod* signal);

QObject* QEventTransition_protectedbase_sender(const VirtualQEventTransition* self);
int QEventTransition_protectedbase_senderSignalIndex(const VirtualQEventTransition* self);
int QEventTransition_protectedbase_receivers(const VirtualQEventTransition* self, const char* signal);
bool QEventTransition_protectedbase_isSignalConnected(const VirtualQEventTransition* self, QMetaMethod* signal);

const QMetaObject* QEventTransition_staticMetaObject();
void QEventTransition_delete(QEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
