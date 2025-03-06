#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLAPPLICATIONENGINE_H
#define SEAQT_QTQML_GEN_QQMLAPPLICATIONENGINE_H

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
class QMetaMethod;
class QMetaObject;
class QObject;
class QQmlApplicationEngine;
class QQmlEngine;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJSEngine QJSEngine;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlApplicationEngine QQmlApplicationEngine;
typedef struct QQmlEngine QQmlEngine;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

struct QQmlApplicationEngine_VTable {
	void (*destructor)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self);
	QMetaObject* (*metaObject)(struct QQmlApplicationEngine_VTable* vtbl, const QQmlApplicationEngine* self);
	void* (*metacast)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, const char* param1);
	int (*metacall)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, int param1, int param2, void** param3);
	bool (*event)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QEvent* param1);
	bool (*eventFilter)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QTimerEvent* event);
	void (*childEvent)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QChildEvent* event);
	void (*customEvent)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QEvent* event);
	void (*connectNotify)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQmlApplicationEngine_VTable* vtbl, QQmlApplicationEngine* self, QMetaMethod* signal);
};
QQmlApplicationEngine* QQmlApplicationEngine_new(struct QQmlApplicationEngine_VTable* vtbl);
QQmlApplicationEngine* QQmlApplicationEngine_new2(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url);
QQmlApplicationEngine* QQmlApplicationEngine_new3(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath);
QQmlApplicationEngine* QQmlApplicationEngine_new4(struct QQmlApplicationEngine_VTable* vtbl, QObject* parent);
QQmlApplicationEngine* QQmlApplicationEngine_new5(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url, QObject* parent);
QQmlApplicationEngine* QQmlApplicationEngine_new6(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath, QObject* parent);
void QQmlApplicationEngine_virtbase(QQmlApplicationEngine* src, QQmlEngine** outptr_QQmlEngine);
QMetaObject* QQmlApplicationEngine_metaObject(const QQmlApplicationEngine* self);
void* QQmlApplicationEngine_metacast(QQmlApplicationEngine* self, const char* param1);
int QQmlApplicationEngine_metacall(QQmlApplicationEngine* self, int param1, int param2, void** param3);
struct miqt_string QQmlApplicationEngine_tr(const char* s);
struct miqt_string QQmlApplicationEngine_trUtf8(const char* s);
struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects(QQmlApplicationEngine* self);
struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects2(const QQmlApplicationEngine* self);
void QQmlApplicationEngine_load(QQmlApplicationEngine* self, QUrl* url);
void QQmlApplicationEngine_loadWithFilePath(QQmlApplicationEngine* self, struct miqt_string filePath);
void QQmlApplicationEngine_setInitialProperties(QQmlApplicationEngine* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties);
void QQmlApplicationEngine_loadData(QQmlApplicationEngine* self, struct miqt_string data);
void QQmlApplicationEngine_objectCreated(QQmlApplicationEngine* self, QObject* object, QUrl* url);
void QQmlApplicationEngine_connect_objectCreated(QQmlApplicationEngine* self, intptr_t slot);
struct miqt_string QQmlApplicationEngine_tr2(const char* s, const char* c);
struct miqt_string QQmlApplicationEngine_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlApplicationEngine_trUtf82(const char* s, const char* c);
struct miqt_string QQmlApplicationEngine_trUtf83(const char* s, const char* c, int n);
void QQmlApplicationEngine_loadData2(QQmlApplicationEngine* self, struct miqt_string data, QUrl* url);
QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const void* self);
void* QQmlApplicationEngine_virtualbase_metacast(void* self, const char* param1);
int QQmlApplicationEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQmlApplicationEngine_virtualbase_event(void* self, QEvent* param1);
bool QQmlApplicationEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQmlApplicationEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQmlApplicationEngine_virtualbase_childEvent(void* self, QChildEvent* event);
void QQmlApplicationEngine_virtualbase_customEvent(void* self, QEvent* event);
void QQmlApplicationEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQmlApplicationEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQmlApplicationEngine_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQmlApplicationEngine_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQmlApplicationEngine_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQmlApplicationEngine_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQmlApplicationEngine_staticMetaObject();
void QQmlApplicationEngine_delete(QQmlApplicationEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
