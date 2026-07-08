#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAINFOCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAINFOCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraInfoControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QCameraInfoControl QCameraInfoControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QCameraInfoControl_virtbase(QCameraInfoControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraInfoControl_metaObject(const QCameraInfoControl* self);
void* QCameraInfoControl_metacast(QCameraInfoControl* self, const char* param1);
int QCameraInfoControl_metacall(QCameraInfoControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraInfoControl_tr_s(const char* s);
struct seaqt_string QCameraInfoControl_trUtf8_s(const char* s);
int QCameraInfoControl_cameraPosition(const QCameraInfoControl* self, struct seaqt_string deviceName);
int QCameraInfoControl_cameraOrientation(const QCameraInfoControl* self, struct seaqt_string deviceName);
struct seaqt_string QCameraInfoControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraInfoControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraInfoControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraInfoControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QCameraInfoControl_delete(QCameraInfoControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
