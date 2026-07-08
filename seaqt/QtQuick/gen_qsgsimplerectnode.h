#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGSIMPLERECTNODE_H
#define SEAQT_QTQUICK_GEN_QSGSIMPLERECTNODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

typedef struct VirtualQSGSimpleRectNode VirtualQSGSimpleRectNode;
typedef struct QSGSimpleRectNode_VTable{
	void (*destructor)(VirtualQSGSimpleRectNode* self);
	bool (*isSubtreeBlocked)(const VirtualQSGSimpleRectNode* self);
	void (*preprocess)(VirtualQSGSimpleRectNode* self);
}QSGSimpleRectNode_VTable;

void* QSGSimpleRectNode_vdata(VirtualQSGSimpleRectNode* self);
VirtualQSGSimpleRectNode* vdata_QSGSimpleRectNode(void* vdata);

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new_rect_color(const QSGSimpleRectNode_VTable* vtbl, size_t vdata, QRectF* rect, QColor* color);
VirtualQSGSimpleRectNode* QSGSimpleRectNode_new(const QSGSimpleRectNode_VTable* vtbl, size_t vdata);

void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGSimpleRectNode_setRect_rect(QSGSimpleRectNode* self, QRectF* rect);
void QSGSimpleRectNode_setRect_x_y_w_h(QSGSimpleRectNode* self, double x, double y, double w, double h);
QRectF* QSGSimpleRectNode_rect(const QSGSimpleRectNode* self);
void QSGSimpleRectNode_setColor(QSGSimpleRectNode* self, QColor* color);
QColor* QSGSimpleRectNode_color(const QSGSimpleRectNode* self);

bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleRectNode* self);
void QSGSimpleRectNode_virtualbase_preprocess(VirtualQSGSimpleRectNode* self);

void QSGSimpleRectNode_delete(QSGSimpleRectNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
