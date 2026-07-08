#pragma once
#ifndef SEAQT_QTGUI_GEN_QQUATERNION_H
#define SEAQT_QTGUI_GEN_QQUATERNION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuaternion;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuaternion__Axes)
typedef QQuaternion::Axes QQuaternion__Axes;
#else
class QQuaternion__Axes;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QQuaternion__Axis)
typedef QQuaternion::Axis QQuaternion__Axis;
#else
class QQuaternion__Axis;
#endif
class QVariant;
class QVector3D;
class QVector4D;
#else
typedef struct QQuaternion QQuaternion;
typedef struct QQuaternion__Axes QQuaternion__Axes;
typedef struct QQuaternion__Axis QQuaternion__Axis;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QQuaternion* QQuaternion_new();
QQuaternion* QQuaternion_new_Qt_Initialization(int param1);
QQuaternion* QQuaternion_new_float_float_float_float(float scalar, float xpos, float ypos, float zpos);
QQuaternion* QQuaternion_new_float_QVector3D(float scalar, QVector3D* vector);
QQuaternion* QQuaternion_new_QVector4D(QVector4D* vector);
QQuaternion* QQuaternion_new_QQuaternion(QQuaternion* from);

bool QQuaternion_isNull(const QQuaternion* self);
bool QQuaternion_isIdentity(const QQuaternion* self);
QVector3D* QQuaternion_vector(const QQuaternion* self);
void QQuaternion_setVector_vector(QQuaternion* self, QVector3D* vector);
void QQuaternion_setVector_x_y_z(QQuaternion* self, float x, float y, float z);
float QQuaternion_x(const QQuaternion* self);
float QQuaternion_y(const QQuaternion* self);
float QQuaternion_z(const QQuaternion* self);
float QQuaternion_scalar(const QQuaternion* self);
void QQuaternion_setX(QQuaternion* self, float x);
void QQuaternion_setY(QQuaternion* self, float y);
void QQuaternion_setZ(QQuaternion* self, float z);
void QQuaternion_setScalar(QQuaternion* self, float scalar);
float QQuaternion_dotProduct(QQuaternion* q1, QQuaternion* q2);
float QQuaternion_length(const QQuaternion* self);
float QQuaternion_lengthSquared(const QQuaternion* self);
QQuaternion* QQuaternion_normalized(const QQuaternion* self);
void QQuaternion_normalize(QQuaternion* self);
QQuaternion* QQuaternion_inverted(const QQuaternion* self);
QQuaternion* QQuaternion_conjugated(const QQuaternion* self);
QVector3D* QQuaternion_rotatedVector(const QQuaternion* self, QVector3D* vector);
QQuaternion* QQuaternion_operatorPlusAssign(QQuaternion* self, QQuaternion* quaternion);
QQuaternion* QQuaternion_operatorMinusAssign(QQuaternion* self, QQuaternion* quaternion);
QQuaternion* QQuaternion_operatorMultiplyAssign_factor(QQuaternion* self, float factor);
QQuaternion* QQuaternion_operatorMultiplyAssign_quaternion(QQuaternion* self, QQuaternion* quaternion);
QQuaternion* QQuaternion_operatorDivideAssign(QQuaternion* self, float divisor);
QVector4D* QQuaternion_toVector4D(const QQuaternion* self);
QVariant* QQuaternion_ToQVariant(const QQuaternion* self);
void QQuaternion_getAxisAndAngle_axis_angle(const QQuaternion* self, QVector3D* axis, float* angle);
QQuaternion* QQuaternion_fromAxisAndAngle_axis_angle(QVector3D* axis, float angle);
void QQuaternion_getAxisAndAngle_x_y_z_angle(const QQuaternion* self, float* x, float* y, float* z, float* angle);
QQuaternion* QQuaternion_fromAxisAndAngle_x_y_z_angle(float x, float y, float z, float angle);
QVector3D* QQuaternion_toEulerAngles(const QQuaternion* self);
void QQuaternion_getEulerAngles(const QQuaternion* self, float* pitch, float* yaw, float* roll);
QQuaternion* QQuaternion_fromEulerAngles_pitch_yaw_roll(float pitch, float yaw, float roll);
QQuaternion__Axes* QQuaternion_toAxes(const QQuaternion* self);
QQuaternion* QQuaternion_fromAxes_axes(QQuaternion__Axes* axes);
void QQuaternion_getAxes(const QQuaternion* self, QVector3D* xAxis, QVector3D* yAxis, QVector3D* zAxis);
QQuaternion* QQuaternion_fromAxes_xAxis_yAxis_zAxis(QVector3D* xAxis, QVector3D* yAxis, QVector3D* zAxis);
QQuaternion* QQuaternion_fromDirection(QVector3D* direction, QVector3D* up);
QQuaternion* QQuaternion_rotationTo(QVector3D* from, QVector3D* to);
QQuaternion* QQuaternion_slerp(QQuaternion* q1, QQuaternion* q2, float t);
QQuaternion* QQuaternion_nlerp(QQuaternion* q1, QQuaternion* q2, float t);
void QQuaternion_operatorAssign(QQuaternion* self, QQuaternion* from);

void QQuaternion_delete(QQuaternion* self);

float QQuaternion__Axis_x(const QQuaternion__Axis* self);
void QQuaternion__Axis_setX(QQuaternion__Axis* self, float x);
float QQuaternion__Axis_y(const QQuaternion__Axis* self);
void QQuaternion__Axis_setY(QQuaternion__Axis* self, float y);
float QQuaternion__Axis_z(const QQuaternion__Axis* self);
void QQuaternion__Axis_setZ(QQuaternion__Axis* self, float z);
QQuaternion__Axis* QQuaternion__Axis_fromVector3D(QVector3D* v);
QVector3D* QQuaternion__Axis_toVector3D(const QQuaternion__Axis* self);

void QQuaternion__Axis_delete(QQuaternion__Axis* self);

QQuaternion__Axis* QQuaternion__Axes_x(const QQuaternion__Axes* self);
void QQuaternion__Axes_setX(QQuaternion__Axes* self, QQuaternion__Axis* x);
QQuaternion__Axis* QQuaternion__Axes_y(const QQuaternion__Axes* self);
void QQuaternion__Axes_setY(QQuaternion__Axes* self, QQuaternion__Axis* y);
QQuaternion__Axis* QQuaternion__Axes_z(const QQuaternion__Axes* self);
void QQuaternion__Axes_setZ(QQuaternion__Axes* self, QQuaternion__Axis* z);

void QQuaternion__Axes_delete(QQuaternion__Axes* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
