#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QIMAGECAPTURE_H
#define SEAQT_QTMULTIMEDIA_GEN_QIMAGECAPTURE_H

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
class QImageCapture;
class QMediaCaptureSession;
class QMediaMetaData;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSize;
class QTimerEvent;
class QVideoFrame;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QImage QImage;
typedef struct QImageCapture QImageCapture;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMediaMetaData QMediaMetaData;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
#endif

struct QImageCapture_VTable {
	void (*destructor)(struct QImageCapture_VTable* vtbl, QImageCapture* self);
	QMetaObject* (*metaObject)(struct QImageCapture_VTable* vtbl, const QImageCapture* self);
	void* (*metacast)(struct QImageCapture_VTable* vtbl, QImageCapture* self, const char* param1);
	int (*metacall)(struct QImageCapture_VTable* vtbl, QImageCapture* self, int param1, int param2, void** param3);
	bool (*event)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QEvent* event);
	bool (*eventFilter)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QTimerEvent* event);
	void (*childEvent)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QChildEvent* event);
	void (*customEvent)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QEvent* event);
	void (*connectNotify)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QImageCapture_VTable* vtbl, QImageCapture* self, QMetaMethod* signal);
};
QImageCapture* QImageCapture_new(struct QImageCapture_VTable* vtbl);
QImageCapture* QImageCapture_new2(struct QImageCapture_VTable* vtbl, QObject* parent);
void QImageCapture_virtbase(QImageCapture* src, QObject** outptr_QObject);
QMetaObject* QImageCapture_metaObject(const QImageCapture* self);
void* QImageCapture_metacast(QImageCapture* self, const char* param1);
int QImageCapture_metacall(QImageCapture* self, int param1, int param2, void** param3);
struct miqt_string QImageCapture_tr(const char* s);
bool QImageCapture_isAvailable(const QImageCapture* self);
QMediaCaptureSession* QImageCapture_captureSession(const QImageCapture* self);
int QImageCapture_error(const QImageCapture* self);
struct miqt_string QImageCapture_errorString(const QImageCapture* self);
bool QImageCapture_isReadyForCapture(const QImageCapture* self);
int QImageCapture_fileFormat(const QImageCapture* self);
void QImageCapture_setFileFormat(QImageCapture* self, int format);
struct miqt_array /* of int */  QImageCapture_supportedFormats();
struct miqt_string QImageCapture_fileFormatName(int c);
struct miqt_string QImageCapture_fileFormatDescription(int c);
QSize* QImageCapture_resolution(const QImageCapture* self);
void QImageCapture_setResolution(QImageCapture* self, QSize* resolution);
void QImageCapture_setResolution2(QImageCapture* self, int width, int height);
int QImageCapture_quality(const QImageCapture* self);
void QImageCapture_setQuality(QImageCapture* self, int quality);
QMediaMetaData* QImageCapture_metaData(const QImageCapture* self);
void QImageCapture_setMetaData(QImageCapture* self, QMediaMetaData* metaData);
void QImageCapture_addMetaData(QImageCapture* self, QMediaMetaData* metaData);
int QImageCapture_captureToFile(QImageCapture* self);
int QImageCapture_capture(QImageCapture* self);
void QImageCapture_errorChanged(QImageCapture* self);
void QImageCapture_connect_errorChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QImageCapture_errorOccurred(QImageCapture* self, int id, int error, struct miqt_string errorString);
void QImageCapture_connect_errorOccurred(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct miqt_string), void (*release)(intptr_t));
void QImageCapture_readyForCaptureChanged(QImageCapture* self, bool ready);
void QImageCapture_connect_readyForCaptureChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QImageCapture_metaDataChanged(QImageCapture* self);
void QImageCapture_connect_metaDataChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QImageCapture_fileFormatChanged(QImageCapture* self);
void QImageCapture_connect_fileFormatChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QImageCapture_qualityChanged(QImageCapture* self);
void QImageCapture_connect_qualityChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QImageCapture_resolutionChanged(QImageCapture* self);
void QImageCapture_connect_resolutionChanged(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QImageCapture_imageExposed(QImageCapture* self, int id);
void QImageCapture_connect_imageExposed(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QImageCapture_imageCaptured(QImageCapture* self, int id, QImage* preview);
void QImageCapture_connect_imageCaptured(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int, QImage*), void (*release)(intptr_t));
void QImageCapture_imageMetadataAvailable(QImageCapture* self, int id, QMediaMetaData* metaData);
void QImageCapture_connect_imageMetadataAvailable(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int, QMediaMetaData*), void (*release)(intptr_t));
void QImageCapture_imageAvailable(QImageCapture* self, int id, QVideoFrame* frame);
void QImageCapture_connect_imageAvailable(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int, QVideoFrame*), void (*release)(intptr_t));
void QImageCapture_imageSaved(QImageCapture* self, int id, struct miqt_string fileName);
void QImageCapture_connect_imageSaved(QImageCapture* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t));
struct miqt_string QImageCapture_tr2(const char* s, const char* c);
struct miqt_string QImageCapture_tr3(const char* s, const char* c, int n);
int QImageCapture_captureToFile1(QImageCapture* self, struct miqt_string location);
QMetaObject* QImageCapture_virtualbase_metaObject(const void* self);
void* QImageCapture_virtualbase_metacast(void* self, const char* param1);
int QImageCapture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QImageCapture_virtualbase_event(void* self, QEvent* event);
bool QImageCapture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QImageCapture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QImageCapture_virtualbase_childEvent(void* self, QChildEvent* event);
void QImageCapture_virtualbase_customEvent(void* self, QEvent* event);
void QImageCapture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QImageCapture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QImageCapture_protectedbase_sender(const void* self);
int QImageCapture_protectedbase_senderSignalIndex(const void* self);
int QImageCapture_protectedbase_receivers(const void* self, const char* signal);
bool QImageCapture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QImageCapture_staticMetaObject();
void QImageCapture_delete(QImageCapture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
