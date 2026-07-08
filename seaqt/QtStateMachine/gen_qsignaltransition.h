#pragma once
#ifndef SEAQT_QTSTATEMACHINE_GEN_QSIGNALTRANSITION_H
#define SEAQT_QTSTATEMACHINE_GEN_QSIGNALTRANSITION_H

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

typedef struct VirtualQSignalTransition VirtualQSignalTransition;
typedef struct QSignalTransition_VTable{
	void (*destructor)(VirtualQSignalTransition* self);
	QMetaObject* (*metaObject)(const VirtualQSignalTransition* self);
	void* (*metacast)(VirtualQSignalTransition* self, const char* param1);
	int (*metacall)(VirtualQSignalTransition* self, int param1, int param2, void** param3);
	bool (*eventTest)(VirtualQSignalTransition* self, QEvent* event);
	void (*onTransition)(VirtualQSignalTransition* self, QEvent* event);
	bool (*event)(VirtualQSignalTransition* self, QEvent* e);
	bool (*eventFilter)(VirtualQSignalTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSignalTransition* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSignalTransition* self, QChildEvent* event);
	void (*customEvent)(VirtualQSignalTransition* self, QEvent* event);
	void (*connectNotify)(VirtualQSignalTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSignalTransition* self, QMetaMethod* signal);
}QSignalTransition_VTable;

void* QSignalTransition_vdata(VirtualQSignalTransition* self);
VirtualQSignalTransition* vdata_QSignalTransition(void* vdata);

VirtualQSignalTransition* QSignalTransition_new(const QSignalTransition_VTable* vtbl, size_t vdata);
VirtualQSignalTransition* QSignalTransition_new2(const QSignalTransition_VTable* vtbl, size_t vdata, QObject* sender, const char* signal);
VirtualQSignalTransition* QSignalTransition_new3(const QSignalTransition_VTable* vtbl, size_t vdata, QState* sourceState);
VirtualQSignalTransition* QSignalTransition_new4(const QSignalTransition_VTable* vtbl, size_t vdata, QObject* sender, const char* signal, QState* sourceState);

void QSignalTransition_virtbase(QSignalTransition* src, QAbstractTransition** outptr_QAbstractTransition);
QMetaObject* QSignalTransition_metaObject(const QSignalTransition* self);
void* QSignalTransition_metacast(QSignalTransition* self, const char* param1);
int QSignalTransition_metacall(QSignalTransition* self, int param1, int param2, void** param3);
struct seaqt_string QSignalTransition_tr(const char* s);
QObject* QSignalTransition_senderObject(const QSignalTransition* self);
void QSignalTransition_setSenderObject(QSignalTransition* self, QObject* sender);
struct seaqt_string QSignalTransition_signal(const QSignalTransition* self);
void QSignalTransition_setSignal(QSignalTransition* self, struct seaqt_string signal);
bool QSignalTransition_eventTest(QSignalTransition* self, QEvent* event);
void QSignalTransition_onTransition(QSignalTransition* self, QEvent* event);
bool QSignalTransition_event(QSignalTransition* self, QEvent* e);
struct seaqt_string QSignalTransition_tr2(const char* s, const char* c);
struct seaqt_string QSignalTransition_tr3(const char* s, const char* c, int n);

QMetaObject* QSignalTransition_virtualbase_metaObject(const VirtualQSignalTransition* self);
void* QSignalTransition_virtualbase_metacast(VirtualQSignalTransition* self, const char* param1);
int QSignalTransition_virtualbase_metacall(VirtualQSignalTransition* self, int param1, int param2, void** param3);
bool QSignalTransition_virtualbase_eventTest(VirtualQSignalTransition* self, QEvent* event);
void QSignalTransition_virtualbase_onTransition(VirtualQSignalTransition* self, QEvent* event);
bool QSignalTransition_virtualbase_event(VirtualQSignalTransition* self, QEvent* e);
bool QSignalTransition_virtualbase_eventFilter(VirtualQSignalTransition* self, QObject* watched, QEvent* event);
void QSignalTransition_virtualbase_timerEvent(VirtualQSignalTransition* self, QTimerEvent* event);
void QSignalTransition_virtualbase_childEvent(VirtualQSignalTransition* self, QChildEvent* event);
void QSignalTransition_virtualbase_customEvent(VirtualQSignalTransition* self, QEvent* event);
void QSignalTransition_virtualbase_connectNotify(VirtualQSignalTransition* self, QMetaMethod* signal);
void QSignalTransition_virtualbase_disconnectNotify(VirtualQSignalTransition* self, QMetaMethod* signal);

QObject* QSignalTransition_protectedbase_sender(const VirtualQSignalTransition* self);
int QSignalTransition_protectedbase_senderSignalIndex(const VirtualQSignalTransition* self);
int QSignalTransition_protectedbase_receivers(const VirtualQSignalTransition* self, const char* signal);
bool QSignalTransition_protectedbase_isSignalConnected(const VirtualQSignalTransition* self, QMetaMethod* signal);

const QMetaObject* QSignalTransition_staticMetaObject();
void QSignalTransition_delete(QSignalTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
