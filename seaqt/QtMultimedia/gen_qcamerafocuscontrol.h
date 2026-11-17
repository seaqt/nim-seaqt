#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAFOCUSCONTROL_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAFOCUSCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCameraFocusControl;
class QCameraFocusZone;
class QMediaControl;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPointF;
#else
typedef struct QCameraFocusControl QCameraFocusControl;
typedef struct QCameraFocusZone QCameraFocusZone;
typedef struct QMediaControl QMediaControl;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPointF QPointF;
#endif

void QCameraFocusControl_virtbase(QCameraFocusControl* src, QMediaControl** outptr_QMediaControl);
QMetaObject* QCameraFocusControl_metaObject(const QCameraFocusControl* self);
void* QCameraFocusControl_metacast(QCameraFocusControl* self, const char* param1);
int QCameraFocusControl_metacall(QCameraFocusControl* self, int param1, int param2, void** param3);
struct seaqt_string QCameraFocusControl_tr_s(const char* s);
struct seaqt_string QCameraFocusControl_trUtf8_s(const char* s);
int QCameraFocusControl_focusMode(const QCameraFocusControl* self);
void QCameraFocusControl_setFocusMode(QCameraFocusControl* self, int mode);
bool QCameraFocusControl_isFocusModeSupported(const QCameraFocusControl* self, int mode);
int QCameraFocusControl_focusPointMode(const QCameraFocusControl* self);
void QCameraFocusControl_setFocusPointMode(QCameraFocusControl* self, int mode);
bool QCameraFocusControl_isFocusPointModeSupported(const QCameraFocusControl* self, int mode);
QPointF* QCameraFocusControl_customFocusPoint(const QCameraFocusControl* self);
void QCameraFocusControl_setCustomFocusPoint(QCameraFocusControl* self, QPointF* point);
struct seaqt_array /* of QCameraFocusZone* */  QCameraFocusControl_focusZones(const QCameraFocusControl* self);
void QCameraFocusControl_focusModeChanged(QCameraFocusControl* self, int mode);
void QCameraFocusControl_connect_focusModeChanged(QCameraFocusControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCameraFocusControl_focusPointModeChanged(QCameraFocusControl* self, int mode);
void QCameraFocusControl_connect_focusPointModeChanged(QCameraFocusControl* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QCameraFocusControl_customFocusPointChanged(QCameraFocusControl* self, QPointF* point);
void QCameraFocusControl_connect_customFocusPointChanged(QCameraFocusControl* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t));
void QCameraFocusControl_focusZonesChanged(QCameraFocusControl* self);
void QCameraFocusControl_connect_focusZonesChanged(QCameraFocusControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QCameraFocusControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QCameraFocusControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QCameraFocusControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QCameraFocusControl_trUtf8_s_c_n(const char* s, const char* c, int n);

void QCameraFocusControl_delete(QCameraFocusControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
