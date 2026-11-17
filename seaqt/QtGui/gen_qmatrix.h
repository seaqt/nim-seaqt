#pragma once
#ifndef SEAQT_QTGUI_GEN_QMATRIX_H
#define SEAQT_QTGUI_GEN_QMATRIX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QLine;
class QLineF;
class QMatrix;
class QPainterPath;
class QPoint;
class QPointF;
class QRect;
class QRectF;
class QRegion;
class QVariant;
#else
typedef struct QLine QLine;
typedef struct QLineF QLineF;
typedef struct QMatrix QMatrix;
typedef struct QPainterPath QPainterPath;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QVariant QVariant;
#endif

QMatrix* QMatrix_new_Qt_Initialization(int param1);
QMatrix* QMatrix_new();
QMatrix* QMatrix_new_qreal_qreal_qreal_qreal_qreal_qreal(double m11, double m12, double m21, double m22, double dx, double dy);
QMatrix* QMatrix_new_QMatrix(QMatrix* from);

void QMatrix_operatorAssign(QMatrix* self, QMatrix* from);
void QMatrix_setMatrix(QMatrix* self, double m11, double m12, double m21, double m22, double dx, double dy);
double QMatrix_m11(const QMatrix* self);
double QMatrix_m12(const QMatrix* self);
double QMatrix_m21(const QMatrix* self);
double QMatrix_m22(const QMatrix* self);
double QMatrix_dx(const QMatrix* self);
double QMatrix_dy(const QMatrix* self);
void QMatrix_map_int_int_int_int(const QMatrix* self, int x, int y, int* tx, int* ty);
void QMatrix_map_qreal_qreal_qreal_qreal(const QMatrix* self, double x, double y, double* tx, double* ty);
QRect* QMatrix_mapRect_QRect(const QMatrix* self, QRect* param1);
QRectF* QMatrix_mapRect_QRectF(const QMatrix* self, QRectF* param1);
QPoint* QMatrix_map_QPoint(const QMatrix* self, QPoint* p);
QPointF* QMatrix_map_QPointF(const QMatrix* self, QPointF* p);
QLine* QMatrix_map_QLine(const QMatrix* self, QLine* l);
QLineF* QMatrix_map_QLineF(const QMatrix* self, QLineF* l);
QRegion* QMatrix_map_QRegion(const QMatrix* self, QRegion* r);
QPainterPath* QMatrix_map_QPainterPath(const QMatrix* self, QPainterPath* p);
void QMatrix_reset(QMatrix* self);
bool QMatrix_isIdentity(const QMatrix* self);
QMatrix* QMatrix_translate(QMatrix* self, double dx, double dy);
QMatrix* QMatrix_scale(QMatrix* self, double sx, double sy);
QMatrix* QMatrix_shear(QMatrix* self, double sh, double sv);
QMatrix* QMatrix_rotate(QMatrix* self, double a);
bool QMatrix_isInvertible(const QMatrix* self);
double QMatrix_determinant(const QMatrix* self);
QMatrix* QMatrix_inverted(const QMatrix* self);
bool QMatrix_operatorEqual(const QMatrix* self, QMatrix* param1);
bool QMatrix_operatorNotEqual(const QMatrix* self, QMatrix* param1);
QMatrix* QMatrix_operatorMultiplyAssign(QMatrix* self, QMatrix* param1);
QMatrix* QMatrix_operatorMultiply(const QMatrix* self, QMatrix* o);
QVariant* QMatrix_ToQVariant(const QMatrix* self);
QMatrix* QMatrix_inverted_invertible(const QMatrix* self, bool* invertible);

void QMatrix_delete(QMatrix* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
