#pragma once
#ifndef SEAQT_QTGUI_GEN_QIMAGEIOHANDLER_H
#define SEAQT_QTGUI_GEN_QIMAGEIOHANDLER_H

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
class QIODevice;
class QImage;
class QImageIOHandler;
class QImageIOPlugin;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QSize;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QImage QImage;
typedef struct QImageIOHandler QImageIOHandler;
typedef struct QImageIOPlugin QImageIOPlugin;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QImageIOHandler_VTable {
	void (*destructor)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self);
	bool (*canRead)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
	bool (*read)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self, QImage* image);
	bool (*write)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self, QImage* image);
	QVariant* (*option)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self, int option);
	void (*setOption)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self, int option, QVariant* value);
	bool (*supportsOption)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self, int option);
	bool (*jumpToNextImage)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self);
	bool (*jumpToImage)(struct QImageIOHandler_VTable* vtbl, QImageIOHandler* self, int imageNumber);
	int (*loopCount)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
	int (*imageCount)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
	int (*nextImageDelay)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
	int (*currentImageNumber)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
	QRect* (*currentImageRect)(struct QImageIOHandler_VTable* vtbl, const QImageIOHandler* self);
};
QImageIOHandler* QImageIOHandler_new(struct QImageIOHandler_VTable* vtbl);
void QImageIOHandler_setDevice(QImageIOHandler* self, QIODevice* device);
QIODevice* QImageIOHandler_device(const QImageIOHandler* self);
void QImageIOHandler_setFormat(QImageIOHandler* self, struct miqt_string format);
void QImageIOHandler_setFormatWithFormat(const QImageIOHandler* self, struct miqt_string format);
struct miqt_string QImageIOHandler_format(const QImageIOHandler* self);
bool QImageIOHandler_canRead(const QImageIOHandler* self);
bool QImageIOHandler_read(QImageIOHandler* self, QImage* image);
bool QImageIOHandler_write(QImageIOHandler* self, QImage* image);
QVariant* QImageIOHandler_option(const QImageIOHandler* self, int option);
void QImageIOHandler_setOption(QImageIOHandler* self, int option, QVariant* value);
bool QImageIOHandler_supportsOption(const QImageIOHandler* self, int option);
bool QImageIOHandler_jumpToNextImage(QImageIOHandler* self);
bool QImageIOHandler_jumpToImage(QImageIOHandler* self, int imageNumber);
int QImageIOHandler_loopCount(const QImageIOHandler* self);
int QImageIOHandler_imageCount(const QImageIOHandler* self);
int QImageIOHandler_nextImageDelay(const QImageIOHandler* self);
int QImageIOHandler_currentImageNumber(const QImageIOHandler* self);
QRect* QImageIOHandler_currentImageRect(const QImageIOHandler* self);
bool QImageIOHandler_allocateImage(QSize* size, int format, QImage* image);
bool QImageIOHandler_virtualbase_canRead(const void* self);
bool QImageIOHandler_virtualbase_read(void* self, QImage* image);
bool QImageIOHandler_virtualbase_write(void* self, QImage* image);
QVariant* QImageIOHandler_virtualbase_option(const void* self, int option);
void QImageIOHandler_virtualbase_setOption(void* self, int option, QVariant* value);
bool QImageIOHandler_virtualbase_supportsOption(const void* self, int option);
bool QImageIOHandler_virtualbase_jumpToNextImage(void* self);
bool QImageIOHandler_virtualbase_jumpToImage(void* self, int imageNumber);
int QImageIOHandler_virtualbase_loopCount(const void* self);
int QImageIOHandler_virtualbase_imageCount(const void* self);
int QImageIOHandler_virtualbase_nextImageDelay(const void* self);
int QImageIOHandler_virtualbase_currentImageNumber(const void* self);
QRect* QImageIOHandler_virtualbase_currentImageRect(const void* self);
void QImageIOHandler_delete(QImageIOHandler* self);

struct QImageIOPlugin_VTable {
	void (*destructor)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self);
	QMetaObject* (*metaObject)(struct QImageIOPlugin_VTable* vtbl, const QImageIOPlugin* self);
	void* (*metacast)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, const char* param1);
	int (*metacall)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, int param1, int param2, void** param3);
	int (*capabilities)(struct QImageIOPlugin_VTable* vtbl, const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
	QImageIOHandler* (*create)(struct QImageIOPlugin_VTable* vtbl, const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
	bool (*event)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QEvent* event);
	bool (*eventFilter)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QTimerEvent* event);
	void (*childEvent)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QChildEvent* event);
	void (*customEvent)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QEvent* event);
	void (*connectNotify)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QImageIOPlugin_VTable* vtbl, QImageIOPlugin* self, QMetaMethod* signal);
};
QImageIOPlugin* QImageIOPlugin_new(struct QImageIOPlugin_VTable* vtbl);
QImageIOPlugin* QImageIOPlugin_new2(struct QImageIOPlugin_VTable* vtbl, QObject* parent);
void QImageIOPlugin_virtbase(QImageIOPlugin* src, QObject** outptr_QObject);
QMetaObject* QImageIOPlugin_metaObject(const QImageIOPlugin* self);
void* QImageIOPlugin_metacast(QImageIOPlugin* self, const char* param1);
int QImageIOPlugin_metacall(QImageIOPlugin* self, int param1, int param2, void** param3);
struct miqt_string QImageIOPlugin_tr(const char* s);
int QImageIOPlugin_capabilities(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
QImageIOHandler* QImageIOPlugin_create(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
struct miqt_string QImageIOPlugin_tr2(const char* s, const char* c);
struct miqt_string QImageIOPlugin_tr3(const char* s, const char* c, int n);
QMetaObject* QImageIOPlugin_virtualbase_metaObject(const void* self);
void* QImageIOPlugin_virtualbase_metacast(void* self, const char* param1);
int QImageIOPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QImageIOPlugin_virtualbase_capabilities(const void* self, QIODevice* device, struct miqt_string format);
QImageIOHandler* QImageIOPlugin_virtualbase_create(const void* self, QIODevice* device, struct miqt_string format);
bool QImageIOPlugin_virtualbase_event(void* self, QEvent* event);
bool QImageIOPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QImageIOPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QImageIOPlugin_virtualbase_childEvent(void* self, QChildEvent* event);
void QImageIOPlugin_virtualbase_customEvent(void* self, QEvent* event);
void QImageIOPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QImageIOPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QImageIOPlugin_protectedbase_sender(const void* self);
int QImageIOPlugin_protectedbase_senderSignalIndex(const void* self);
int QImageIOPlugin_protectedbase_receivers(const void* self, const char* signal);
bool QImageIOPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QImageIOPlugin_staticMetaObject();
void QImageIOPlugin_delete(QImageIOPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
