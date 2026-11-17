#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAFLASHCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAFLASHCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraFlashControl;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
#else
typedef struct QCameraFlashControl QCameraFlashControl;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
#endif

void QCameraFlashControl_virtbase(QCameraFlashControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraFlashControl_metaObject(const QCameraFlashControl* self);
void* QCameraFlashControl_metacast(QCameraFlashControl* self, const char* param1);
int QCameraFlashControl_metacall(QCameraFlashControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraFlashControl_tr_s(const char* s);
struct seaqt_string QCameraFlashControl_trUtf8_s(const char* s);
int QCameraFlashControl_flashMode(const QCameraFlashControl* self);
void QCameraFlashControl_setFlashMode(QCameraFlashControl* self, int mode);
bool QCameraFlashControl_isFlashModeSupported(const QCameraFlashControl* self, int mode);
bool QCameraFlashControl_isFlashReady(const QCameraFlashControl* self);
void QCameraFlashControl_flashReady(QCameraFlashControl* self, bool param1);
void QCameraFlashControl_connect_flashReady(QCameraFlashControl* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct seaqt_string QCameraFlashControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraFlashControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraFlashControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraFlashControl_trUtf8_s_c_n(const char* s, const char* c, int n);

const QMetaObject* QCameraFlashControl_staticMetaObject();
void QCameraFlashControl_delete(QCameraFlashControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
