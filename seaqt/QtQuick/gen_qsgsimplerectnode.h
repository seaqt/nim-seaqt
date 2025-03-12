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

typedef struct VirtualQSGSimpleRectNode VirtualQSGSimpleRectNode;
typedef struct QSGSimpleRectNode_VTable{
	void (*destructor)(VirtualQSGSimpleRectNode* self);
	bool (*isSubtreeBlocked)(const VirtualQSGSimpleRectNode* self);
	void (*preprocess)(VirtualQSGSimpleRectNode* self);
}QSGSimpleRectNode_VTable;

const QSGSimpleRectNode_VTable* QSGSimpleRectNode_vtbl(const VirtualQSGSimpleRectNode* self);
void* QSGSimpleRectNode_vdata(const VirtualQSGSimpleRectNode* self);
void QSGSimpleRectNode_setVdata(VirtualQSGSimpleRectNode* self, void* vdata);

VirtualQSGSimpleRectNode* QSGSimpleRectNode_new(const QSGSimpleRectNode_VTable* vtbl, void* vdata, QRectF* rect, QColor* color);
VirtualQSGSimpleRectNode* QSGSimpleRectNode_new2(const QSGSimpleRectNode_VTable* vtbl, void* vdata);

void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGSimpleRectNode_setRect(QSGSimpleRectNode* self, QRectF* rect);
void QSGSimpleRectNode_setRect2(QSGSimpleRectNode* self, double x, double y, double w, double h);
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
