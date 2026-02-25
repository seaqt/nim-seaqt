#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERACAPTUREDESTINATIONCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERACAPTUREDESTINATIONCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraCaptureDestinationControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QCameraCaptureDestinationControl QCameraCaptureDestinationControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QCameraCaptureDestinationControl_virtbase(QCameraCaptureDestinationControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraCaptureDestinationControl_metaObject(const QCameraCaptureDestinationControl* self);
void* QCameraCaptureDestinationControl_metacast(QCameraCaptureDestinationControl* self, const char* param1);
int QCameraCaptureDestinationControl_metacall(QCameraCaptureDestinationControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraCaptureDestinationControl_tr_s(const char* s);
struct seaqt_string QCameraCaptureDestinationControl_trUtf8_s(const char* s);
bool QCameraCaptureDestinationControl_isCaptureDestinationSupported(const QCameraCaptureDestinationControl* self, int destination);
int QCameraCaptureDestinationControl_captureDestination(const QCameraCaptureDestinationControl* self);
void QCameraCaptureDestinationControl_setCaptureDestination(QCameraCaptureDestinationControl* self, int destination);
void QCameraCaptureDestinationControl_captureDestinationChanged(QCameraCaptureDestinationControl* self, int destination);
void QCameraCaptureDestinationControl_connect_captureDestinationChanged(QCameraCaptureDestinationControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QCameraCaptureDestinationControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraCaptureDestinationControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraCaptureDestinationControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraCaptureDestinationControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QCameraCaptureDestinationControl_staticMetaObject();
void QCameraCaptureDestinationControl_delete(QCameraCaptureDestinationControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
