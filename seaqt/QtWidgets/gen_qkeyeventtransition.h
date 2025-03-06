#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QKEYEVENTTRANSITION_H
#define SEAQT_QTWIDGETS_GEN_QKEYEVENTTRANSITION_H

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

struct QKeyEventTransition_VTable {
	void (*destructor)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self);
	QMetaObject* (*metaObject)(struct QKeyEventTransition_VTable* vtbl, const QKeyEventTransition* self);
	void* (*metacast)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, const char* param1);
	int (*metacall)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, int param1, int param2, void** param3);
	void (*onTransition)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QEvent* event);
	bool (*eventTest)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QEvent* event);
	bool (*event)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QEvent* e);
	bool (*eventFilter)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QTimerEvent* event);
	void (*childEvent)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QChildEvent* event);
	void (*customEvent)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QEvent* event);
	void (*connectNotify)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QKeyEventTransition_VTable* vtbl, QKeyEventTransition* self, QMetaMethod* signal);
};
QKeyEventTransition* QKeyEventTransition_new(struct QKeyEventTransition_VTable* vtbl);
QKeyEventTransition* QKeyEventTransition_new2(struct QKeyEventTransition_VTable* vtbl, QObject* object, int type, int key);
QKeyEventTransition* QKeyEventTransition_new3(struct QKeyEventTransition_VTable* vtbl, QState* sourceState);
QKeyEventTransition* QKeyEventTransition_new4(struct QKeyEventTransition_VTable* vtbl, QObject* object, int type, int key, QState* sourceState);
void QKeyEventTransition_virtbase(QKeyEventTransition* src, QEventTransition** outptr_QEventTransition);
QMetaObject* QKeyEventTransition_metaObject(const QKeyEventTransition* self);
void* QKeyEventTransition_metacast(QKeyEventTransition* self, const char* param1);
int QKeyEventTransition_metacall(QKeyEventTransition* self, int param1, int param2, void** param3);
struct miqt_string QKeyEventTransition_tr(const char* s);
struct miqt_string QKeyEventTransition_trUtf8(const char* s);
int QKeyEventTransition_key(const QKeyEventTransition* self);
void QKeyEventTransition_setKey(QKeyEventTransition* self, int key);
int QKeyEventTransition_modifierMask(const QKeyEventTransition* self);
void QKeyEventTransition_setModifierMask(QKeyEventTransition* self, int modifiers);
void QKeyEventTransition_onTransition(QKeyEventTransition* self, QEvent* event);
bool QKeyEventTransition_eventTest(QKeyEventTransition* self, QEvent* event);
struct miqt_string QKeyEventTransition_tr2(const char* s, const char* c);
struct miqt_string QKeyEventTransition_tr3(const char* s, const char* c, int n);
struct miqt_string QKeyEventTransition_trUtf82(const char* s, const char* c);
struct miqt_string QKeyEventTransition_trUtf83(const char* s, const char* c, int n);
QMetaObject* QKeyEventTransition_virtualbase_metaObject(const void* self);
void* QKeyEventTransition_virtualbase_metacast(void* self, const char* param1);
int QKeyEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QKeyEventTransition_virtualbase_onTransition(void* self, QEvent* event);
bool QKeyEventTransition_virtualbase_eventTest(void* self, QEvent* event);
bool QKeyEventTransition_virtualbase_event(void* self, QEvent* e);
bool QKeyEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QKeyEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QKeyEventTransition_virtualbase_childEvent(void* self, QChildEvent* event);
void QKeyEventTransition_virtualbase_customEvent(void* self, QEvent* event);
void QKeyEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QKeyEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QKeyEventTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QKeyEventTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QKeyEventTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QKeyEventTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QKeyEventTransition_staticMetaObject();
void QKeyEventTransition_delete(QKeyEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
