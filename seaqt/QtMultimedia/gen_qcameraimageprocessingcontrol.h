#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAIMAGEPROCESSINGCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAIMAGEPROCESSINGCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraImageProcessingControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QCameraImageProcessingControl QCameraImageProcessingControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QCameraImageProcessingControl_virtbase(QCameraImageProcessingControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraImageProcessingControl_metaObject(const QCameraImageProcessingControl* self);
void* QCameraImageProcessingControl_metacast(QCameraImageProcessingControl* self, const char* param1);
int QCameraImageProcessingControl_metacall(QCameraImageProcessingControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraImageProcessingControl_tr_s(const char* s);
struct seaqt_string QCameraImageProcessingControl_trUtf8_s(const char* s);
bool QCameraImageProcessingControl_isParameterSupported(const QCameraImageProcessingControl* self, int param1);
bool QCameraImageProcessingControl_isParameterValueSupported(const QCameraImageProcessingControl* self, int parameter, QVariant* value);
QVariant* QCameraImageProcessingControl_parameter(const QCameraImageProcessingControl* self, int parameter);
void QCameraImageProcessingControl_setParameter(QCameraImageProcessingControl* self, int parameter, QVariant* value);
struct seaqt_string QCameraImageProcessingControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraImageProcessingControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraImageProcessingControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraImageProcessingControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QCameraImageProcessingControl_staticMetaObject();
void QCameraImageProcessingControl_delete(QCameraImageProcessingControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
