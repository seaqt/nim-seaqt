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

typedef struct VirtualQCamera VirtualQCamera;
typedef struct QCamera_VTable{
	void (*destructor)(VirtualQCamera* self);
	QMetaObject* (*metaObject)(const VirtualQCamera* self);
	void* (*metacast)(VirtualQCamera* self, const char* param1);
	int (*metacall)(VirtualQCamera* self, int param1, int param2, void** param3);
	int (*availability)(const VirtualQCamera* self);
	bool (*isAvailable)(const VirtualQCamera* self);
	QMediaService* (*service)(const VirtualQCamera* self);
	bool (*bind)(VirtualQCamera* self, QObject* param1);
	void (*unbind)(VirtualQCamera* self, QObject* param1);
	bool (*event)(VirtualQCamera* self, QEvent* event);
	bool (*eventFilter)(VirtualQCamera* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQCamera* self, QTimerEvent* event);
	void (*childEvent)(VirtualQCamera* self, QChildEvent* event);
	void (*customEvent)(VirtualQCamera* self, QEvent* event);
	void (*connectNotify)(VirtualQCamera* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQCamera* self, QMetaMethod* signal);
}QCamera_VTable;

const QCamera_VTable* QCamera_vtbl(const VirtualQCamera* self);
void* QCamera_vdata(const VirtualQCamera* self);
void QCamera_setVdata(VirtualQCamera* self, void* vdata);

VirtualQCamera* QCamera_new(const QCamera_VTable* vtbl, void* vdata);
VirtualQCamera* QCamera_new2(const QCamera_VTable* vtbl, void* vdata, struct miqt_string deviceName);
VirtualQCamera* QCamera_new3(const QCamera_VTable* vtbl, void* vdata, QCameraInfo* cameraInfo);
VirtualQCamera* QCamera_new4(const QCamera_VTable* vtbl, void* vdata, int position);
VirtualQCamera* QCamera_new5(const QCamera_VTable* vtbl, void* vdata, QObject* parent);
VirtualQCamera* QCamera_new6(const QCamera_VTable* vtbl, void* vdata, struct miqt_string deviceName, QObject* parent);
VirtualQCamera* QCamera_new7(const QCamera_VTable* vtbl, void* vdata, QCameraInfo* cameraInfo, QObject* parent);
VirtualQCamera* QCamera_new8(const QCamera_VTable* vtbl, void* vdata, int position, QObject* parent);

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
void QCamera_connect_stateChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_captureModeChanged(QCamera* self, int param1);
void QCamera_connect_captureModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_statusChanged(QCamera* self, int status);
void QCamera_connect_statusChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_locked(QCamera* self);
void QCamera_connect_locked(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_lockFailed(QCamera* self);
void QCamera_connect_lockFailed(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_lockStatusChanged(QCamera* self, int status, int reason);
void QCamera_connect_lockStatusChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QCamera_lockStatusChanged2(QCamera* self, int lock, int status, int reason);
void QCamera_connect_lockStatusChanged2(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t));
void QCamera_errorWithQCameraError(QCamera* self, int param1);
void QCamera_connect_errorWithQCameraError(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_errorOccurred(QCamera* self, int param1);
void QCamera_connect_errorOccurred(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QCamera_tr2(const char* s, const char* c);
struct miqt_string QCamera_tr3(const char* s, const char* c, int n);
struct miqt_string QCamera_trUtf82(const char* s, const char* c);
struct miqt_string QCamera_trUtf83(const char* s, const char* c, int n);
struct miqt_array /* of QCameraViewfinderSettings* */  QCamera_supportedViewfinderSettings1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of QSize* */  QCamera_supportedViewfinderResolutions1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of QCamera__FrameRateRange* */  QCamera_supportedViewfinderFrameRateRanges1(const QCamera* self, QCameraViewfinderSettings* settings);
struct miqt_array /* of int */  QCamera_supportedViewfinderPixelFormats1(const QCamera* self, QCameraViewfinderSettings* settings);

QMetaObject* QCamera_virtualbase_metaObject(const VirtualQCamera* self);
void* QCamera_virtualbase_metacast(VirtualQCamera* self, const char* param1);
int QCamera_virtualbase_metacall(VirtualQCamera* self, int param1, int param2, void** param3);
int QCamera_virtualbase_availability(const VirtualQCamera* self);
bool QCamera_virtualbase_isAvailable(const VirtualQCamera* self);
QMediaService* QCamera_virtualbase_service(const VirtualQCamera* self);
bool QCamera_virtualbase_bind(VirtualQCamera* self, QObject* param1);
void QCamera_virtualbase_unbind(VirtualQCamera* self, QObject* param1);
bool QCamera_virtualbase_event(VirtualQCamera* self, QEvent* event);
bool QCamera_virtualbase_eventFilter(VirtualQCamera* self, QObject* watched, QEvent* event);
void QCamera_virtualbase_timerEvent(VirtualQCamera* self, QTimerEvent* event);
void QCamera_virtualbase_childEvent(VirtualQCamera* self, QChildEvent* event);
void QCamera_virtualbase_customEvent(VirtualQCamera* self, QEvent* event);
void QCamera_virtualbase_connectNotify(VirtualQCamera* self, QMetaMethod* signal);
void QCamera_virtualbase_disconnectNotify(VirtualQCamera* self, QMetaMethod* signal);

void QCamera_protectedbase_addPropertyWatch(VirtualQCamera* self, struct miqt_string name);
void QCamera_protectedbase_removePropertyWatch(VirtualQCamera* self, struct miqt_string name);
QObject* QCamera_protectedbase_sender(const VirtualQCamera* self);
int QCamera_protectedbase_senderSignalIndex(const VirtualQCamera* self);
int QCamera_protectedbase_receivers(const VirtualQCamera* self, const char* signal);
bool QCamera_protectedbase_isSignalConnected(const VirtualQCamera* self, QMetaMethod* signal);

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
