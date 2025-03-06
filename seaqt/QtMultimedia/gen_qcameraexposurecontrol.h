#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAEXPOSURECONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAEXPOSURECONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraExposureControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QVariant;
#else
typedef struct QCameraExposureControl QCameraExposureControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QCameraExposureControl_virtbase(QCameraExposureControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraExposureControl_metaObject(const QCameraExposureControl* self);
void* QCameraExposureControl_metacast(QCameraExposureControl* self, const char* param1);
int QCameraExposureControl_metacall(QCameraExposureControl* self, int param1, int param2, void** param3);
struct miqt_string QCameraExposureControl_tr(const char* s);
struct miqt_string QCameraExposureControl_trUtf8(const char* s);
bool QCameraExposureControl_isParameterSupported(const QCameraExposureControl* self, int parameter);
QVariant* QCameraExposureControl_requestedValue(const QCameraExposureControl* self, int parameter);
QVariant* QCameraExposureControl_actualValue(const QCameraExposureControl* self, int parameter);
bool QCameraExposureControl_setValue(QCameraExposureControl* self, int parameter, QVariant* value);
void QCameraExposureControl_requestedValueChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_connect_requestedValueChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCameraExposureControl_actualValueChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_connect_actualValueChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCameraExposureControl_parameterRangeChanged(QCameraExposureControl* self, int parameter);
void QCameraExposureControl_connect_parameterRangeChanged(QCameraExposureControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QCameraExposureControl_tr2(const char* s, const char* c);
struct miqt_string QCameraExposureControl_tr3(const char* s, const char* c, int n);
struct miqt_string QCameraExposureControl_trUtf82(const char* s, const char* c);
struct miqt_string QCameraExposureControl_trUtf83(const char* s, const char* c, int n);
const QMetaObject* QCameraExposureControl_staticMetaObject();
void QCameraExposureControl_delete(QCameraExposureControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
