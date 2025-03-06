#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGRECTANGLENODE_H
#define SEAQT_QTQUICK_GEN_QSGRECTANGLENODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QColor;
class QRectF;
class QSGBasicGeometryNode;
class QSGGeometryNode;
class QSGNode;
class QSGRectangleNode;
#else
typedef struct QColor QColor;
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGNode QSGNode;
typedef struct QSGRectangleNode QSGRectangleNode;
#endif

void QSGRectangleNode_virtbase(QSGRectangleNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGRectangleNode_setRect(QSGRectangleNode* self, QRectF* rect);
void QSGRectangleNode_setRect2(QSGRectangleNode* self, double x, double y, double w, double h);
QRectF* QSGRectangleNode_rect(const QSGRectangleNode* self);
void QSGRectangleNode_setColor(QSGRectangleNode* self, QColor* color);
QColor* QSGRectangleNode_color(const QSGRectangleNode* self);
void QSGRectangleNode_delete(QSGRectangleNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
