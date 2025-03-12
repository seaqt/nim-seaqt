#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLEXPRESSION_H
#define SEAQT_QTQML_GEN_QQMLEXPRESSION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlContext;
class QQmlEngine;
class QQmlError;
class QQmlExpression;
class QQmlScriptString;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlError QQmlError;
typedef struct QQmlExpression QQmlExpression;
typedef struct QQmlScriptString QQmlScriptString;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlExpression VirtualQQmlExpression;
typedef struct QQmlExpression_VTable{
	void (*destructor)(VirtualQQmlExpression* self);
	QMetaObject* (*metaObject)(const VirtualQQmlExpression* self);
	void* (*metacast)(VirtualQQmlExpression* self, const char* param1);
	int (*metacall)(VirtualQQmlExpression* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlExpression* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlExpression* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlExpression* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlExpression* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlExpression* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlExpression* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlExpression* self, QMetaMethod* signal);
}QQmlExpression_VTable;

const QQmlExpression_VTable* QQmlExpression_vtbl(const VirtualQQmlExpression* self);
void* QQmlExpression_vdata(const VirtualQQmlExpression* self);
void QQmlExpression_setVdata(VirtualQQmlExpression* self, void* vdata);

VirtualQQmlExpression* QQmlExpression_new(const QQmlExpression_VTable* vtbl, void* vdata);
VirtualQQmlExpression* QQmlExpression_new2(const QQmlExpression_VTable* vtbl, void* vdata, QQmlContext* param1, QObject* param2, struct miqt_string param3);
VirtualQQmlExpression* QQmlExpression_new3(const QQmlExpression_VTable* vtbl, void* vdata, QQmlScriptString* param1);
VirtualQQmlExpression* QQmlExpression_new4(const QQmlExpression_VTable* vtbl, void* vdata, QQmlContext* param1, QObject* param2, struct miqt_string param3, QObject* param4);
VirtualQQmlExpression* QQmlExpression_new5(const QQmlExpression_VTable* vtbl, void* vdata, QQmlScriptString* param1, QQmlContext* param2);
VirtualQQmlExpression* QQmlExpression_new6(const QQmlExpression_VTable* vtbl, void* vdata, QQmlScriptString* param1, QQmlContext* param2, QObject* param3);
VirtualQQmlExpression* QQmlExpression_new7(const QQmlExpression_VTable* vtbl, void* vdata, QQmlScriptString* param1, QQmlContext* param2, QObject* param3, QObject* param4);

void QQmlExpression_virtbase(QQmlExpression* src, QObject** outptr_QObject);
QMetaObject* QQmlExpression_metaObject(const QQmlExpression* self);
void* QQmlExpression_metacast(QQmlExpression* self, const char* param1);
int QQmlExpression_metacall(QQmlExpression* self, int param1, int param2, void** param3);
struct miqt_string QQmlExpression_tr(const char* s);
QQmlEngine* QQmlExpression_engine(const QQmlExpression* self);
QQmlContext* QQmlExpression_context(const QQmlExpression* self);
struct miqt_string QQmlExpression_expression(const QQmlExpression* self);
void QQmlExpression_setExpression(QQmlExpression* self, struct miqt_string expression);
bool QQmlExpression_notifyOnValueChanged(const QQmlExpression* self);
void QQmlExpression_setNotifyOnValueChanged(QQmlExpression* self, bool notifyOnValueChanged);
struct miqt_string QQmlExpression_sourceFile(const QQmlExpression* self);
int QQmlExpression_lineNumber(const QQmlExpression* self);
int QQmlExpression_columnNumber(const QQmlExpression* self);
void QQmlExpression_setSourceLocation(QQmlExpression* self, struct miqt_string fileName, int line);
QObject* QQmlExpression_scopeObject(const QQmlExpression* self);
bool QQmlExpression_hasError(const QQmlExpression* self);
void QQmlExpression_clearError(QQmlExpression* self);
QQmlError* QQmlExpression_error(const QQmlExpression* self);
QVariant* QQmlExpression_evaluate(QQmlExpression* self);
void QQmlExpression_valueChanged(QQmlExpression* self);
void QQmlExpression_connect_valueChanged(VirtualQQmlExpression* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QQmlExpression_tr2(const char* s, const char* c);
struct miqt_string QQmlExpression_tr3(const char* s, const char* c, int n);
void QQmlExpression_setSourceLocation3(QQmlExpression* self, struct miqt_string fileName, int line, int column);
QVariant* QQmlExpression_evaluate1(QQmlExpression* self, bool* valueIsUndefined);

QMetaObject* QQmlExpression_virtualbase_metaObject(const VirtualQQmlExpression* self);
void* QQmlExpression_virtualbase_metacast(VirtualQQmlExpression* self, const char* param1);
int QQmlExpression_virtualbase_metacall(VirtualQQmlExpression* self, int param1, int param2, void** param3);
bool QQmlExpression_virtualbase_event(VirtualQQmlExpression* self, QEvent* event);
bool QQmlExpression_virtualbase_eventFilter(VirtualQQmlExpression* self, QObject* watched, QEvent* event);
void QQmlExpression_virtualbase_timerEvent(VirtualQQmlExpression* self, QTimerEvent* event);
void QQmlExpression_virtualbase_childEvent(VirtualQQmlExpression* self, QChildEvent* event);
void QQmlExpression_virtualbase_customEvent(VirtualQQmlExpression* self, QEvent* event);
void QQmlExpression_virtualbase_connectNotify(VirtualQQmlExpression* self, QMetaMethod* signal);
void QQmlExpression_virtualbase_disconnectNotify(VirtualQQmlExpression* self, QMetaMethod* signal);

QObject* QQmlExpression_protectedbase_sender(const VirtualQQmlExpression* self);
int QQmlExpression_protectedbase_senderSignalIndex(const VirtualQQmlExpression* self);
int QQmlExpression_protectedbase_receivers(const VirtualQQmlExpression* self, const char* signal);
bool QQmlExpression_protectedbase_isSignalConnected(const VirtualQQmlExpression* self, QMetaMethod* signal);

const QMetaObject* QQmlExpression_staticMetaObject();
void QQmlExpression_delete(QQmlExpression* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
