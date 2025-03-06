#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERA_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoSurface;
class QCamera;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QCamera__FrameRateRange)
typedef QCamera::FrameRateRange QCamera__FrameRateRange;
#else
class QCamera__FrameRateRange;
#endif
class QCameraExposure;
class QCameraFocus;
class QCameraImageProcessing;
class QCameraInfo;
class QCameraViewfinderSettings;
class QChildEvent;
class QEvent;
class QMediaObject;
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSize;
class QTimerEvent;
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QCamera QCamera;
typedef struct QCamera__FrameRateRange QCamera__FrameRateRange;
typedef struct QCameraExposure QCameraExposure;
typedef struct QCameraFocus QCameraFocus;
typedef struct QCameraImageProcessing QCameraImageProcessing;
typedef struct QCameraInfo QCameraInfo;
typedef struct QCameraViewfinderSettings QCameraViewfinderSettings;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QCamera_VTable {
	void (*destructor)(struct QCamera_VTable* vtbl, QCamera* self);
	QMetaObject* (*metaObject)(struct QCamera_VTable* vtbl, const QCamera* self);
	void* (*metacast)(struct QCamera_VTable* vtbl, QCamera* self, const char* param1);
	int (*metacall)(struct QCamera_VTable* vtbl, QCamera* self, int param1, int param2, void** param3);
	int (*availability)(struct QCamera_VTable* vtbl, const QCamera* self);
	bool (*isAvailable)(struct QCamera_VTable* vtbl, const QCamera* self);
	QMediaService* (*service)(struct QCamera_VTable* vtbl, const QCamera* self);
	bool (*bind)(struct QCamera_VTable* vtbl, QCamera* self, QObject* param1);
	void (*unbind)(struct QCamera_VTable* vtbl, QCamera* self, QObject* param1);
	bool (*event)(struct QCamera_VTable* vtbl, QCamera* self, QEvent* event);
	bool (*eventFilter)(struct QCamera_VTable* vtbl, QCamera* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QCamera_VTable* vtbl, QCamera* self, QTimerEvent* event);
	void (*childEvent)(struct QCamera_VTable* vtbl, QCamera* self, QChildEvent* event);
	void (*customEvent)(struct QCamera_VTable* vtbl, QCamera* self, QEvent* event);
	void (*connectNotify)(struct QCamera_VTable* vtbl, QCamera* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCamera_VTable* vtbl, QCamera* self, QMetaMethod* signal);
};
QCamera* QCamera_new(struct QCamera_VTable* vtbl);
QCamera* QCamera_new2(struct QCamera_VTable* vtbl, struct miqt_string deviceName);
QCamera* QCamera_new3(struct QCamera_VTable* vtbl, QCameraInfo* cameraInfo);
QCamera* QCamera_new4(struct QCamera_VTable* vtbl, int position);
QCamera* QCamera_new5(struct QCamera_VTable* vtbl, QObject* parent);
QCamera* QCamera_new6(struct QCamera_VTable* vtbl, struct miqt_string deviceName, QObject* parent);
QCamera* QCamera_new7(struct QCamera_VTable* vtbl, QCameraInfo* cameraInfo, QObject* parent);
QCamera* QCamera_new8(struct QCamera_VTable* vtbl, int position, QObject* parent);
void QCamera_virtbase(QCamera* src, QMediaObject** outptr_QMediaObject);
QMetaObject* QCamera_metaObject(const QCamera* self);
void* QCamera_metacast(QCamera* self, const char* param1);
int QCamera_metacall(QCamera* self, int param1, int param2, void** param3);
struct miqt_string QCamera_tr(const char* s);
struct miqt_string QCamera_trUtf8(const char* s);
struct miqt_array /* of struct miqt_string */  QCamera_availableDevices();
struct miqt_string QCamera_deviceDescription(struct miqt_string device);
int QCamera_availability(const QCamera* self);
int QCamera_state(const QCamera* self);
int QCamera_status(const QCamera* self);
int QCamera_captureMode(const QCamera* self);
bool QCamera_isCaptureModeSupported(const QCamera* self, int mode);
QCameraExposure* QCamera_exposure(const QCamera* self);
QCameraFocus* QCamera_focus(const QCamera* self);
QCameraImageProcessing* QCamera_imageProcessing(const QCamera* self);
void QCamera_setViewfinder(QCamera* self, QVideoWidget* viewfinder);
void QCamera_setViewfinderWithViewfinder(QCamera* self, QGraphicsVideoItem* viewfinder);
void QCamera_setViewfinderWithSurface(QCamera* self, QAbstractVideoSurface* surface);
QCameraViewfinderSettings* QCamera_viewfinderSettings(const QCamera* self);
void QCamera_setViewfinderSettings(QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of QCameraViewfinderSettings* */  QCamera_supportedViewfinderSettings(const QCamera* self);
struct miqt_array /* of QSize* */  QCamera_supportedViewfinderResolutions(const QCamera* self);
struct miqt_array /* of QCamera__FrameRateRange* */  QCamera_supportedViewfinderFrameRateRanges(const QCamera* self);
struct miqt_array /* of int */  QCamera_supportedViewfinderPixelFormats(const QCamera* self);
int QCamera_error(const QCamera* self);
struct miqt_string QCamera_errorString(const QCamera* self);
int QCamera_supportedLocks(const QCamera* self);
int QCamera_requestedLocks(const QCamera* self);
int QCamera_lockStatus(const QCamera* self);
int QCamera_lockStatusWithLock(const QCamera* self, int lock);
void QCamera_setCaptureMode(QCamera* self, int mode);
void QCamera_load(QCamera* self);
void QCamera_unload(QCamera* self);
void QCamera_start(QCamera* self);
void QCamera_stop(QCamera* self);
void QCamera_searchAndLock(QCamera* self);
void QCamera_unlock(QCamera* self);
void QCamera_searchAndLockWithLocks(QCamera* self, int locks);
void QCamera_unlockWithLocks(QCamera* self, int locks);
void QCamera_stateChanged(QCamera* self, int state);
void QCamera_connect_stateChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_captureModeChanged(QCamera* self, int param1);
void QCamera_connect_captureModeChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_statusChanged(QCamera* self, int status);
void QCamera_connect_statusChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_locked(QCamera* self);
void QCamera_connect_locked(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_lockFailed(QCamera* self);
void QCamera_connect_lockFailed(QCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_lockStatusChanged(QCamera* self, int status, int reason);
void QCamera_connect_lockStatusChanged(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QCamera_lockStatusChanged2(QCamera* self, int lock, int status, int reason);
void QCamera_connect_lockStatusChanged2(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t));
void QCamera_errorWithQCameraError(QCamera* self, int param1);
void QCamera_connect_errorWithQCameraError(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_errorOccurred(QCamera* self, int param1);
void QCamera_connect_errorOccurred(QCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QCamera_tr2(const char* s, const char* c);
struct miqt_string QCamera_tr3(const char* s, const char* c, int n);
struct miqt_string QCamera_trUtf82(const char* s, const char* c);
struct miqt_string QCamera_trUtf83(const char* s, const char* c, int n);
struct miqt_array /* of QCameraViewfinderSettings* */  QCamera_supportedViewfinderSettings1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of QSize* */  QCamera_supportedViewfinderResolutions1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of QCamera__FrameRateRange* */  QCamera_supportedViewfinderFrameRateRanges1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of int */  QCamera_supportedViewfinderPixelFormats1(const QCamera* self, QCameraViewfinderSettings* settings);
QMetaObject* QCamera_virtualbase_metaObject(const void* self);
void* QCamera_virtualbase_metacast(void* self, const char* param1);
int QCamera_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QCamera_virtualbase_availability(const void* self);
bool QCamera_virtualbase_isAvailable(const void* self);
QMediaService* QCamera_virtualbase_service(const void* self);
bool QCamera_virtualbase_bind(void* self, QObject* param1);
void QCamera_virtualbase_unbind(void* self, QObject* param1);
bool QCamera_virtualbase_event(void* self, QEvent* event);
bool QCamera_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCamera_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCamera_virtualbase_childEvent(void* self, QChildEvent* event);
void QCamera_virtualbase_customEvent(void* self, QEvent* event);
void QCamera_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCamera_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QCamera_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
void QCamera_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
QObject* QCamera_protectedbase_sender(const void* self);
int QCamera_protectedbase_senderSignalIndex(const void* self);
int QCamera_protectedbase_receivers(const void* self, const char* signal);
bool QCamera_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QCamera_staticMetaObject();
void QCamera_delete(QCamera* self);

QCamera__FrameRateRange* QCamera__FrameRateRange_new();
QCamera__FrameRateRange* QCamera__FrameRateRange_new2(double minimum, double maximum);
QCamera__FrameRateRange* QCamera__FrameRateRange_new3(QCamera__FrameRateRange* param1);
void QCamera__FrameRateRange_delete(QCamera__FrameRateRange* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
