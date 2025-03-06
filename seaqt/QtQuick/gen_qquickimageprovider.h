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

struct QQuickTextureFactory_VTable {
	void (*destructor)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self);
	QMetaObject* (*metaObject)(struct QQuickTextureFactory_VTable* vtbl, const QQuickTextureFactory* self);
	void* (*metacast)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, const char* param1);
	int (*metacall)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, int param1, int param2, void** param3);
	QSGTexture* (*createTexture)(struct QQuickTextureFactory_VTable* vtbl, const QQuickTextureFactory* self, QQuickWindow* window);
	QSize* (*textureSize)(struct QQuickTextureFactory_VTable* vtbl, const QQuickTextureFactory* self);
	int (*textureByteCount)(struct QQuickTextureFactory_VTable* vtbl, const QQuickTextureFactory* self);
	QImage* (*image)(struct QQuickTextureFactory_VTable* vtbl, const QQuickTextureFactory* self);
	bool (*event)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QEvent* event);
	bool (*eventFilter)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QChildEvent* event);
	void (*customEvent)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QEvent* event);
	void (*connectNotify)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickTextureFactory_VTable* vtbl, QQuickTextureFactory* self, QMetaMethod* signal);
};
QQuickTextureFactory* QQuickTextureFactory_new(struct QQuickTextureFactory_VTable* vtbl);
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
QMetaObject* QQuickTextureFactory_virtualbase_metaObject(const void* self);
void* QQuickTextureFactory_virtualbase_metacast(void* self, const char* param1);
int QQuickTextureFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSGTexture* QQuickTextureFactory_virtualbase_createTexture(const void* self, QQuickWindow* window);
QSize* QQuickTextureFactory_virtualbase_textureSize(const void* self);
int QQuickTextureFactory_virtualbase_textureByteCount(const void* self);
QImage* QQuickTextureFactory_virtualbase_image(const void* self);
bool QQuickTextureFactory_virtualbase_event(void* self, QEvent* event);
bool QQuickTextureFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickTextureFactory_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickTextureFactory_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickTextureFactory_virtualbase_customEvent(void* self, QEvent* event);
void QQuickTextureFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickTextureFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickTextureFactory_protectedbase_sender(const void* self);
int QQuickTextureFactory_protectedbase_senderSignalIndex(const void* self);
int QQuickTextureFactory_protectedbase_receivers(const void* self, const char* signal);
bool QQuickTextureFactory_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQuickTextureFactory_staticMetaObject();
void QQuickTextureFactory_delete(QQuickTextureFactory* self);

struct QQuickImageResponse_VTable {
	void (*destructor)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self);
	QMetaObject* (*metaObject)(struct QQuickImageResponse_VTable* vtbl, const QQuickImageResponse* self);
	void* (*metacast)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, const char* param1);
	int (*metacall)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, int param1, int param2, void** param3);
	QQuickTextureFactory* (*textureFactory)(struct QQuickImageResponse_VTable* vtbl, const QQuickImageResponse* self);
	struct miqt_string (*errorString)(struct QQuickImageResponse_VTable* vtbl, const QQuickImageResponse* self);
	void (*cancel)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self);
	bool (*event)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QEvent* event);
	bool (*eventFilter)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QChildEvent* event);
	void (*customEvent)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QEvent* event);
	void (*connectNotify)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickImageResponse_VTable* vtbl, QQuickImageResponse* self, QMetaMethod* signal);
};
QQuickImageResponse* QQuickImageResponse_new(struct QQuickImageResponse_VTable* vtbl);
void QQuickImageResponse_virtbase(QQuickImageResponse* src, QObject** outptr_QObject);
QMetaObject* QQuickImageResponse_metaObject(const QQuickImageResponse* self);
void* QQuickImageResponse_metacast(QQuickImageResponse* self, const char* param1);
int QQuickImageResponse_metacall(QQuickImageResponse* self, int param1, int param2, void** param3);
struct miqt_string QQuickImageResponse_tr(const char* s);
QQuickTextureFactory* QQuickImageResponse_textureFactory(const QQuickImageResponse* self);
struct miqt_string QQuickImageResponse_errorString(const QQuickImageResponse* self);
void QQuickImageResponse_cancel(QQuickImageResponse* self);
void QQuickImageResponse_finished(QQuickImageResponse* self);
void QQuickImageResponse_connect_finished(QQuickImageResponse* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QQuickImageResponse_tr2(const char* s, const char* c);
struct miqt_string QQuickImageResponse_tr3(const char* s, const char* c, int n);
QMetaObject* QQuickImageResponse_virtualbase_metaObject(const void* self);
void* QQuickImageResponse_virtualbase_metacast(void* self, const char* param1);
int QQuickImageResponse_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QQuickTextureFactory* QQuickImageResponse_virtualbase_textureFactory(const void* self);
struct miqt_string QQuickImageResponse_virtualbase_errorString(const void* self);
void QQuickImageResponse_virtualbase_cancel(void* self);
bool QQuickImageResponse_virtualbase_event(void* self, QEvent* event);
bool QQuickImageResponse_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickImageResponse_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickImageResponse_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickImageResponse_virtualbase_customEvent(void* self, QEvent* event);
void QQuickImageResponse_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickImageResponse_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickImageResponse_protectedbase_sender(const void* self);
int QQuickImageResponse_protectedbase_senderSignalIndex(const void* self);
int QQuickImageResponse_protectedbase_receivers(const void* self, const char* signal);
bool QQuickImageResponse_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQuickImageResponse_staticMetaObject();
void QQuickImageResponse_delete(QQuickImageResponse* self);

struct QQuickImageProvider_VTable {
	void (*destructor)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self);
	QMetaObject* (*metaObject)(struct QQuickImageProvider_VTable* vtbl, const QQuickImageProvider* self);
	void* (*metacast)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, const char* param1);
	int (*metacall)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, int param1, int param2, void** param3);
	int (*imageType)(struct QQuickImageProvider_VTable* vtbl, const QQuickImageProvider* self);
	int (*flags)(struct QQuickImageProvider_VTable* vtbl, const QQuickImageProvider* self);
	QImage* (*requestImage)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QPixmap* (*requestPixmap)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QQuickTextureFactory* (*requestTexture)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	bool (*event)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QEvent* event);
	bool (*eventFilter)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QChildEvent* event);
	void (*customEvent)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QEvent* event);
	void (*connectNotify)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickImageProvider_VTable* vtbl, QQuickImageProvider* self, QMetaMethod* signal);
};
QQuickImageProvider* QQuickImageProvider_new(struct QQuickImageProvider_VTable* vtbl, int type);
QQuickImageProvider* QQuickImageProvider_new2(struct QQuickImageProvider_VTable* vtbl, int type, int flags);
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
QMetaObject* QQuickImageProvider_virtualbase_metaObject(const void* self);
void* QQuickImageProvider_virtualbase_metacast(void* self, const char* param1);
int QQuickImageProvider_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QQuickImageProvider_virtualbase_imageType(const void* self);
int QQuickImageProvider_virtualbase_flags(const void* self);
QImage* QQuickImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickImageProvider_virtualbase_event(void* self, QEvent* event);
bool QQuickImageProvider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickImageProvider_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickImageProvider_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickImageProvider_virtualbase_customEvent(void* self, QEvent* event);
void QQuickImageProvider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickImageProvider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickImageProvider_protectedbase_sender(const void* self);
int QQuickImageProvider_protectedbase_senderSignalIndex(const void* self);
int QQuickImageProvider_protectedbase_receivers(const void* self, const char* signal);
bool QQuickImageProvider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQuickImageProvider_staticMetaObject();
void QQuickImageProvider_delete(QQuickImageProvider* self);

struct QQuickAsyncImageProvider_VTable {
	void (*destructor)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self);
	QQuickImageResponse* (*requestImageResponse)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);
	QMetaObject* (*metaObject)(struct QQuickAsyncImageProvider_VTable* vtbl, const QQuickAsyncImageProvider* self);
	void* (*metacast)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, const char* param1);
	int (*metacall)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, int param1, int param2, void** param3);
	int (*imageType)(struct QQuickAsyncImageProvider_VTable* vtbl, const QQuickAsyncImageProvider* self);
	int (*flags)(struct QQuickAsyncImageProvider_VTable* vtbl, const QQuickAsyncImageProvider* self);
	QImage* (*requestImage)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QPixmap* (*requestPixmap)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	QQuickTextureFactory* (*requestTexture)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize);
	bool (*event)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QEvent* event);
	bool (*eventFilter)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QChildEvent* event);
	void (*customEvent)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QEvent* event);
	void (*connectNotify)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickAsyncImageProvider_VTable* vtbl, QQuickAsyncImageProvider* self, QMetaMethod* signal);
};
QQuickAsyncImageProvider* QQuickAsyncImageProvider_new(struct QQuickAsyncImageProvider_VTable* vtbl);
void QQuickAsyncImageProvider_virtbase(QQuickAsyncImageProvider* src, QQuickImageProvider** outptr_QQuickImageProvider);
QQuickImageResponse* QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize);
QQuickImageResponse* QQuickAsyncImageProvider_virtualbase_requestImageResponse(void* self, struct miqt_string id, QSize* requestedSize);
QMetaObject* QQuickAsyncImageProvider_virtualbase_metaObject(const void* self);
void* QQuickAsyncImageProvider_virtualbase_metacast(void* self, const char* param1);
int QQuickAsyncImageProvider_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QQuickAsyncImageProvider_virtualbase_imageType(const void* self);
int QQuickAsyncImageProvider_virtualbase_flags(const void* self);
QImage* QQuickAsyncImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize);
bool QQuickAsyncImageProvider_virtualbase_event(void* self, QEvent* event);
bool QQuickAsyncImageProvider_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickAsyncImageProvider_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickAsyncImageProvider_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickAsyncImageProvider_virtualbase_customEvent(void* self, QEvent* event);
void QQuickAsyncImageProvider_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickAsyncImageProvider_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickAsyncImageProvider_protectedbase_sender(const void* self);
int QQuickAsyncImageProvider_protectedbase_senderSignalIndex(const void* self);
int QQuickAsyncImageProvider_protectedbase_receivers(const void* self, const char* signal);
bool QQuickAsyncImageProvider_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
void QQuickAsyncImageProvider_delete(QQuickAsyncImageProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
