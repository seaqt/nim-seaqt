#pragma once
#ifndef SEAQT_QTGUI_GEN_QVECTOR4D_H
#define SEAQT_QTGUI_GEN_QVECTOR4D_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPoint;
class QPointF;
class QVariant;
class QVector2D;
class QVector3D;
class QVector4D;
#else
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QVariant QVariant;
typedef struct QVector2D QVector2D;
typedef struct QVector3D QVector3D;
typedef struct QVector4D QVector4D;
#endif

QVector4D* QVector4D_new();
QVector4D* QVector4D_new_Qt_Initialization(int param1);
QVector4D* QVector4D_new_float_float_float_float(float xpos, float ypos, float zpos, float wpos);
QVector4D* QVector4D_new_QPoint(QPoint* point);
QVector4D* QVector4D_new_QPointF(QPointF* point);
QVector4D* QVector4D_new_QVector2D(QVector2D* vector);
QVector4D* QVector4D_new_QVector2D_float_float(QVector2D* vector, float zpos, float wpos);
QVector4D* QVector4D_new_QVector3D(QVector3D* vector);
QVector4D* QVector4D_new_QVector3D_float(QVector3D* vector, float wpos);
QVector4D* QVector4D_new_QVector4D(QVector4D* from);

bool QVector4D_isNull(const QVector4D* self);
float QVector4D_x(const QVector4D* self);
float QVector4D_y(const QVector4D* self);
float QVector4D_z(const QVector4D* self);
float QVector4D_w(const QVector4D* self);
void QVector4D_setX(QVector4D* self, float x);
void QVector4D_setY(QVector4D* self, float y);
void QVector4D_setZ(QVector4D* self, float z);
void QVector4D_setW(QVector4D* self, float w);
float QVector4D_operatorSubscript(const QVector4D* self, int i);
float QVector4D_length(const QVector4D* self);
float QVector4D_lengthSquared(const QVector4D* self);
QVector4D* QVector4D_normalized(const QVector4D* self);
void QVector4D_normalize(QVector4D* self);
QVector4D* QVector4D_operatorPlusAssign(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_operatorMinusAssign(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_operatorMultiplyAssign_factor(QVector4D* self, float factor);
QVector4D* QVector4D_operatorMultiplyAssign_vector(QVector4D* self, QVector4D* vector);
QVector4D* QVector4D_operatorDivideAssign_divisor(QVector4D* self, float divisor);
QVector4D* QVector4D_operatorDivideAssign_vector(QVector4D* self, QVector4D* vector);
float QVector4D_dotProduct(QVector4D* v1, QVector4D* v2);
QVector2D* QVector4D_toVector2D(const QVector4D* self);
QVector2D* QVector4D_toVector2DAffine(const QVector4D* self);
QVector3D* QVector4D_toVector3D(const QVector4D* self);
QVector3D* QVector4D_toVector3DAffine(const QVector4D* self);
QPoint* QVector4D_toPoint(const QVector4D* self);
QPointF* QVector4D_toPointF(const QVector4D* self);
QVariant* QVector4D_ToQVariant(const QVector4D* self);

void QVector4D_delete(QVector4D* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
