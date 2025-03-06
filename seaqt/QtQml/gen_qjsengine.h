#pragma once
#ifndef SEAQT_QTQML_GEN_QJSENGINE_H
#define SEAQT_QTQML_GEN_QJSENGINE_H

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
class QJSEngine;
class QJSValue;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJSEngine QJSEngine;
typedef struct QJSValue QJSValue;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QJSEngine_VTable {
	void (*destructor)(struct QJSEngine_VTable* vtbl, QJSEngine* self);
	QMetaObject* (*metaObject)(struct QJSEngine_VTable* vtbl, const QJSEngine* self);
	void* (*metacast)(struct QJSEngine_VTable* vtbl, QJSEngine* self, const char* param1);
	int (*metacall)(struct QJSEngine_VTable* vtbl, QJSEngine* self, int param1, int param2, void** param3);
	bool (*event)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QEvent* event);
	bool (*eventFilter)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QTimerEvent* event);
	void (*childEvent)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QChildEvent* event);
	void (*customEvent)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QEvent* event);
	void (*connectNotify)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QJSEngine_VTable* vtbl, QJSEngine* self, QMetaMethod* signal);
};
QJSEngine* QJSEngine_new(struct QJSEngine_VTable* vtbl);
QJSEngine* QJSEngine_new2(struct QJSEngine_VTable* vtbl, QObject* parent);
void QJSEngine_virtbase(QJSEngine* src, QObject** outptr_QObject);
QMetaObject* QJSEngine_metaObject(const QJSEngine* self);
void* QJSEngine_metacast(QJSEngine* self, const char* param1);
int QJSEngine_metacall(QJSEngine* self, int param1, int param2, void** param3);
struct miqt_string QJSEngine_tr(const char* s);
struct miqt_string QJSEngine_trUtf8(const char* s);
QJSValue* QJSEngine_globalObject(const QJSEngine* self);
QJSValue* QJSEngine_evaluate(QJSEngine* self, struct miqt_string program);
QJSValue* QJSEngine_importModule(QJSEngine* self, struct miqt_string fileName);
QJSValue* QJSEngine_newObject(QJSEngine* self);
QJSValue* QJSEngine_newArray(QJSEngine* self);
QJSValue* QJSEngine_newQObject(QJSEngine* self, QObject* object);
QJSValue* QJSEngine_newQMetaObject(QJSEngine* self, QMetaObject* metaObject);
QJSValue* QJSEngine_newErrorObject(QJSEngine* self, int errorType);
void QJSEngine_collectGarbage(QJSEngine* self);
void QJSEngine_installTranslatorFunctions(QJSEngine* self);
void QJSEngine_installExtensions(QJSEngine* self, int extensions);
void QJSEngine_setInterrupted(QJSEngine* self, bool interrupted);
bool QJSEngine_isInterrupted(const QJSEngine* self);
void QJSEngine_throwError(QJSEngine* self, struct miqt_string message);
void QJSEngine_throwErrorWithErrorType(QJSEngine* self, int errorType);
struct miqt_string QJSEngine_uiLanguage(const QJSEngine* self);
void QJSEngine_setUiLanguage(QJSEngine* self, struct miqt_string language);
void QJSEngine_uiLanguageChanged(QJSEngine* self);
void QJSEngine_connect_uiLanguageChanged(QJSEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QJSEngine_tr2(const char* s, const char* c);
struct miqt_string QJSEngine_tr3(const char* s, const char* c, int n);
struct miqt_string QJSEngine_trUtf82(const char* s, const char* c);
struct miqt_string QJSEngine_trUtf83(const char* s, const char* c, int n);
QJSValue* QJSEngine_evaluate2(QJSEngine* self, struct miqt_string program, struct miqt_string fileName);
QJSValue* QJSEngine_evaluate3(QJSEngine* self, struct miqt_string program, struct miqt_string fileName, int lineNumber);
QJSValue* QJSEngine_newArray1(QJSEngine* self, unsigned int length);
QJSValue* QJSEngine_newErrorObject2(QJSEngine* self, int errorType, struct miqt_string message);
void QJSEngine_installTranslatorFunctions1(QJSEngine* self, QJSValue* object);
void QJSEngine_installExtensions2(QJSEngine* self, int extensions, QJSValue* object);
void QJSEngine_throwError2(QJSEngine* self, int errorType, struct miqt_string message);
QMetaObject* QJSEngine_virtualbase_metaObject(const void* self);
void* QJSEngine_virtualbase_metacast(void* self, const char* param1);
int QJSEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QJSEngine_virtualbase_event(void* self, QEvent* event);
bool QJSEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QJSEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QJSEngine_virtualbase_childEvent(void* self, QChildEvent* event);
void QJSEngine_virtualbase_customEvent(void* self, QEvent* event);
void QJSEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QJSEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QJSEngine_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QJSEngine_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QJSEngine_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QJSEngine_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QJSEngine_staticMetaObject();
void QJSEngine_delete(QJSEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
