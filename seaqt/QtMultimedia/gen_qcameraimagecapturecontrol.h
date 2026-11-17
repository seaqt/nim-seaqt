#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAIMAGECAPTURECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAIMAGECAPTURECONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraImageCaptureControl;
class QImage;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
class QVideoFrame;
#else
typedef struct QCameraImageCaptureControl QCameraImageCaptureControl;
typedef struct QImage QImage;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
typedef struct QVideoFrame QVideoFrame;
#endif

void QCameraImageCaptureControl_virtbase(QCameraImageCaptureControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraImageCaptureControl_metaObject(const QCameraImageCaptureControl* self);
void* QCameraImageCaptureControl_metacast(QCameraImageCaptureControl* self, const char* param1);
int QCameraImageCaptureControl_metacall(QCameraImageCaptureControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraImageCaptureControl_tr_s(const char* s);
struct seaqt_string QCameraImageCaptureControl_trUtf8_s(const char* s);
bool QCameraImageCaptureControl_isReadyForCapture(const QCameraImageCaptureControl* self);
int QCameraImageCaptureControl_driveMode(const QCameraImageCaptureControl* self);
void QCameraImageCaptureControl_setDriveMode(QCameraImageCaptureControl* self, int mode);
int QCameraImageCaptureControl_capture(QCameraImageCaptureControl* self, struct seaqt_string fileName);
void QCameraImageCaptureControl_cancelCapture(QCameraImageCaptureControl* self);
void QCameraImageCaptureControl_readyForCaptureChanged(QCameraImageCaptureControl* self, bool ready);
void QCameraImageCaptureControl_connect_readyForCaptureChanged(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QCameraImageCaptureControl_imageExposed(QCameraImageCaptureControl* self, int requestId);
void QCameraImageCaptureControl_connect_imageExposed(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCameraImageCaptureControl_imageCaptured(QCameraImageCaptureControl* self, int requestId, QImage* preview);
void QCameraImageCaptureControl_connect_imageCaptured(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int, QImage*), void (*release)(intptr_t));
void QCameraImageCaptureControl_imageMetadataAvailable(QCameraImageCaptureControl* self, int id, struct seaqt_string key, QVariant* value);
void QCameraImageCaptureControl_connect_imageMetadataAvailable(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string, QVariant*), void (*release)(intptr_t));
void QCameraImageCaptureControl_imageAvailable(QCameraImageCaptureControl* self, int requestId, QVideoFrame* buffer);
void QCameraImageCaptureControl_connect_imageAvailable(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int, QVideoFrame*), void (*release)(intptr_t));
void QCameraImageCaptureControl_imageSaved(QCameraImageCaptureControl* self, int requestId, struct seaqt_string fileName);
void QCameraImageCaptureControl_connect_imageSaved(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t));
void QCameraImageCaptureControl_error(QCameraImageCaptureControl* self, int id, int error, struct seaqt_string errorString);
void QCameraImageCaptureControl_connect_error(QCameraImageCaptureControl* self, intptr_t slot, void (*callback)(intptr_t, int, int, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QCameraImageCaptureControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraImageCaptureControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraImageCaptureControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraImageCaptureControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QCameraImageCaptureControl_staticMetaObject();
void QCameraImageCaptureControl_delete(QCameraImageCaptureControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
