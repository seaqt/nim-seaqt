#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKIMAGEPROVIDER_H
#define SEAQT_QTQUICK_GEN_QQUICKIMAGEPROVIDER_H

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
class QImage;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPixmap;
class QQmlImageProviderBase;
class QQuickAsyncImageProvider;
class QQuickImageProvider;
class QQuickImageResponse;
class QQuickTextureFactory;
class QQuickWindow;
class QSGTexture;
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPixmap QPixmap;
typedef struct QQmlImageProviderBase QQmlImageProviderBase;
typedef struct QQuickAsyncImageProvider QQuickAsyncImageProvider;
typedef struct QQuickImageProvider QQuickImageProvider;
typedef struct QQuickImageResponse QQuickImageResponse;
typedef struct QQuickTextureFactory QQuickTextureFactory;
typedef struct QQuickWindow QQuickWindow;
typedef struct QSGTexture QSGTexture;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQQuickTextureFactory VirtualQQuickTextureFactory;
typedef struct QQuickTextureFactory_VTable{
	void (*destructor)(VirtualQQuickTextureFactory* self);
	QMetaObject* (*metaObject)(const VirtualQQuickTextureFactory* self);
	void* (*metacast)(VirtualQQuickTextureFactory* self, const char* param1);
	int (*metacall)(VirtualQQuickTextureFactory* self, int param1, int param2, void** param3);
	QSGTexture* (*createTexture)(const VirtualQQuickTextureFactory* self, QQuickWindow* window);
	QSize* (*textureSize)(const VirtualQQuickTextureFactory* self);
	int (*textureByteCount)(const VirtualQQuickTextureFactory* self);
	QImage* (*image)(const VirtualQQuickTextureFactory* self);
	bool (*event)(VirtualQQuickTextureFactory* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickTextureFactory* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickTextureFactory* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickTextureFactory* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickTextureFactory* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickTextureFactory* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickTextureFactory* self, QMetaMethod* signal);
}QQuickTextureFactory_VTable;

const QQuickTextureFactory_VTable* QQuickTextureFactory_vtbl(const VirtualQQuickTextureFactory* self);
void* QQuickTextureFactory_vdata(const VirtualQQuickTextureFactory* self);
void QQuickTextureFactory_setVdata(VirtualQQuickTextureFactory* self, void* vdata);

VirtualQQuickTextureFactory* QQuickTextureFactory_new(const QQuickTextureFactory_VTable* vtbl, void* vdata);

void QQuickTextureFactory_virtbase(QQuickTextureFactory* src, QObject** outptr_QObject);
QMetaObject* QQuickTextureFactory_metaObject(const QQuickTextureFactory* self);
void* QQuickTextureFactory_metacast(QQuickTextureFactory* self, const char* param1);
int QQuickTextureFactory_metacall(QQuickTextureFactory* self, int param1, int param2, void** param3);
struct miqt_string QQuickTextureFactory_tr(const char* s);
QSGTexture* QQuickTextureFactory_createTexture(const QQuickTextureFactory* self, QQuickWindow* window);
QSize* QQuickTextureFactory_textureSize(const QQuickTextureFactory* self);
int QQuickTextureFactory_textureByteCount(const QQuickTextureFactory* self);
QImage* QQuickTextureFactory_image(const QQuickTextureFactory* self);
QQuickTextureFactory* QQuickTextureFactory_textureFactoryForImage(QImage* image);
struct miqt_string QQuickTextureFactory_tr2(const char* s, const char* c);
struct miqt_string QQuickTextureFactory_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickTextureFactory_virtualbase_metaObject(const VirtualQQuickTextureFactory* self);
void* QQuickTextureFactory_virtualbase_metacast(VirtualQQuickTextureFactory* self, const char* param1);
int QQuickTextureFactory_virtualbase_metacall(VirtualQQuickTextureFactory* self, int param1, int param2, void** param3);
QSGTexture* QQuickTextureFactory_virtualbase_createTexture(const VirtualQQuickTextureFactory* self, QQuickWindow* window);
QSize* QQuickTextureFactory_virtualbase_textureSize(const VirtualQQuickTextureFactory* self);
int QQuickTextureFactory_virtualbase_textureByteCount(const VirtualQQuickTextureFactory* self);
QImage* QQuickTextureFactory_virtualbase_image(const VirtualQQuickTextureFactory* self);
bool QQuickTextureFactory_virtualbase_event(VirtualQQuickTextureFactory* self, QEvent* event);
bool QQuickTextureFactory_virtualbase_eventFilter(VirtualQQuickTextureFactory* self, QObject* watched, QEvent* event);
void QQuickTextureFactory_virtualbase_timerEvent(VirtualQQuickTextureFactory* self, QTimerEvent* event);
void QQuickTextureFactory_virtualbase_childEvent(VirtualQQuickTextureFactory* self, QChildEvent* event);
void QQuickTextureFactory_virtualbase_customEvent(VirtualQQuickTextureFactory* self, QEvent* event);
void QQuickTextureFactory_virtualbase_connectNotify(VirtualQQuickTextureFactory* self, QMetaMethod* signal);
void QQuickTextureFactory_virtualbase_disconnectNotify(VirtualQQuickTextureFactory* self, QMetaMethod* signal);

QObject* QQuickTextureFactory_protectedbase_sender(const VirtualQQuickTextureFactory* self);
int QQuickTextureFactory_protectedbase_senderSignalIndex(const VirtualQQuickTextureFactory* self);
int QQuickTextureFactory_protectedbase_receivers(const VirtualQQuickTextureFactory* self, const char* signal);
bool QQuickTextureFactory_protectedbase_isSignalConnected(const VirtualQQuickTextureFactory* self, QMetaMethod* signal);

const QMetaObject* QQuickTextureFactory_staticMetaObject();
void QQuickTextureFactory_delete(QQuickTextureFactory* self);

typedef struct VirtualQQuickImageResponse VirtualQQuickImageResponse;
typedef struct QQuickImageResponse_VTable{
	void (*destructor)(VirtualQQuickImageResponse* self);
	QMetaObject* (*metaObject)(const VirtualQQuickImageResponse* self);
	void* (*metacast)(VirtualQQuickImageResponse* self, const char* param1);
	int (*metacall)(VirtualQQuickImageResponse* self, int param1, int param2, void** param3);
	QQuickTextureFactory* (*textureFactory)(const VirtualQQuickImageResponse* self);
	struct miqt_string (*errorString)(const VirtualQQuickImageResponse* self);
	void (*cancel)(VirtualQQuickImageResponse* self);
	bool (*event)(VirtualQQuickImageResponse* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickImageResponse* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickImageResponse* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickImageResponse* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickImageResponse* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickImageResponse* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickImageResponse* self, QMetaMethod* signal);
}QQuickImageResponse_VTable;

const QQuickImageResponse_VTable* QQuickImageResponse_vtbl(const VirtualQQuickImageResponse* self);
void* QQuickImageResponse_vdata(const VirtualQQuickImageResponse* self);
void QQuickImageResponse_setVdata(VirtualQQuickImageResponse* self, void* vdata);

VirtualQQuickImageResponse* QQuickImageResponse_new(const QQuickImageResponse_VTable* vtbl, void* vdata);

void QQuickImageResponse_virtbase(QQuickImageResponse* src, QObject** outptr_QObject);
QMetaObject* QQuickImageResponse_metaObject(const QQuickImageResponse* self);
void* QQuickImageResponse_metacast(QQuickImageResponse* self, const char* param1);
int QQuickImageResponse_metacall(QQuickImageResponse* self, int param1, int param2, void** param3);
struct miqt_string QQuickImageResponse_tr(const char* s);
QQuickTextureFactory* QQuickImageResponse_textureFactory(const QQuickImageResponse* self);
struct miqt_string QQuickImageResponse_errorString(const QQuickImageResponse* self);
void QQuickImageResponse_cancel(QQuickImageResponse* self);
void QQuickImageResponse_finished(QQuickImageResponse* self);
void QQuickImageResponse_connect_finished(VirtualQQuickImageResponse* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QQuickImageResponse_tr2(const char* s, const char* c);
struct miqt_string QQuickImageResponse_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickImageResponse_virtualbase_metaObject(const VirtualQQuickImageResponse* self);
void* QQuickImageResponse_virtualbase_metacast(VirtualQQuickImageResponse* self, const char* param1);
int QQuickImageResponse_virtualbase_metacall(VirtualQQuickImageResponse* self, int param1, int param2, void** param3);
QQuickTextureFactory* QQuickImageResponse_virtualbase_textureFactory(const VirtualQQuickImageResponse* self);
struct miqt_string QQuickImageResponse_virtualbase_errorString(const VirtualQQuickImageResponse* self);
void QQuickImageResponse_virtualbase_cancel(VirtualQQuickImageResponse* self);
bool QQuickImageResponse_virtualbase_event(VirtualQQuickImageResponse* self, QEvent* event);
bool QQuickImageResponse_virtualbase_eventFilter(VirtualQQuickImageResponse* self, QObject* watched, QEvent* event);
void QQuickImageResponse_virtualbase_timerEvent(VirtualQQuickImageResponse* self, QTimerEvent* event);
void QQuickImageResponse_virtualbase_childEvent(VirtualQQuickImageResponse* self, QChildEvent* event);
void QQuickImageResponse_virtualbase_customEvent(VirtualQQuickImageResponse* self, QEvent* event);
void QQuickImageResponse_virtualbase_connectNotify(VirtualQQuickImageResponse* self, QMetaMethod* signal);
void QQuickImageResponse_virtualbase_disconnectNotify(VirtualQQuickImageResponse* self, QMetaMethod* signal);

QObject* QQuickImageResponse_protectedbase_sender(const VirtualQQuickImageResponse* self);
int QQuickImageResponse_protectedbase_senderSignalIndex(const VirtualQQuickImageResponse* self);
int QQuickImageResponse_protectedbase_receivers(const VirtualQQuickImageResponse* self, const char* signal);
bool QQuickImageResponse_protectedbase_isSignalConnected(const VirtualQQuickImageResponse* self, QMetaMethod* signal);

const QMetaObject* QQuickImageResponse_staticMetaObject();
void QQuickImageResponse_delete(QQuickImageResponse* self);

typedef struct VirtualQQuickImageProvider VirtualQQuickImageProvider;
typedef struct QQuickImageProvider_VTable{
	void (*destructor)(VirtualQQuickImageProvider* self);
	QMetaObject* (*metaObject)(const VirtualQQuickImageProvider* self);
	void* (*metacast)(VirtualQQuickImageProvider* self, const char* param1);
	int (*metacall)(VirtualQQuickImageProvider* self, int param1, int param2, void** param3);
	int (*imageType)(const VirtualQQuickImageProvider* self);
	int (*flags)(const VirtualQQuickImageProvider* self);
	QImage* (*requestImage)(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QPixmap* (*requestPixmap)(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QQuickTextureFactory* (*requestTexture)(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	bool (*event)(VirtualQQuickImageProvider* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickImageProvider* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickImageProvider* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickImageProvider* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickImageProvider* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickImageProvider* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickImageProvider* self, QMetaMethod* signal);
}QQuickImageProvider_VTable;

const QQuickImageProvider_VTable* QQuickImageProvider_vtbl(const VirtualQQuickImageProvider* self);
void* QQuickImageProvider_vdata(const VirtualQQuickImageProvider* self);
void QQuickImageProvider_setVdata(VirtualQQuickImageProvider* self, void* vdata);

VirtualQQuickImageProvider* QQuickImageProvider_new(const QQuickImageProvider_VTable* vtbl, void* vdata, int type);
VirtualQQuickImageProvider* QQuickImageProvider_new2(const QQuickImageProvider_VTable* vtbl, void* vdata, int type, int flags);

void QQuickImageProvider_virtbase(QQuickImageProvider* src, QQmlImageProviderBase** outptr_QQmlImageProviderBase);
QMetaObject* QQuickImageProvider_metaObject(const QQuickImageProvider* self);
void* QQuickImageProvider_metacast(QQuickImageProvider* self, const char* param1);
int QQuickImageProvider_metacall(QQuickImageProvider* self, int param1, int param2, void** param3);
struct miqt_string QQuickImageProvider_tr(const char* s);
int QQuickImageProvider_imageType(const QQuickImageProvider* self);
int QQuickImageProvider_flags(const QQuickImageProvider* self);
QImage* QQuickImageProvider_requestImage(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickImageProvider_requestPixmap(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickImageProvider_requestTexture(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
struct miqt_string QQuickImageProvider_tr2(const char* s, const char* c);
struct miqt_string QQuickImageProvider_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickImageProvider_virtualbase_metaObject(const VirtualQQuickImageProvider* self);
void* QQuickImageProvider_virtualbase_metacast(VirtualQQuickImageProvider* self, const char* param1);
int QQuickImageProvider_virtualbase_metacall(VirtualQQuickImageProvider* self, int param1, int param2, void** param3);
int QQuickImageProvider_virtualbase_imageType(const VirtualQQuickImageProvider* self);
int QQuickImageProvider_virtualbase_flags(const VirtualQQuickImageProvider* self);
QImage* QQuickImageProvider_virtualbase_requestImage(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickImageProvider_virtualbase_requestPixmap(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(VirtualQQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickImageProvider_virtualbase_event(VirtualQQuickImageProvider* self, QEvent* event);
bool QQuickImageProvider_virtualbase_eventFilter(VirtualQQuickImageProvider* self, QObject* watched, QEvent* event);
void QQuickImageProvider_virtualbase_timerEvent(VirtualQQuickImageProvider* self, QTimerEvent* event);
void QQuickImageProvider_virtualbase_childEvent(VirtualQQuickImageProvider* self, QChildEvent* event);
void QQuickImageProvider_virtualbase_customEvent(VirtualQQuickImageProvider* self, QEvent* event);
void QQuickImageProvider_virtualbase_connectNotify(VirtualQQuickImageProvider* self, QMetaMethod* signal);
void QQuickImageProvider_virtualbase_disconnectNotify(VirtualQQuickImageProvider* self, QMetaMethod* signal);

QObject* QQuickImageProvider_protectedbase_sender(const VirtualQQuickImageProvider* self);
int QQuickImageProvider_protectedbase_senderSignalIndex(const VirtualQQuickImageProvider* self);
int QQuickImageProvider_protectedbase_receivers(const VirtualQQuickImageProvider* self, const char* signal);
bool QQuickImageProvider_protectedbase_isSignalConnected(const VirtualQQuickImageProvider* self, QMetaMethod* signal);

const QMetaObject* QQuickImageProvider_staticMetaObject();
void QQuickImageProvider_delete(QQuickImageProvider* self);

typedef struct VirtualQQuickAsyncImageProvider VirtualQQuickAsyncImageProvider;
typedef struct QQuickAsyncImageProvider_VTable{
	void (*destructor)(VirtualQQuickAsyncImageProvider* self);
	QQuickImageResponse* (*requestImageResponse)(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);
	QMetaObject* (*metaObject)(const VirtualQQuickAsyncImageProvider* self);
	void* (*metacast)(VirtualQQuickAsyncImageProvider* self, const char* param1);
	int (*metacall)(VirtualQQuickAsyncImageProvider* self, int param1, int param2, void** param3);
	int (*imageType)(const VirtualQQuickAsyncImageProvider* self);
	int (*flags)(const VirtualQQuickAsyncImageProvider* self);
	QImage* (*requestImage)(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QPixmap* (*requestPixmap)(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QQuickTextureFactory* (*requestTexture)(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	bool (*event)(VirtualQQuickAsyncImageProvider* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickAsyncImageProvider* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickAsyncImageProvider* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickAsyncImageProvider* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickAsyncImageProvider* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickAsyncImageProvider* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickAsyncImageProvider* self, QMetaMethod* signal);
}QQuickAsyncImageProvider_VTable;

const QQuickAsyncImageProvider_VTable* QQuickAsyncImageProvider_vtbl(const VirtualQQuickAsyncImageProvider* self);
void* QQuickAsyncImageProvider_vdata(const VirtualQQuickAsyncImageProvider* self);
void QQuickAsyncImageProvider_setVdata(VirtualQQuickAsyncImageProvider* self, void* vdata);

VirtualQQuickAsyncImageProvider* QQuickAsyncImageProvider_new(const QQuickAsyncImageProvider_VTable* vtbl, void* vdata);

void QQuickAsyncImageProvider_virtbase(QQuickAsyncImageProvider* src, QQuickImageProvider** outptr_QQuickImageProvider);
QQuickImageResponse* QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);

QQuickImageResponse* QQuickAsyncImageProvider_virtualbase_requestImageResponse(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);
QMetaObject* QQuickAsyncImageProvider_virtualbase_metaObject(const VirtualQQuickAsyncImageProvider* self);
void* QQuickAsyncImageProvider_virtualbase_metacast(VirtualQQuickAsyncImageProvider* self, const char* param1);
int QQuickAsyncImageProvider_virtualbase_metacall(VirtualQQuickAsyncImageProvider* self, int param1, int param2, void** param3);
int QQuickAsyncImageProvider_virtualbase_imageType(const VirtualQQuickAsyncImageProvider* self);
int QQuickAsyncImageProvider_virtualbase_flags(const VirtualQQuickAsyncImageProvider* self);
QImage* QQuickAsyncImageProvider_virtualbase_requestImage(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(VirtualQQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickAsyncImageProvider_virtualbase_event(VirtualQQuickAsyncImageProvider* self, QEvent* event);
bool QQuickAsyncImageProvider_virtualbase_eventFilter(VirtualQQuickAsyncImageProvider* self, QObject* watched, QEvent* event);
void QQuickAsyncImageProvider_virtualbase_timerEvent(VirtualQQuickAsyncImageProvider* self, QTimerEvent* event);
void QQuickAsyncImageProvider_virtualbase_childEvent(VirtualQQuickAsyncImageProvider* self, QChildEvent* event);
void QQuickAsyncImageProvider_virtualbase_customEvent(VirtualQQuickAsyncImageProvider* self, QEvent* event);
void QQuickAsyncImageProvider_virtualbase_connectNotify(VirtualQQuickAsyncImageProvider* self, QMetaMethod* signal);
void QQuickAsyncImageProvider_virtualbase_disconnectNotify(VirtualQQuickAsyncImageProvider* self, QMetaMethod* signal);

QObject* QQuickAsyncImageProvider_protectedbase_sender(const VirtualQQuickAsyncImageProvider* self);
int QQuickAsyncImageProvider_protectedbase_senderSignalIndex(const VirtualQQuickAsyncImageProvider* self);
int QQuickAsyncImageProvider_protectedbase_receivers(const VirtualQQuickAsyncImageProvider* self, const char* signal);
bool QQuickAsyncImageProvider_protectedbase_isSignalConnected(const VirtualQQuickAsyncImageProvider* self, QMetaMethod* signal);

void QQuickAsyncImageProvider_delete(QQuickAsyncImageProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
