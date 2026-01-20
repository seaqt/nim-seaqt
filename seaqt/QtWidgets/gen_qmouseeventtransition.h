#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QMOUSEEVENTTRANSITION_H
#define SEAQT_QTWIDGETS_GEN_QMOUSEEVENTTRANSITION_H

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

typedef struct VirtualQMouseEventTransition VirtualQMouseEventTransition;
typedef struct QMouseEventTransition_VTable{
	void (*destructor)(VirtualQMouseEventTransition* self);
	QMetaObject* (*metaObject)(const VirtualQMouseEventTransition* self);
	void* (*metacast)(VirtualQMouseEventTransition* self, const char* param1);
	int (*metacall)(VirtualQMouseEventTransition* self, int param1, int param2, void** param3);
	void (*onTransition)(VirtualQMouseEventTransition* self, QEvent* event);
	bool (*eventTest)(VirtualQMouseEventTransition* self, QEvent* event);
	bool (*event)(VirtualQMouseEventTransition* self, QEvent* e);
	bool (*eventFilter)(VirtualQMouseEventTransition* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQMouseEventTransition* self, QTimerEvent* event);
	void (*childEvent)(VirtualQMouseEventTransition* self, QChildEvent* event);
	void (*customEvent)(VirtualQMouseEventTransition* self, QEvent* event);
	void (*connectNotify)(VirtualQMouseEventTransition* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQMouseEventTransition* self, QMetaMethod* signal);
}QMouseEventTransition_VTable;

void* QMouseEventTransition_vdata(VirtualQMouseEventTransition* self);
VirtualQMouseEventTransition* vdata_QMouseEventTransition(void* vdata);

VirtualQMouseEventTransition* QMouseEventTransition_new(const QMouseEventTransition_VTable* vtbl, size_t vdata);
VirtualQMouseEventTransition* QMouseEventTransition_new_object_type_button(const QMouseEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type, int button);
VirtualQMouseEventTransition* QMouseEventTransition_new_sourceState(const QMouseEventTransition_VTable* vtbl, size_t vdata, QState* sourceState);
VirtualQMouseEventTransition* QMouseEventTransition_new_object_type_button_sourceState(const QMouseEventTransition_VTable* vtbl, size_t vdata, QObject* object, int type, int button, QState* sourceState);

void QMouseEventTransition_virtbase(QMouseEventTransition* src, QEventTransition** outptr_QEventTransition);
QMetaObject* QMouseEventTransition_metaObject(const QMouseEventTransition* self);
void* QMouseEventTransition_metacast(QMouseEventTransition* self, const char* param1);
int QMouseEventTransition_metacall(QMouseEventTransition* self, int param1, int param2, void** param3);
struct seaqt_string QMouseEventTransition_tr_s(const char* s);
struct seaqt_string QMouseEventTransition_trUtf8_s(const char* s);
int QMouseEventTransition_button(const QMouseEventTransition* self);
void QMouseEventTransition_setButton(QMouseEventTransition* self, int button);
int QMouseEventTransition_modifierMask(const QMouseEventTransition* self);
void QMouseEventTransition_setModifierMask(QMouseEventTransition* self, int modifiers);
QPainterPath* QMouseEventTransition_hitTestPath(const QMouseEventTransition* self);
void QMouseEventTransition_setHitTestPath(QMouseEventTransition* self, QPainterPath* path);
void QMouseEventTransition_onTransition(QMouseEventTransition* self, QEvent* event);
bool QMouseEventTransition_eventTest(QMouseEventTransition* self, QEvent* event);
struct seaqt_string QMouseEventTransition_tr_s_c(const char* s, const char* c);
struct seaqt_string QMouseEventTransition_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QMouseEventTransition_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QMouseEventTransition_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QMouseEventTransition_virtualbase_metaObject(const VirtualQMouseEventTransition* self);
void* QMouseEventTransition_virtualbase_metacast(VirtualQMouseEventTransition* self, const char* param1);
int QMouseEventTransition_virtualbase_metacall(VirtualQMouseEventTransition* self, int param1, int param2, void** param3);
void QMouseEventTransition_virtualbase_onTransition(VirtualQMouseEventTransition* self, QEvent* event);
bool QMouseEventTransition_virtualbase_eventTest(VirtualQMouseEventTransition* self, QEvent* event);
bool QMouseEventTransition_virtualbase_event(VirtualQMouseEventTransition* self, QEvent* e);
bool QMouseEventTransition_virtualbase_eventFilter(VirtualQMouseEventTransition* self, QObject* watched, QEvent* event);
void QMouseEventTransition_virtualbase_timerEvent(VirtualQMouseEventTransition* self, QTimerEvent* event);
void QMouseEventTransition_virtualbase_childEvent(VirtualQMouseEventTransition* self, QChildEvent* event);
void QMouseEventTransition_virtualbase_customEvent(VirtualQMouseEventTransition* self, QEvent* event);
void QMouseEventTransition_virtualbase_connectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal);
void QMouseEventTransition_virtualbase_disconnectNotify(VirtualQMouseEventTransition* self, QMetaMethod* signal);

QObject* QMouseEventTransition_protectedbase_sender(const VirtualQMouseEventTransition* self);
int QMouseEventTransition_protectedbase_senderSignalIndex(const VirtualQMouseEventTransition* self);
int QMouseEventTransition_protectedbase_receivers(const VirtualQMouseEventTransition* self, const char* signal);
bool QMouseEventTransition_protectedbase_isSignalConnected(const VirtualQMouseEventTransition* self, QMetaMethod* signal);

const QMetaObject* QMouseEventTransition_staticMetaObject();
void QMouseEventTransition_delete(QMouseEventTransition* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
