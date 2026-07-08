#pragma once
#ifndef SEAQT_QTGUI_GEN_QMATRIX4X4_H
#define SEAQT_QTGUI_GEN_QMATRIX4X4_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMatrix4x4;
class QPoint;
class QPointF;
class QQuaternion;
class QRect;
class QRectF;
class QTransform;
class QVariant;
class QVector3D;
class QVector4D;
#else
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QQuaternion QQuaternion;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QMatrix4x4* QMatrix4x4_new();
QMatrix4x4* QMatrix4x4_new_Qt_Initialization(int param1);
QMatrix4x4* QMatrix4x4_new_float(const float* values);
QMatrix4x4* QMatrix4x4_new_float_float_float_float_float_float_float_float_float_float_float_float_float_float_float_float(float m11, float m12, float m13, float m14, float m21, float m22, float m23, float m24, float m31, float m32, float m33, float m34, float m41, float m42, float m43, float m44);
QMatrix4x4* QMatrix4x4_new_float_int_int(const float* values, int cols, int rows);
QMatrix4x4* QMatrix4x4_new_QTransform(QTransform* transform);
QMatrix4x4* QMatrix4x4_new_QMatrix4x4(QMatrix4x4* from);

QVector4D* QMatrix4x4_column(const QMatrix4x4* self, int index);
void QMatrix4x4_setColumn(QMatrix4x4* self, int index, QVector4D* value);
QVector4D* QMatrix4x4_row(const QMatrix4x4* self, int index);
void QMatrix4x4_setRow(QMatrix4x4* self, int index, QVector4D* value);
bool QMatrix4x4_isAffine(const QMatrix4x4* self);
bool QMatrix4x4_isIdentity(const QMatrix4x4* self);
void QMatrix4x4_setToIdentity(QMatrix4x4* self);
void QMatrix4x4_fill(QMatrix4x4* self, float value);
double QMatrix4x4_determinant(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_inverted(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_transposed(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_operatorPlusAssign(QMatrix4x4* self, QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_operatorMinusAssign(QMatrix4x4* self, QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_operatorMultiplyAssign_other(QMatrix4x4* self, QMatrix4x4* other);
QMatrix4x4* QMatrix4x4_operatorMultiplyAssign_factor(QMatrix4x4* self, float factor);
QMatrix4x4* QMatrix4x4_operatorDivideAssign(QMatrix4x4* self, float divisor);
bool QMatrix4x4_operatorEqual(const QMatrix4x4* self, QMatrix4x4* other);
bool QMatrix4x4_operatorNotEqual(const QMatrix4x4* self, QMatrix4x4* other);
void QMatrix4x4_scale_vector(QMatrix4x4* self, QVector3D* vector);
void QMatrix4x4_translate_vector(QMatrix4x4* self, QVector3D* vector);
void QMatrix4x4_rotate_angle_vector(QMatrix4x4* self, float angle, QVector3D* vector);
void QMatrix4x4_scale_x_y(QMatrix4x4* self, float x, float y);
void QMatrix4x4_scale_x_y_z(QMatrix4x4* self, float x, float y, float z);
void QMatrix4x4_scale_factor(QMatrix4x4* self, float factor);
void QMatrix4x4_translate_x_y(QMatrix4x4* self, float x, float y);
void QMatrix4x4_translate_x_y_z(QMatrix4x4* self, float x, float y, float z);
void QMatrix4x4_rotate_angle_x_y(QMatrix4x4* self, float angle, float x, float y);
void QMatrix4x4_rotate_quaternion(QMatrix4x4* self, QQuaternion* quaternion);
void QMatrix4x4_ortho_QRect(QMatrix4x4* self, QRect* rect);
void QMatrix4x4_ortho_QRectF(QMatrix4x4* self, QRectF* rect);
void QMatrix4x4_ortho_float_float_float_float_float_float(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
void QMatrix4x4_frustum(QMatrix4x4* self, float left, float right, float bottom, float top, float nearPlane, float farPlane);
void QMatrix4x4_perspective(QMatrix4x4* self, float verticalAngle, float aspectRatio, float nearPlane, float farPlane);
void QMatrix4x4_lookAt(QMatrix4x4* self, QVector3D* eye, QVector3D* center, QVector3D* up);
void QMatrix4x4_viewport_rect(QMatrix4x4* self, QRectF* rect);
void QMatrix4x4_viewport_left_bottom_width_height(QMatrix4x4* self, float left, float bottom, float width, float height);
void QMatrix4x4_flipCoordinates(QMatrix4x4* self);
void QMatrix4x4_copyDataTo(const QMatrix4x4* self, float* values);
QTransform* QMatrix4x4_toTransform(const QMatrix4x4* self);
QTransform* QMatrix4x4_toTransform_distanceToPlane(const QMatrix4x4* self, float distanceToPlane);
QPoint* QMatrix4x4_map_QPoint(const QMatrix4x4* self, QPoint* point);
QPointF* QMatrix4x4_map_QPointF(const QMatrix4x4* self, QPointF* point);
QVector3D* QMatrix4x4_map_QVector3D(const QMatrix4x4* self, QVector3D* point);
QVector3D* QMatrix4x4_mapVector(const QMatrix4x4* self, QVector3D* vector);
QVector4D* QMatrix4x4_map_QVector4D(const QMatrix4x4* self, QVector4D* point);
QRect* QMatrix4x4_mapRect_QRect(const QMatrix4x4* self, QRect* rect);
QRectF* QMatrix4x4_mapRect_QRectF(const QMatrix4x4* self, QRectF* rect);
float* QMatrix4x4_data(QMatrix4x4* self);
const float* QMatrix4x4_data_const(const QMatrix4x4* self);
const float* QMatrix4x4_constData(const QMatrix4x4* self);
void QMatrix4x4_optimize(QMatrix4x4* self);
QVariant* QMatrix4x4_ToQVariant(const QMatrix4x4* self);
void QMatrix4x4_projectedRotate(QMatrix4x4* self, float angle, float x, float y, float z);
int QMatrix4x4_flags(const QMatrix4x4* self);
QMatrix4x4* QMatrix4x4_inverted_invertible(const QMatrix4x4* self, bool* invertible);
void QMatrix4x4_rotate_angle_x_y_z(QMatrix4x4* self, float angle, float x, float y, float z);
void QMatrix4x4_viewport_left_bottom_width_height_nearPlane(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane);
void QMatrix4x4_viewport_left_bottom_width_height_nearPlane_farPlane(QMatrix4x4* self, float left, float bottom, float width, float height, float nearPlane, float farPlane);

void QMatrix4x4_delete(QMatrix4x4* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
