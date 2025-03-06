#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGSIMPLERECTNODE_H
#define SEAQT_QTQUICK_GEN_QSGSIMPLERECTNODE_H

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
class QSGSimpleRectNode;
#else
typedef struct QColor QColor;
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGNode QSGNode;
typedef struct QSGSimpleRectNode QSGSimpleRectNode;
#endif

QSGSimpleRectNode* QSGSimpleRectNode_new(QRectF* rect, QColor* color);
QSGSimpleRectNode* QSGSimpleRectNode_new2();
void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGSimpleRectNode_setRect(QSGSimpleRectNode* self, QRectF* rect);
void QSGSimpleRectNode_setRect2(QSGSimpleRectNode* self, double x, double y, double w, double h);
QRectF* QSGSimpleRectNode_rect(const QSGSimpleRectNode* self);
void QSGSimpleRectNode_setColor(QSGSimpleRectNode* self, QColor* color);
QColor* QSGSimpleRectNode_color(const QSGSimpleRectNode* self);
bool QSGSimpleRectNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGSimpleRectNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGSimpleRectNode_virtualbase_preprocess(void* self);
void QSGSimpleRectNode_delete(QSGSimpleRectNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
