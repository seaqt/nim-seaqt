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

struct QQmlExpression_VTable {
	void (*destructor)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self);
	QMetaObject* (*metaObject)(struct QQmlExpression_VTable* vtbl, const QQmlExpression* self);
	void* (*metacast)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, const char* param1);
	int (*metacall)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, int param1, int param2, void** param3);
	bool (*event)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QEvent* event);
	bool (*eventFilter)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QChildEvent* event);
	void (*customEvent)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QEvent* event);
	void (*connectNotify)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlExpression_VTable* vtbl, QQmlExpression* self, QMetaMethod* signal);
};
QQmlExpression* QQmlExpression_new(struct QQmlExpression_VTable* vtbl);
QQmlExpression* QQmlExpression_new2(struct QQmlExpression_VTable* vtbl, QQmlContext* param1, QObject* param2, struct miqt_string param3);
QQmlExpression* QQmlExpression_new3(struct QQmlExpression_VTable* vtbl, QQmlScriptString* param1);
QQmlExpression* QQmlExpression_new4(struct QQmlExpression_VTable* vtbl, QQmlContext* param1, QObject* param2, struct miqt_string param3, QObject* param4);
QQmlExpression* QQmlExpression_new5(struct QQmlExpression_VTable* vtbl, QQmlScriptString* param1, QQmlContext* param2);
QQmlExpression* QQmlExpression_new6(struct QQmlExpression_VTable* vtbl, QQmlScriptString* param1, QQmlContext* param2, QObject* param3);
QQmlExpression* QQmlExpression_new7(struct QQmlExpression_VTable* vtbl, QQmlScriptString* param1, QQmlContext* param2, QObject* param3, QObject* param4);
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
void QQmlExpression_connect_valueChanged(QQmlExpression* self, intptr_t slot);
struct miqt_string QQmlExpression_tr2(const char* s, const char* c);
struct miqt_string QQmlExpression_tr3(const char* s, const char* c, int n);
void QQmlExpression_setSourceLocation3(QQmlExpression* self, struct miqt_string fileName, int line, int column);
QVariant* QQmlExpression_evaluate1(QQmlExpression* self, bool* valueIsUndefined);
QMetaObject* QQmlExpression_virtualbase_metaObject(const void* self);
void* QQmlExpression_virtualbase_metacast(void* self, const char* param1);
int QQmlExpression_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQmlExpression_virtualbase_event(void* self, QEvent* event);
bool QQmlExpression_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlExpression_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlExpression_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlExpression_virtualbase_customEvent(void* self, QEvent* event);
void QQmlExpression_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlExpression_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlExpression_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQmlExpression_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQmlExpression_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQmlExpression_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQmlExpression_staticMetaObject();
void QQmlExpression_delete(QQmlExpression* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
