#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLENGINE_H
#define SEAQT_QTQML_GEN_QQMLENGINE_H

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
class QMetaProperty;
class QNetworkAccessManager;
class QObject;
class QQmlAbstractUrlInterceptor;
class QQmlContext;
class QQmlEngine;
class QQmlError;
class QQmlImageProviderBase;
class QQmlIncubationController;
class QQmlNetworkAccessManagerFactory;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QJSEngine QJSEngine;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMetaProperty QMetaProperty;
typedef struct QNetworkAccessManager QNetworkAccessManager;
typedef struct QObject QObject;
typedef struct QQmlAbstractUrlInterceptor QQmlAbstractUrlInterceptor;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlError QQmlError;
typedef struct QQmlImageProviderBase QQmlImageProviderBase;
typedef struct QQmlIncubationController QQmlIncubationController;
typedef struct QQmlNetworkAccessManagerFactory QQmlNetworkAccessManagerFactory;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

void QQmlImageProviderBase_virtbase(QQmlImageProviderBase* src, QObject** outptr_QObject);
QMetaObject* QQmlImageProviderBase_metaObject(const QQmlImageProviderBase* self);
void* QQmlImageProviderBase_metacast(QQmlImageProviderBase* self, const char* param1);
int QQmlImageProviderBase_metacall(QQmlImageProviderBase* self, int param1, int param2, void** param3);
struct miqt_string QQmlImageProviderBase_tr(const char* s);
int QQmlImageProviderBase_imageType(const QQmlImageProviderBase* self);
int QQmlImageProviderBase_flags(const QQmlImageProviderBase* self);
struct miqt_string QQmlImageProviderBase_tr2(const char* s, const char* c);
struct miqt_string QQmlImageProviderBase_tr3(const char* s, const char* c, int n);

const QMetaObject* QQmlImageProviderBase_staticMetaObject();
void QQmlImageProviderBase_delete(QQmlImageProviderBase* self);

typedef struct VirtualQQmlEngine VirtualQQmlEngine;
typedef struct QQmlEngine_VTable{
	void (*destructor)(VirtualQQmlEngine* self);
	QMetaObject* (*metaObject)(const VirtualQQmlEngine* self);
	void* (*metacast)(VirtualQQmlEngine* self, const char* param1);
	int (*metacall)(VirtualQQmlEngine* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQQmlEngine* self, QEvent* param1);
	bool (*eventFilter)(VirtualQQmlEngine* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlEngine* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlEngine* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlEngine* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlEngine* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlEngine* self, QMetaMethod* signal);
}QQmlEngine_VTable;

const QQmlEngine_VTable* QQmlEngine_vtbl(const VirtualQQmlEngine* self);
void* QQmlEngine_vdata(const VirtualQQmlEngine* self);
void QQmlEngine_setVdata(VirtualQQmlEngine* self, void* vdata);

VirtualQQmlEngine* QQmlEngine_new(const QQmlEngine_VTable* vtbl, void* vdata);
VirtualQQmlEngine* QQmlEngine_new2(const QQmlEngine_VTable* vtbl, void* vdata, QObject* p);

void QQmlEngine_virtbase(QQmlEngine* src, QJSEngine** outptr_QJSEngine);
QMetaObject* QQmlEngine_metaObject(const QQmlEngine* self);
void* QQmlEngine_metacast(QQmlEngine* self, const char* param1);
int QQmlEngine_metacall(QQmlEngine* self, int param1, int param2, void** param3);
struct miqt_string QQmlEngine_tr(const char* s);
QQmlContext* QQmlEngine_rootContext(const QQmlEngine* self);
void QQmlEngine_clearComponentCache(QQmlEngine* self);
void QQmlEngine_trimComponentCache(QQmlEngine* self);
void QQmlEngine_clearSingletons(QQmlEngine* self);
struct miqt_array /* of struct miqt_string */  QQmlEngine_importPathList(const QQmlEngine* self);
void QQmlEngine_setImportPathList(QQmlEngine* self, struct miqt_array /* of struct miqt_string */  paths);
void QQmlEngine_addImportPath(QQmlEngine* self, struct miqt_string dir);
struct miqt_array /* of struct miqt_string */  QQmlEngine_pluginPathList(const QQmlEngine* self);
void QQmlEngine_setPluginPathList(QQmlEngine* self, struct miqt_array /* of struct miqt_string */  paths);
void QQmlEngine_addPluginPath(QQmlEngine* self, struct miqt_string dir);
bool QQmlEngine_addNamedBundle(QQmlEngine* self, struct miqt_string param1, struct miqt_string param2);
bool QQmlEngine_importPlugin(QQmlEngine* self, struct miqt_string filePath, struct miqt_string uri, struct miqt_array /* of QQmlError* */  errors);
void QQmlEngine_setNetworkAccessManagerFactory(QQmlEngine* self, QQmlNetworkAccessManagerFactory* networkAccessManagerFactory);
QQmlNetworkAccessManagerFactory* QQmlEngine_networkAccessManagerFactory(const QQmlEngine* self);
QNetworkAccessManager* QQmlEngine_networkAccessManager(const QQmlEngine* self);
void QQmlEngine_setUrlInterceptor(QQmlEngine* self, QQmlAbstractUrlInterceptor* urlInterceptor);
QQmlAbstractUrlInterceptor* QQmlEngine_urlInterceptor(const QQmlEngine* self);
void QQmlEngine_addUrlInterceptor(QQmlEngine* self, QQmlAbstractUrlInterceptor* urlInterceptor);
void QQmlEngine_removeUrlInterceptor(QQmlEngine* self, QQmlAbstractUrlInterceptor* urlInterceptor);
struct miqt_array /* of QQmlAbstractUrlInterceptor* */  QQmlEngine_urlInterceptors(const QQmlEngine* self);
QUrl* QQmlEngine_interceptUrl(const QQmlEngine* self, QUrl* url, int type);
void QQmlEngine_addImageProvider(QQmlEngine* self, struct miqt_string id, QQmlImageProviderBase* param2);
QQmlImageProviderBase* QQmlEngine_imageProvider(const QQmlEngine* self, struct miqt_string id);
void QQmlEngine_removeImageProvider(QQmlEngine* self, struct miqt_string id);
void QQmlEngine_setIncubationController(QQmlEngine* self, QQmlIncubationController* incubationController);
QQmlIncubationController* QQmlEngine_incubationController(const QQmlEngine* self);
void QQmlEngine_setOfflineStoragePath(QQmlEngine* self, struct miqt_string dir);
struct miqt_string QQmlEngine_offlineStoragePath(const QQmlEngine* self);
struct miqt_string QQmlEngine_offlineStorageDatabaseFilePath(const QQmlEngine* self, struct miqt_string databaseName);
QUrl* QQmlEngine_baseUrl(const QQmlEngine* self);
void QQmlEngine_setBaseUrl(QQmlEngine* self, QUrl* baseUrl);
bool QQmlEngine_outputWarningsToStandardError(const QQmlEngine* self);
void QQmlEngine_setOutputWarningsToStandardError(QQmlEngine* self, bool outputWarningsToStandardError);
void QQmlEngine_captureProperty(const QQmlEngine* self, QObject* object, QMetaProperty* property);
void QQmlEngine_retranslate(QQmlEngine* self);
QQmlContext* QQmlEngine_contextForObject(QObject* param1);
void QQmlEngine_setContextForObject(QObject* param1, QQmlContext* param2);
bool QQmlEngine_event(QQmlEngine* self, QEvent* param1);
void QQmlEngine_quit(QQmlEngine* self);
void QQmlEngine_connect_quit(VirtualQQmlEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQmlEngine_exit(QQmlEngine* self, int retCode);
void QQmlEngine_connect_exit(VirtualQQmlEngine* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQmlEngine_warnings(QQmlEngine* self, struct miqt_array /* of QQmlError* */  warnings);
void QQmlEngine_connect_warnings(VirtualQQmlEngine* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QQmlError* */ ), void (*release)(intptr_t));
struct miqt_string QQmlEngine_tr2(const char* s, const char* c);
struct miqt_string QQmlEngine_tr3(const char* s, const char* c, int n);

QMetaObject* QQmlEngine_virtualbase_metaObject(const VirtualQQmlEngine* self);
void* QQmlEngine_virtualbase_metacast(VirtualQQmlEngine* self, const char* param1);
int QQmlEngine_virtualbase_metacall(VirtualQQmlEngine* self, int param1, int param2, void** param3);
bool QQmlEngine_virtualbase_event(VirtualQQmlEngine* self, QEvent* param1);
bool QQmlEngine_virtualbase_eventFilter(VirtualQQmlEngine* self, QObject* watched, QEvent* event);
void QQmlEngine_virtualbase_timerEvent(VirtualQQmlEngine* self, QTimerEvent* event);
void QQmlEngine_virtualbase_childEvent(VirtualQQmlEngine* self, QChildEvent* event);
void QQmlEngine_virtualbase_customEvent(VirtualQQmlEngine* self, QEvent* event);
void QQmlEngine_virtualbase_connectNotify(VirtualQQmlEngine* self, QMetaMethod* signal);
void QQmlEngine_virtualbase_disconnectNotify(VirtualQQmlEngine* self, QMetaMethod* signal);

QObject* QQmlEngine_protectedbase_sender(const VirtualQQmlEngine* self);
int QQmlEngine_protectedbase_senderSignalIndex(const VirtualQQmlEngine* self);
int QQmlEngine_protectedbase_receivers(const VirtualQQmlEngine* self, const char* signal);
bool QQmlEngine_protectedbase_isSignalConnected(const VirtualQQmlEngine* self, QMetaMethod* signal);

const QMetaObject* QQmlEngine_staticMetaObject();
void QQmlEngine_delete(QQmlEngine* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
