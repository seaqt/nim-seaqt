#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QCAMERAINFO_H
#define SEAQT_QTMULTIMEDIA_GEN_QCAMERAINFO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCamera;
class QCameraInfo;
#else
typedef struct QCamera QCamera;
typedef struct QCameraInfo QCameraInfo;
#endif

QCameraInfo* QCameraInfo_new();
QCameraInfo* QCameraInfo_new_camera(QCamera* camera);
QCameraInfo* QCameraInfo_new_from(QCameraInfo* from);
QCameraInfo* QCameraInfo_new_name(struct seaqt_string name);

void QCameraInfo_operatorAssign(QCameraInfo* self, QCameraInfo* from);
bool QCameraInfo_operatorEqual(const QCameraInfo* self, QCameraInfo* other);
bool QCameraInfo_operatorNotEqual(const QCameraInfo* self, QCameraInfo* other);
bool QCameraInfo_isNull(const QCameraInfo* self);
struct seaqt_string QCameraInfo_deviceName(const QCameraInfo* self);
struct seaqt_string QCameraInfo_description(const QCameraInfo* self);
int QCameraInfo_position(const QCameraInfo* self);
int QCameraInfo_orientation(const QCameraInfo* self);
QCameraInfo* QCameraInfo_defaultCamera();
struct seaqt_array /* of QCameraInfo* */  QCameraInfo_availableCameras();
struct seaqt_array /* of QCameraInfo* */  QCameraInfo_availableCameras_position(int position);

void QCameraInfo_delete(QCameraInfo* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
