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
class QCamera;
class QCameraDevice;
class QCameraFormat;
class QChildEvent;
class QEvent;
class QMediaCaptureSession;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPointF;
class QTimerEvent;
#else
typedef struct QCamera QCamera;
typedef struct QCameraDevice QCameraDevice;
typedef struct QCameraFormat QCameraFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQCamera VirtualQCamera;
typedef struct QCamera_VTable{
	void (*destructor)(VirtualQCamera* self);
	QMetaObject* (*metaObject)(const VirtualQCamera* self);
	void* (*metacast)(VirtualQCamera* self, const char* param1);
	int (*metacall)(VirtualQCamera* self, int param1, int param2, void** param3);
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
VirtualQCamera* QCamera_new2(const QCamera_VTable* vtbl, void* vdata, QCameraDevice* cameraDevice);
VirtualQCamera* QCamera_new3(const QCamera_VTable* vtbl, void* vdata, int position);
VirtualQCamera* QCamera_new4(const QCamera_VTable* vtbl, void* vdata, QObject* parent);
VirtualQCamera* QCamera_new5(const QCamera_VTable* vtbl, void* vdata, QCameraDevice* cameraDevice, QObject* parent);
VirtualQCamera* QCamera_new6(const QCamera_VTable* vtbl, void* vdata, int position, QObject* parent);

void QCamera_virtbase(QCamera* src, QObject** outptr_QObject);
QMetaObject* QCamera_metaObject(const QCamera* self);
void* QCamera_metacast(QCamera* self, const char* param1);
int QCamera_metacall(QCamera* self, int param1, int param2, void** param3);
struct miqt_string QCamera_tr(const char* s);
bool QCamera_isAvailable(const QCamera* self);
bool QCamera_isActive(const QCamera* self);
QMediaCaptureSession* QCamera_captureSession(const QCamera* self);
QCameraDevice* QCamera_cameraDevice(const QCamera* self);
void QCamera_setCameraDevice(QCamera* self, QCameraDevice* cameraDevice);
QCameraFormat* QCamera_cameraFormat(const QCamera* self);
void QCamera_setCameraFormat(QCamera* self, QCameraFormat* format);
int QCamera_error(const QCamera* self);
struct miqt_string QCamera_errorString(const QCamera* self);
int QCamera_supportedFeatures(const QCamera* self);
int QCamera_focusMode(const QCamera* self);
void QCamera_setFocusMode(QCamera* self, int mode);
bool QCamera_isFocusModeSupported(const QCamera* self, int mode);
QPointF* QCamera_focusPoint(const QCamera* self);
QPointF* QCamera_customFocusPoint(const QCamera* self);
void QCamera_setCustomFocusPoint(QCamera* self, QPointF* point);
void QCamera_setFocusDistance(QCamera* self, float d);
float QCamera_focusDistance(const QCamera* self);
float QCamera_minimumZoomFactor(const QCamera* self);
float QCamera_maximumZoomFactor(const QCamera* self);
float QCamera_zoomFactor(const QCamera* self);
void QCamera_setZoomFactor(QCamera* self, float factor);
int QCamera_flashMode(const QCamera* self);
bool QCamera_isFlashModeSupported(const QCamera* self, int mode);
bool QCamera_isFlashReady(const QCamera* self);
int QCamera_torchMode(const QCamera* self);
bool QCamera_isTorchModeSupported(const QCamera* self, int mode);
int QCamera_exposureMode(const QCamera* self);
bool QCamera_isExposureModeSupported(const QCamera* self, int mode);
float QCamera_exposureCompensation(const QCamera* self);
int QCamera_isoSensitivity(const QCamera* self);
int QCamera_manualIsoSensitivity(const QCamera* self);
float QCamera_exposureTime(const QCamera* self);
float QCamera_manualExposureTime(const QCamera* self);
int QCamera_minimumIsoSensitivity(const QCamera* self);
int QCamera_maximumIsoSensitivity(const QCamera* self);
float QCamera_minimumExposureTime(const QCamera* self);
float QCamera_maximumExposureTime(const QCamera* self);
int QCamera_whiteBalanceMode(const QCamera* self);
bool QCamera_isWhiteBalanceModeSupported(const QCamera* self, int mode);
int QCamera_colorTemperature(const QCamera* self);
void QCamera_setActive(QCamera* self, bool active);
void QCamera_start(QCamera* self);
void QCamera_stop(QCamera* self);
void QCamera_zoomTo(QCamera* self, float zoom, float rate);
void QCamera_setFlashMode(QCamera* self, int mode);
void QCamera_setTorchMode(QCamera* self, int mode);
void QCamera_setExposureMode(QCamera* self, int mode);
void QCamera_setExposureCompensation(QCamera* self, float ev);
void QCamera_setManualIsoSensitivity(QCamera* self, int iso);
void QCamera_setAutoIsoSensitivity(QCamera* self);
void QCamera_setManualExposureTime(QCamera* self, float seconds);
void QCamera_setAutoExposureTime(QCamera* self);
void QCamera_setWhiteBalanceMode(QCamera* self, int mode);
void QCamera_setColorTemperature(QCamera* self, int colorTemperature);
void QCamera_activeChanged(QCamera* self, bool param1);
void QCamera_connect_activeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QCamera_errorChanged(QCamera* self);
void QCamera_connect_errorChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_errorOccurred(QCamera* self, int error, struct miqt_string errorString);
void QCamera_connect_errorOccurred(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int, struct miqt_string), void (*release)(intptr_t));
void QCamera_cameraDeviceChanged(QCamera* self);
void QCamera_connect_cameraDeviceChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_cameraFormatChanged(QCamera* self);
void QCamera_connect_cameraFormatChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_supportedFeaturesChanged(QCamera* self);
void QCamera_connect_supportedFeaturesChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_focusModeChanged(QCamera* self);
void QCamera_connect_focusModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_zoomFactorChanged(QCamera* self, float param1);
void QCamera_connect_zoomFactorChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_minimumZoomFactorChanged(QCamera* self, float param1);
void QCamera_connect_minimumZoomFactorChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_maximumZoomFactorChanged(QCamera* self, float param1);
void QCamera_connect_maximumZoomFactorChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_focusDistanceChanged(QCamera* self, float param1);
void QCamera_connect_focusDistanceChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_focusPointChanged(QCamera* self);
void QCamera_connect_focusPointChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_customFocusPointChanged(QCamera* self);
void QCamera_connect_customFocusPointChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_flashReady(QCamera* self, bool param1);
void QCamera_connect_flashReady(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QCamera_flashModeChanged(QCamera* self);
void QCamera_connect_flashModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_torchModeChanged(QCamera* self);
void QCamera_connect_torchModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_exposureTimeChanged(QCamera* self, float speed);
void QCamera_connect_exposureTimeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_manualExposureTimeChanged(QCamera* self, float speed);
void QCamera_connect_manualExposureTimeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_isoSensitivityChanged(QCamera* self, int param1);
void QCamera_connect_isoSensitivityChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_manualIsoSensitivityChanged(QCamera* self, int param1);
void QCamera_connect_manualIsoSensitivityChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCamera_exposureCompensationChanged(QCamera* self, float param1);
void QCamera_connect_exposureCompensationChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t));
void QCamera_exposureModeChanged(QCamera* self);
void QCamera_connect_exposureModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_whiteBalanceModeChanged(const QCamera* self);
void QCamera_connect_whiteBalanceModeChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_colorTemperatureChanged(const QCamera* self);
void QCamera_connect_colorTemperatureChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_brightnessChanged(QCamera* self);
void QCamera_connect_brightnessChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_contrastChanged(QCamera* self);
void QCamera_connect_contrastChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_saturationChanged(QCamera* self);
void QCamera_connect_saturationChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QCamera_hueChanged(QCamera* self);
void QCamera_connect_hueChanged(VirtualQCamera* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QCamera_tr2(const char* s, const char* c);
struct miqt_string QCamera_tr3(const char* s, const char* c, int n);

QMetaObject* QCamera_virtualbase_metaObject(const VirtualQCamera* self);
void* QCamera_virtualbase_metacast(VirtualQCamera* self, const char* param1);
int QCamera_virtualbase_metacall(VirtualQCamera* self, int param1, int param2, void** param3);
bool QCamera_virtualbase_event(VirtualQCamera* self, QEvent* event);
bool QCamera_virtualbase_eventFilter(VirtualQCamera* self, QObject* watched, QEvent* event);
void QCamera_virtualbase_timerEvent(VirtualQCamera* self, QTimerEvent* event);
void QCamera_virtualbase_childEvent(VirtualQCamera* self, QChildEvent* event);
void QCamera_virtualbase_customEvent(VirtualQCamera* self, QEvent* event);
void QCamera_virtualbase_connectNotify(VirtualQCamera* self, QMetaMethod* signal);
void QCamera_virtualbase_disconnectNotify(VirtualQCamera* self, QMetaMethod* signal);

QObject* QCamera_protectedbase_sender(const VirtualQCamera* self);
int QCamera_protectedbase_senderSignalIndex(const VirtualQCamera* self);
int QCamera_protectedbase_receivers(const VirtualQCamera* self, const char* signal);
bool QCamera_protectedbase_isSignalConnected(const VirtualQCamera* self, QMetaMethod* signal);

const QMetaObject* QCamera_staticMetaObject();
void QCamera_delete(QCamera* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
