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

QQuickTextureFactory* QQuickTextureFactory_new();
void QQuickTextureFactory_virtbase(QQuickTextureFactory* src, QObject** outptr_QObject);
QMetaObject* QQuickTextureFactory_metaObject(const QQuickTextureFactory* self);
void* QQuickTextureFactory_metacast(QQuickTextureFactory* self, const char* param1);
struct miqt_string QQuickTextureFactory_tr(const char* s);
QSGTexture* QQuickTextureFactory_createTexture(const QQuickTextureFactory* self, QQuickWindow* window);
QSize* QQuickTextureFactory_textureSize(const QQuickTextureFactory* self);
int QQuickTextureFactory_textureByteCount(const QQuickTextureFactory* self);
QImage* QQuickTextureFactory_image(const QQuickTextureFactory* self);
QQuickTextureFactory* QQuickTextureFactory_textureFactoryForImage(QImage* image);
struct miqt_string QQuickTextureFactory_tr2(const char* s, const char* c);
struct miqt_string QQuickTextureFactory_tr3(const char* s, const char* c, int n);
bool QQuickTextureFactory_override_virtual_createTexture(void* self, intptr_t slot);
QSGTexture* QQuickTextureFactory_virtualbase_createTexture(const void* self, QQuickWindow* window);
bool QQuickTextureFactory_override_virtual_textureSize(void* self, intptr_t slot);
QSize* QQuickTextureFactory_virtualbase_textureSize(const void* self);
bool QQuickTextureFactory_override_virtual_textureByteCount(void* self, intptr_t slot);
int QQuickTextureFactory_virtualbase_textureByteCount(const void* self);
bool QQuickTextureFactory_override_virtual_image(void* self, intptr_t slot);
QImage* QQuickTextureFactory_virtualbase_image(const void* self);
bool QQuickTextureFactory_override_virtual_event(void* self, intptr_t slot);
bool QQuickTextureFactory_virtualbase_event(void* self, QEvent* event);
bool QQuickTextureFactory_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickTextureFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickTextureFactory_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickTextureFactory_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickTextureFactory_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickTextureFactory_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickTextureFactory_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickTextureFactory_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickTextureFactory_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickTextureFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickTextureFactory_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickTextureFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickTextureFactory_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickTextureFactory_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickTextureFactory_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickTextureFactory_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickTextureFactory_delete(QQuickTextureFactory* self);

QQuickImageResponse* QQuickImageResponse_new();
void QQuickImageResponse_virtbase(QQuickImageResponse* src, QObject** outptr_QObject);
QMetaObject* QQuickImageResponse_metaObject(const QQuickImageResponse* self);
void* QQuickImageResponse_metacast(QQuickImageResponse* self, const char* param1);
struct miqt_string QQuickImageResponse_tr(const char* s);
QQuickTextureFactory* QQuickImageResponse_textureFactory(const QQuickImageResponse* self);
struct miqt_string QQuickImageResponse_errorString(const QQuickImageResponse* self);
void QQuickImageResponse_cancel(QQuickImageResponse* self);
void QQuickImageResponse_finished(QQuickImageResponse* self);
void QQuickImageResponse_connect_finished(QQuickImageResponse* self, intptr_t slot);
struct miqt_string QQuickImageResponse_tr2(const char* s, const char* c);
struct miqt_string QQuickImageResponse_tr3(const char* s, const char* c, int n);
bool QQuickImageResponse_override_virtual_textureFactory(void* self, intptr_t slot);
QQuickTextureFactory* QQuickImageResponse_virtualbase_textureFactory(const void* self);
bool QQuickImageResponse_override_virtual_errorString(void* self, intptr_t slot);
struct miqt_string QQuickImageResponse_virtualbase_errorString(const void* self);
bool QQuickImageResponse_override_virtual_cancel(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_cancel(void* self);
bool QQuickImageResponse_override_virtual_event(void* self, intptr_t slot);
bool QQuickImageResponse_virtualbase_event(void* self, QEvent* event);
bool QQuickImageResponse_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickImageResponse_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickImageResponse_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickImageResponse_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickImageResponse_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickImageResponse_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickImageResponse_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickImageResponse_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickImageResponse_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickImageResponse_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickImageResponse_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickImageResponse_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickImageResponse_delete(QQuickImageResponse* self);

QQuickImageProvider* QQuickImageProvider_new(int type);
QQuickImageProvider* QQuickImageProvider_new2(int type, int flags);
void QQuickImageProvider_virtbase(QQuickImageProvider* src, QQmlImageProviderBase** outptr_QQmlImageProviderBase);
QMetaObject* QQuickImageProvider_metaObject(const QQuickImageProvider* self);
void* QQuickImageProvider_metacast(QQuickImageProvider* self, const char* param1);
struct miqt_string QQuickImageProvider_tr(const char* s);
int QQuickImageProvider_imageType(const QQuickImageProvider* self);
int QQuickImageProvider_flags(const QQuickImageProvider* self);
QImage* QQuickImageProvider_requestImage(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickImageProvider_requestPixmap(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickImageProvider_requestTexture(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
struct miqt_string QQuickImageProvider_tr2(const char* s, const char* c);
struct miqt_string QQuickImageProvider_tr3(const char* s, const char* c, int n);
bool QQuickImageProvider_override_virtual_imageType(void* self, intptr_t slot);
int QQuickImageProvider_virtualbase_imageType(const void* self);
bool QQuickImageProvider_override_virtual_flags(void* self, intptr_t slot);
int QQuickImageProvider_virtualbase_flags(const void* self);
bool QQuickImageProvider_override_virtual_requestImage(void* self, intptr_t slot);
QImage* QQuickImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickImageProvider_override_virtual_requestPixmap(void* self, intptr_t slot);
QPixmap* QQuickImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickImageProvider_override_virtual_requestTexture(void* self, intptr_t slot);
QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickImageProvider_override_virtual_event(void* self, intptr_t slot);
bool QQuickImageProvider_virtualbase_event(void* self, QEvent* event);
bool QQuickImageProvider_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickImageProvider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickImageProvider_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickImageProvider_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickImageProvider_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickImageProvider_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickImageProvider_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickImageProvider_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickImageProvider_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickImageProvider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickImageProvider_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickImageProvider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickImageProvider_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickImageProvider_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickImageProvider_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickImageProvider_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickImageProvider_delete(QQuickImageProvider* self);

QQuickAsyncImageProvider* QQuickAsyncImageProvider_new();
void QQuickAsyncImageProvider_virtbase(QQuickAsyncImageProvider* src, QQuickImageProvider** outptr_QQuickImageProvider);
QQuickImageResponse* QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);
bool QQuickAsyncImageProvider_override_virtual_requestImageResponse(void* self, intptr_t slot);
QQuickImageResponse* QQuickAsyncImageProvider_virtualbase_requestImageResponse(void* self, struct miqt_string id, QSize* requestedSize);
bool QQuickAsyncImageProvider_override_virtual_imageType(void* self, intptr_t slot);
int QQuickAsyncImageProvider_virtualbase_imageType(const void* self);
bool QQuickAsyncImageProvider_override_virtual_flags(void* self, intptr_t slot);
int QQuickAsyncImageProvider_virtualbase_flags(const void* self);
bool QQuickAsyncImageProvider_override_virtual_requestImage(void* self, intptr_t slot);
QImage* QQuickAsyncImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickAsyncImageProvider_override_virtual_requestPixmap(void* self, intptr_t slot);
QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickAsyncImageProvider_override_virtual_requestTexture(void* self, intptr_t slot);
QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickAsyncImageProvider_override_virtual_event(void* self, intptr_t slot);
bool QQuickAsyncImageProvider_virtualbase_event(void* self, QEvent* event);
bool QQuickAsyncImageProvider_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickAsyncImageProvider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickAsyncImageProvider_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickAsyncImageProvider_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickAsyncImageProvider_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickAsyncImageProvider_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickAsyncImageProvider_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickAsyncImageProvider_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickAsyncImageProvider_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickAsyncImageProvider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickAsyncImageProvider_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickAsyncImageProvider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickAsyncImageProvider_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickAsyncImageProvider_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickAsyncImageProvider_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickAsyncImageProvider_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickAsyncImageProvider_delete(QQuickAsyncImageProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
