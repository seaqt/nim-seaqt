#pragma once
#ifndef SEAQT_QTSTATEMACHINE_GEN_QKEYEVENTTRANSITION_H
#define SEAQT_QTSTATEMACHINE_GEN_QKEYEVENTTRANSITION_H

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
class QKeyEventTransition;
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
typedef struct QKeyEventTransition QKeyEventTransition;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQKeyEventTransition VirtualQKeyEventTransition;
typedef struct QKeyEventTransition_VTable{
	void (*destructor)(VirtualQKeyEventTransition* self);
	QMetaObject* (*metaObject)(const VirtualQKeyEventTransition* self);
	void* (*metacast)(VirtualQKeyEventTransition* self, const char* param1);
	int (*metacall)(VirtualQKeyEventTransition* self, int param1, int param2, void** param3);
	void (*onTransition)(VirtualQKeyEventTransition* self, QEvent* event);
	bool (*eventTest)(VirtualQKeyEventTransition* self, QEvent* event);
	bool (*event)(VirtualQKeyEventTransition* self, QEvent* e);
	bool (*eventFilter)(VirtualQKeyEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQKeyEventTransition* self, QTimerEvent* event);
	void (*childEvent)(VirtualQKeyEventTransition* self, QChildEvent* event);
	void (*customEvent)(VirtualQKeyEventTransition* self, QEvent* event);
	void (*connectNotify)(VirtualQKeyEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQKeyEventTransition* self, QMetaMethod* signal);
}QKeyEventTransition_VTable;

void* QKeyEventTransition_vdata(VirtualQKeyEventTransition* self);
VirtualQKeyEventTransition* vdata_QKeyEventTransition(void* vdata);

VirtualQKeyEventTransition* QKeyEventTransition_new(const QKeyEventTransition_VTable* vtbl, size_t vdata);
VirtualQKeyEventTransition* QKeyEventTransition_new_object_type_key(const QKeyEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type, int key);
VirtualQKeyEventTransition* QKeyEventTransition_new_sourceState(const QKeyEventTransition_VTable* vtbl, size_t vdata, QState* sourceState);
VirtualQKeyEventTransition* QKeyEventTransition_new_object_type_key_sourceState(const QKeyEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type, int key, QState* sourceState);

void QKeyEventTransition_virtbase(QKeyEventTransition* src, QEventTransition** outptr_QEventTransition);
QMetaObject* QKeyEventTransition_metaObject(const QKeyEventTransition* self);
void* QKeyEventTransition_metacast(QKeyEventTransition* self, const char* param1);
int QKeyEventTransition_metacall(QKeyEventTransition* self, int param1, int param2, void** param3);
struct seaqt_string QKeyEventTransition_tr_s(const char* s);
int QKeyEventTransition_key(const QKeyEventTransition* self);
void QKeyEventTransition_setKey(QKeyEventTransition* self, int key);
int QKeyEventTransition_modifierMask(const QKeyEventTransition* self);
void QKeyEventTransition_setModifierMask(QKeyEventTransition* self, int modifiers);
void QKeyEventTransition_onTransition(QKeyEventTransition* self, QEvent* event);
bool QKeyEventTransition_eventTest(QKeyEventTransition* self, QEvent* event);
struct seaqt_string QKeyEventTransition_tr_s_c(const char* s, const char* c);
struct seaqt_string QKeyEventTransition_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QKeyEventTransition_virtualbase_metaObject(const VirtualQKeyEventTransition* self);
void* QKeyEventTransition_virtualbase_metacast(VirtualQKeyEventTransition* self, const char* param1);
int QKeyEventTransition_virtualbase_metacall(VirtualQKeyEventTransition* self, int param1, int param2, void** param3);
void QKeyEventTransition_virtualbase_onTransition(VirtualQKeyEventTransition* self, QEvent* event);
bool QKeyEventTransition_virtualbase_eventTest(VirtualQKeyEventTransition* self, QEvent* event);
bool QKeyEventTransition_virtualbase_event(VirtualQKeyEventTransition* self, QEvent* e);
bool QKeyEventTransition_virtualbase_eventFilter(VirtualQKeyEventTransition* self, QObject* watched, QEvent* event);
void QKeyEventTransition_virtualbase_timerEvent(VirtualQKeyEventTransition* self, QTimerEvent* event);
void QKeyEventTransition_virtualbase_childEvent(VirtualQKeyEventTransition* self, QChildEvent* event);
void QKeyEventTransition_virtualbase_customEvent(VirtualQKeyEventTransition* self, QEvent* event);
void QKeyEventTransition_virtualbase_connectNotify(VirtualQKeyEventTransition* self, QMetaMethod* signal);
void QKeyEventTransition_virtualbase_disconnectNotify(VirtualQKeyEventTransition* self, QMetaMethod* signal);

QObject* QKeyEventTransition_protectedbase_sender(const VirtualQKeyEventTransition* self);
int QKeyEventTransition_protectedbase_senderSignalIndex(const VirtualQKeyEventTransition* self);
int QKeyEventTransition_protectedbase_receivers(const VirtualQKeyEventTransition* self, const char* signal);
bool QKeyEventTransition_protectedbase_isSignalConnected(const VirtualQKeyEventTransition* self, QMetaMethod* signal);

const QMetaObject* QKeyEventTransition_staticMetaObject();
void QKeyEventTransition_delete(QKeyEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
