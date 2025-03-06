#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERACAPTUREBUFFERFORMATCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERACAPTUREBUFFERFORMATCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraCaptureBufferFormatControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QCameraCaptureBufferFormatControl QCameraCaptureBufferFormatControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QCameraCaptureBufferFormatControl_virtbase(QCameraCaptureBufferFormatControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraCaptureBufferFormatControl_metaObject(const QCameraCaptureBufferFormatControl* self);
void* QCameraCaptureBufferFormatControl_metacast(QCameraCaptureBufferFormatControl* self, const char* param1);
int QCameraCaptureBufferFormatControl_metacall(QCameraCaptureBufferFormatControl* self, int param1, int param2, void** param3);
struct miqt_string QCameraCaptureBufferFormatControl_tr(const char* s);
struct miqt_string QCameraCaptureBufferFormatControl_trUtf8(const char* s);
struct miqt_array /* of int */  QCameraCaptureBufferFormatControl_supportedBufferFormats(const QCameraCaptureBufferFormatControl* self);
int QCameraCaptureBufferFormatControl_bufferFormat(const QCameraCaptureBufferFormatControl* self);
void QCameraCaptureBufferFormatControl_setBufferFormat(QCameraCaptureBufferFormatControl* self, int format);
void QCameraCaptureBufferFormatControl_bufferFormatChanged(QCameraCaptureBufferFormatControl* self, int format);
void QCameraCaptureBufferFormatControl_connect_bufferFormatChanged(QCameraCaptureBufferFormatControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QCameraCaptureBufferFormatControl_tr2(const char* s, const char* c);
struct miqt_string QCameraCaptureBufferFormatControl_tr3(const char* s, const char* c, int n);
struct miqt_string QCameraCaptureBufferFormatControl_trUtf82(const char* s, const char* c);
struct miqt_string QCameraCaptureBufferFormatControl_trUtf83(const char* s, const char* c, int n);
const QMetaObject* QCameraCaptureBufferFormatControl_staticMetaObject();
void QCameraCaptureBufferFormatControl_delete(QCameraCaptureBufferFormatControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
