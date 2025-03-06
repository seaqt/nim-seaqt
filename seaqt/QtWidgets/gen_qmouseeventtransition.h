#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMOUSEEVENTTRANSITION_H
#define SEAQT_QTWIDGETS_GEN_QMOUSEEVENTTRANSITION_H

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
class QMouseEventTransition;
class QObject;
class QPainterPath;
class QState;
class QTimerEvent;
#else
typedef struct QAbstractTransition QAbstractTransition;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QEventTransition QEventTransition;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEventTransition QMouseEventTransition;
typedef struct QObject QObject;
typedef struct QPainterPath QPainterPath;
typedef struct QState QState;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QMouseEventTransition_VTable {
	void (*destructor)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self);
	QMetaObject* (*metaObject)(struct QMouseEventTransition_VTable* vtbl, const QMouseEventTransition* self);
	void* (*metacast)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, const char* param1);
	int (*metacall)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, int param1, int param2, void** param3);
	void (*onTransition)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QEvent* event);
	bool (*eventTest)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QEvent* event);
	bool (*event)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QEvent* e);
	bool (*eventFilter)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QTimerEvent* event);
	void (*childEvent)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QChildEvent* event);
	void (*customEvent)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QEvent* event);
	void (*connectNotify)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMouseEventTransition_VTable* vtbl, QMouseEventTransition* self, QMetaMethod* signal);
};
QMouseEventTransition* QMouseEventTransition_new(struct QMouseEventTransition_VTable* vtbl);
QMouseEventTransition* QMouseEventTransition_new2(struct QMouseEventTransition_VTable* vtbl, QObject* object, int type, int button);
QMouseEventTransition* QMouseEventTransition_new3(struct QMouseEventTransition_VTable* vtbl, QState* sourceState);
QMouseEventTransition* QMouseEventTransition_new4(struct QMouseEventTransition_VTable* vtbl, QObject* object, int type, int button, QState* sourceState);
void QMouseEventTransition_virtbase(QMouseEventTransition* src, QEventTransition** outptr_QEventTransition);
QMetaObject* QMouseEventTransition_metaObject(const QMouseEventTransition* self);
void* QMouseEventTransition_metacast(QMouseEventTransition* self, const char* param1);
int QMouseEventTransition_metacall(QMouseEventTransition* self, int param1, int param2, void** param3);
struct miqt_string QMouseEventTransition_tr(const char* s);
struct miqt_string QMouseEventTransition_trUtf8(const char* s);
int QMouseEventTransition_button(const QMouseEventTransition* self);
void QMouseEventTransition_setButton(QMouseEventTransition* self, int button);
int QMouseEventTransition_modifierMask(const QMouseEventTransition* self);
void QMouseEventTransition_setModifierMask(QMouseEventTransition* self, int modifiers);
QPainterPath* QMouseEventTransition_hitTestPath(const QMouseEventTransition* self);
void QMouseEventTransition_setHitTestPath(QMouseEventTransition* self, QPainterPath* path);
void QMouseEventTransition_onTransition(QMouseEventTransition* self, QEvent* event);
bool QMouseEventTransition_eventTest(QMouseEventTransition* self, QEvent* event);
struct miqt_string QMouseEventTransition_tr2(const char* s, const char* c);
struct miqt_string QMouseEventTransition_tr3(const char* s, const char* c, int n);
struct miqt_string QMouseEventTransition_trUtf82(const char* s, const char* c);
struct miqt_string QMouseEventTransition_trUtf83(const char* s, const char* c, int n);
QMetaObject* QMouseEventTransition_virtualbase_metaObject(const void* self);
void* QMouseEventTransition_virtualbase_metacast(void* self, const char* param1);
int QMouseEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QMouseEventTransition_virtualbase_onTransition(void* self, QEvent* event);
bool QMouseEventTransition_virtualbase_eventTest(void* self, QEvent* event);
bool QMouseEventTransition_virtualbase_event(void* self, QEvent* e);
bool QMouseEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMouseEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMouseEventTransition_virtualbase_childEvent(void* self, QChildEvent* event);
void QMouseEventTransition_virtualbase_customEvent(void* self, QEvent* event);
void QMouseEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMouseEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QMouseEventTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QMouseEventTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QMouseEventTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QMouseEventTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QMouseEventTransition_staticMetaObject();
void QMouseEventTransition_delete(QMouseEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
