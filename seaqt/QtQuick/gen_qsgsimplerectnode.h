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

struct QSGSimpleRectNode_VTable {
	void (*destructor)(struct QSGSimpleRectNode_VTable* vtbl, QSGSimpleRectNode* self);
	bool (*isSubtreeBlocked)(struct QSGSimpleRectNode_VTable* vtbl, const QSGSimpleRectNode* self);
	void (*preprocess)(struct QSGSimpleRectNode_VTable* vtbl, QSGSimpleRectNode* self);
};
QSGSimpleRectNode* QSGSimpleRectNode_new(struct QSGSimpleRectNode_VTable* vtbl, QRectF* rect, QColor* color);
QSGSimpleRectNode* QSGSimpleRectNode_new2(struct QSGSimpleRectNode_VTable* vtbl);
void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGSimpleRectNode_setRect(QSGSimpleRectNode* self, QRectF* rect);
void QSGSimpleRectNode_setRect2(QSGSimpleRectNode* self, double x, double y, double w, double h);
QRectF* QSGSimpleRectNode_rect(const QSGSimpleRectNode* self);
void QSGSimpleRectNode_setColor(QSGSimpleRectNode* self, QColor* color);
QColor* QSGSimpleRectNode_color(const QSGSimpleRectNode* self);
bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const void* self);
void QSGSimpleRectNode_virtualbase_preprocess(void* self);
void QSGSimpleRectNode_delete(QSGSimpleRectNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
