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
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQImageIOHandler VirtualQImageIOHandler;
typedef struct QImageIOHandler_VTable{
	void (*destructor)(VirtualQImageIOHandler* self);
	struct miqt_string (*name)(const VirtualQImageIOHandler* self);
	bool (*canRead)(const VirtualQImageIOHandler* self);
	bool (*read)(VirtualQImageIOHandler* self, QImage* image);
	bool (*write)(VirtualQImageIOHandler* self, QImage* image);
	QVariant* (*option)(const VirtualQImageIOHandler* self, int option);
	void (*setOption)(VirtualQImageIOHandler* self, int option, QVariant* value);
	bool (*supportsOption)(const VirtualQImageIOHandler* self, int option);
	bool (*jumpToNextImage)(VirtualQImageIOHandler* self);
	bool (*jumpToImage)(VirtualQImageIOHandler* self, int imageNumber);
	int (*loopCount)(const VirtualQImageIOHandler* self);
	int (*imageCount)(const VirtualQImageIOHandler* self);
	int (*nextImageDelay)(const VirtualQImageIOHandler* self);
	int (*currentImageNumber)(const VirtualQImageIOHandler* self);
	QRect* (*currentImageRect)(const VirtualQImageIOHandler* self);
}QImageIOHandler_VTable;

const QImageIOHandler_VTable* QImageIOHandler_vtbl(const VirtualQImageIOHandler* self);
void* QImageIOHandler_vdata(const VirtualQImageIOHandler* self);
void QImageIOHandler_setVdata(VirtualQImageIOHandler* self, void* vdata);

VirtualQImageIOHandler* QImageIOHandler_new(const QImageIOHandler_VTable* vtbl, void* vdata);

void QImageIOHandler_setDevice(QImageIOHandler* self, QIODevice* device);
QIODevice* QImageIOHandler_device(const QImageIOHandler* self);
void QImageIOHandler_setFormat(QImageIOHandler* self, struct miqt_string format);
void QImageIOHandler_setFormatWithFormat(const QImageIOHandler* self, struct miqt_string format);
struct miqt_string QImageIOHandler_format(const QImageIOHandler* self);
struct miqt_string QImageIOHandler_name(const QImageIOHandler* self);
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

struct miqt_string QImageIOHandler_virtualbase_name(const VirtualQImageIOHandler* self);
bool QImageIOHandler_virtualbase_canRead(const VirtualQImageIOHandler* self);
bool QImageIOHandler_virtualbase_read(VirtualQImageIOHandler* self, QImage* image);
bool QImageIOHandler_virtualbase_write(VirtualQImageIOHandler* self, QImage* image);
QVariant* QImageIOHandler_virtualbase_option(const VirtualQImageIOHandler* self, int option);
void QImageIOHandler_virtualbase_setOption(VirtualQImageIOHandler* self, int option, QVariant* value);
bool QImageIOHandler_virtualbase_supportsOption(const VirtualQImageIOHandler* self, int option);
bool QImageIOHandler_virtualbase_jumpToNextImage(VirtualQImageIOHandler* self);
bool QImageIOHandler_virtualbase_jumpToImage(VirtualQImageIOHandler* self, int imageNumber);
int QImageIOHandler_virtualbase_loopCount(const VirtualQImageIOHandler* self);
int QImageIOHandler_virtualbase_imageCount(const VirtualQImageIOHandler* self);
int QImageIOHandler_virtualbase_nextImageDelay(const VirtualQImageIOHandler* self);
int QImageIOHandler_virtualbase_currentImageNumber(const VirtualQImageIOHandler* self);
QRect* QImageIOHandler_virtualbase_currentImageRect(const VirtualQImageIOHandler* self);

void QImageIOHandler_delete(QImageIOHandler* self);

typedef struct VirtualQImageIOPlugin VirtualQImageIOPlugin;
typedef struct QImageIOPlugin_VTable{
	void (*destructor)(VirtualQImageIOPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQImageIOPlugin* self);
	void* (*metacast)(VirtualQImageIOPlugin* self, const char* param1);
	int (*metacall)(VirtualQImageIOPlugin* self, int param1, int param2, void** param3);
	int (*capabilities)(const VirtualQImageIOPlugin* self, QIODevice* device, struct miqt_string format);
	QImageIOHandler* (*create)(const VirtualQImageIOPlugin* self, QIODevice* device, struct miqt_string format);
	bool (*event)(VirtualQImageIOPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQImageIOPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQImageIOPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQImageIOPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQImageIOPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQImageIOPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQImageIOPlugin* self, QMetaMethod* signal);
}QImageIOPlugin_VTable;

const QImageIOPlugin_VTable* QImageIOPlugin_vtbl(const VirtualQImageIOPlugin* self);
void* QImageIOPlugin_vdata(const VirtualQImageIOPlugin* self);
void QImageIOPlugin_setVdata(VirtualQImageIOPlugin* self, void* vdata);

VirtualQImageIOPlugin* QImageIOPlugin_new(const QImageIOPlugin_VTable* vtbl, void* vdata);
VirtualQImageIOPlugin* QImageIOPlugin_new2(const QImageIOPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QImageIOPlugin_virtbase(QImageIOPlugin* src, QObject** outptr_QObject);
QMetaObject* QImageIOPlugin_metaObject(const QImageIOPlugin* self);
void* QImageIOPlugin_metacast(QImageIOPlugin* self, const char* param1);
int QImageIOPlugin_metacall(QImageIOPlugin* self, int param1, int param2, void** param3);
struct miqt_string QImageIOPlugin_tr(const char* s);
struct miqt_string QImageIOPlugin_trUtf8(const char* s);
int QImageIOPlugin_capabilities(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
QImageIOHandler* QImageIOPlugin_create(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format);
struct miqt_string QImageIOPlugin_tr2(const char* s, const char* c);
struct miqt_string QImageIOPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QImageIOPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QImageIOPlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QImageIOPlugin_virtualbase_metaObject(const VirtualQImageIOPlugin* self);
void* QImageIOPlugin_virtualbase_metacast(VirtualQImageIOPlugin* self, const char* param1);
int QImageIOPlugin_virtualbase_metacall(VirtualQImageIOPlugin* self, int param1, int param2, void** param3);
int QImageIOPlugin_virtualbase_capabilities(const VirtualQImageIOPlugin* self, QIODevice* device, struct miqt_string format);
QImageIOHandler* QImageIOPlugin_virtualbase_create(const VirtualQImageIOPlugin* self, QIODevice* device, struct miqt_string format);
bool QImageIOPlugin_virtualbase_event(VirtualQImageIOPlugin* self, QEvent* event);
bool QImageIOPlugin_virtualbase_eventFilter(VirtualQImageIOPlugin* self, QObject* watched, QEvent* event);
void QImageIOPlugin_virtualbase_timerEvent(VirtualQImageIOPlugin* self, QTimerEvent* event);
void QImageIOPlugin_virtualbase_childEvent(VirtualQImageIOPlugin* self, QChildEvent* event);
void QImageIOPlugin_virtualbase_customEvent(VirtualQImageIOPlugin* self, QEvent* event);
void QImageIOPlugin_virtualbase_connectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal);
void QImageIOPlugin_virtualbase_disconnectNotify(VirtualQImageIOPlugin* self, QMetaMethod* signal);

QObject* QImageIOPlugin_protectedbase_sender(const VirtualQImageIOPlugin* self);
int QImageIOPlugin_protectedbase_senderSignalIndex(const VirtualQImageIOPlugin* self);
int QImageIOPlugin_protectedbase_receivers(const VirtualQImageIOPlugin* self, const char* signal);
bool QImageIOPlugin_protectedbase_isSignalConnected(const VirtualQImageIOPlugin* self, QMetaMethod* signal);

const QMetaObject* QImageIOPlugin_staticMetaObject();
void QImageIOPlugin_delete(QImageIOPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
