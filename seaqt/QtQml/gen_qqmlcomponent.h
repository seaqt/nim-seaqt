#pragma once
#ifndef SEAQT_QTQML_GEN_QQMLCOMPONENT_H
#define SEAQT_QTQML_GEN_QQMLCOMPONENT_H

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
class QQmlComponent;
class QQmlContext;
class QQmlEngine;
class QQmlError;
class QQmlIncubator;
class QTimerEvent;
class QUrl;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQmlComponent QQmlComponent;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlError QQmlError;
typedef struct QQmlIncubator QQmlIncubator;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQQmlComponent VirtualQQmlComponent;
typedef struct QQmlComponent_VTable{
	void (*destructor)(VirtualQQmlComponent* self);
	QMetaObject* (*metaObject)(const VirtualQQmlComponent* self);
	void* (*metacast)(VirtualQQmlComponent* self, const char* param1);
	int (*metacall)(VirtualQQmlComponent* self, int param1, int param2, void** param3);
	QObject* (*create)(VirtualQQmlComponent* self, QQmlContext* context);
	QObject* (*beginCreate)(VirtualQQmlComponent* self, QQmlContext* param1);
	void (*completeCreate)(VirtualQQmlComponent* self);
	bool (*event)(VirtualQQmlComponent* self, QEvent* event);
	bool (*eventFilter)(VirtualQQmlComponent* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQmlComponent* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQmlComponent* self, QChildEvent* event);
	void (*customEvent)(VirtualQQmlComponent* self, QEvent* event);
	void (*connectNotify)(VirtualQQmlComponent* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQmlComponent* self, QMetaMethod* signal);
}QQmlComponent_VTable;

const QQmlComponent_VTable* QQmlComponent_vtbl(const VirtualQQmlComponent* self);
void* QQmlComponent_vdata(const VirtualQQmlComponent* self);
void QQmlComponent_setVdata(VirtualQQmlComponent* self, void* vdata);

VirtualQQmlComponent* QQmlComponent_new(const QQmlComponent_VTable* vtbl, void* vdata);
VirtualQQmlComponent* QQmlComponent_new2(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1);
VirtualQQmlComponent* QQmlComponent_new3(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName);
VirtualQQmlComponent* QQmlComponent_new4(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, int mode);
VirtualQQmlComponent* QQmlComponent_new5(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url);
VirtualQQmlComponent* QQmlComponent_new6(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, int mode);
VirtualQQmlComponent* QQmlComponent_new7(const QQmlComponent_VTable* vtbl, void* vdata, QObject* parent);
VirtualQQmlComponent* QQmlComponent_new8(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QObject* parent);
VirtualQQmlComponent* QQmlComponent_new9(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, QObject* parent);
VirtualQQmlComponent* QQmlComponent_new10(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, struct miqt_string fileName, int mode, QObject* parent);
VirtualQQmlComponent* QQmlComponent_new11(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, QObject* parent);
VirtualQQmlComponent* QQmlComponent_new12(const QQmlComponent_VTable* vtbl, void* vdata, QQmlEngine* param1, QUrl* url, int mode, QObject* parent);

void QQmlComponent_virtbase(QQmlComponent* src, QObject** outptr_QObject);
QMetaObject* QQmlComponent_metaObject(const QQmlComponent* self);
void* QQmlComponent_metacast(QQmlComponent* self, const char* param1);
int QQmlComponent_metacall(QQmlComponent* self, int param1, int param2, void** param3);
struct miqt_string QQmlComponent_tr(const char* s);
struct miqt_string QQmlComponent_trUtf8(const char* s);
int QQmlComponent_status(const QQmlComponent* self);
bool QQmlComponent_isNull(const QQmlComponent* self);
bool QQmlComponent_isReady(const QQmlComponent* self);
bool QQmlComponent_isError(const QQmlComponent* self);
bool QQmlComponent_isLoading(const QQmlComponent* self);
struct miqt_array /* of QQmlError* */  QQmlComponent_errors(const QQmlComponent* self);
struct miqt_string QQmlComponent_errorString(const QQmlComponent* self);
double QQmlComponent_progress(const QQmlComponent* self);
QUrl* QQmlComponent_url(const QQmlComponent* self);
QObject* QQmlComponent_create(QQmlComponent* self, QQmlContext* context);
QObject* QQmlComponent_createWithInitialProperties(QQmlComponent* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties);
void QQmlComponent_setInitialProperties(QQmlComponent* self, QObject* component, struct miqt_map /* of struct miqt_string to QVariant* */  properties);
QObject* QQmlComponent_beginCreate(QQmlComponent* self, QQmlContext* param1);
void QQmlComponent_completeCreate(QQmlComponent* self);
void QQmlComponent_createWithQQmlIncubator(QQmlComponent* self, QQmlIncubator* param1);
QQmlContext* QQmlComponent_creationContext(const QQmlComponent* self);
QQmlEngine* QQmlComponent_engine(const QQmlComponent* self);
void QQmlComponent_loadUrl(QQmlComponent* self, QUrl* url);
void QQmlComponent_loadUrl2(QQmlComponent* self, QUrl* url, int mode);
void QQmlComponent_setData(QQmlComponent* self, struct miqt_string param1, QUrl* baseUrl);
void QQmlComponent_statusChanged(QQmlComponent* self, int param1);
void QQmlComponent_connect_statusChanged(VirtualQQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQmlComponent_progressChanged(QQmlComponent* self, double param1);
void QQmlComponent_connect_progressChanged(VirtualQQmlComponent* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t));
struct miqt_string QQmlComponent_tr2(const char* s, const char* c);
struct miqt_string QQmlComponent_tr3(const char* s, const char* c, int n);
struct miqt_string QQmlComponent_trUtf82(const char* s, const char* c);
struct miqt_string QQmlComponent_trUtf83(const char* s, const char* c, int n);
QObject* QQmlComponent_createWithInitialProperties2(QQmlComponent* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties, QQmlContext* context);
void QQmlComponent_create2(QQmlComponent* self, QQmlIncubator* param1, QQmlContext* context);
void QQmlComponent_create3(QQmlComponent* self, QQmlIncubator* param1, QQmlContext* context, QQmlContext* forContext);

QMetaObject* QQmlComponent_virtualbase_metaObject(const VirtualQQmlComponent* self);
void* QQmlComponent_virtualbase_metacast(VirtualQQmlComponent* self, const char* param1);
int QQmlComponent_virtualbase_metacall(VirtualQQmlComponent* self, int param1, int param2, void** param3);
QObject* QQmlComponent_virtualbase_create(VirtualQQmlComponent* self, QQmlContext* context);
QObject* QQmlComponent_virtualbase_beginCreate(VirtualQQmlComponent* self, QQmlContext* param1);
void QQmlComponent_virtualbase_completeCreate(VirtualQQmlComponent* self);
bool QQmlComponent_virtualbase_event(VirtualQQmlComponent* self, QEvent* event);
bool QQmlComponent_virtualbase_eventFilter(VirtualQQmlComponent* self, QObject* watched, QEvent* event);
void QQmlComponent_virtualbase_timerEvent(VirtualQQmlComponent* self, QTimerEvent* event);
void QQmlComponent_virtualbase_childEvent(VirtualQQmlComponent* self, QChildEvent* event);
void QQmlComponent_virtualbase_customEvent(VirtualQQmlComponent* self, QEvent* event);
void QQmlComponent_virtualbase_connectNotify(VirtualQQmlComponent* self, QMetaMethod* signal);
void QQmlComponent_virtualbase_disconnectNotify(VirtualQQmlComponent* self, QMetaMethod* signal);

QObject* QQmlComponent_protectedbase_sender(const VirtualQQmlComponent* self);
int QQmlComponent_protectedbase_senderSignalIndex(const VirtualQQmlComponent* self);
int QQmlComponent_protectedbase_receivers(const VirtualQQmlComponent* self, const char* signal);
bool QQmlComponent_protectedbase_isSignalConnected(const VirtualQQmlComponent* self, QMetaMethod* signal);

const QMetaObject* QQmlComponent_staticMetaObject();
void QQmlComponent_delete(QQmlComponent* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
