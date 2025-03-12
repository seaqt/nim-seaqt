#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGSIMPLETEXTURENODE_H
#define SEAQT_QTQUICK_GEN_QSGSIMPLETEXTURENODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRectF;
class QSGBasicGeometryNode;
class QSGGeometryNode;
class QSGNode;
class QSGSimpleTextureNode;
class QSGTexture;
#else
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGNode QSGNode;
typedef struct QSGSimpleTextureNode QSGSimpleTextureNode;
typedef struct QSGTexture QSGTexture;
#endif

typedef struct VirtualQSGSimpleTextureNode VirtualQSGSimpleTextureNode;
typedef struct QSGSimpleTextureNode_VTable{
	void (*destructor)(VirtualQSGSimpleTextureNode* self);
	bool (*isSubtreeBlocked)(const VirtualQSGSimpleTextureNode* self);
	void (*preprocess)(VirtualQSGSimpleTextureNode* self);
}QSGSimpleTextureNode_VTable;

const QSGSimpleTextureNode_VTable* QSGSimpleTextureNode_vtbl(const VirtualQSGSimpleTextureNode* self);
void* QSGSimpleTextureNode_vdata(const VirtualQSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setVdata(VirtualQSGSimpleTextureNode* self, void* vdata);

VirtualQSGSimpleTextureNode* QSGSimpleTextureNode_new(const QSGSimpleTextureNode_VTable* vtbl, void* vdata);

void QSGSimpleTextureNode_virtbase(QSGSimpleTextureNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGSimpleTextureNode_setRect(QSGSimpleTextureNode* self, QRectF* rect);
void QSGSimpleTextureNode_setRect2(QSGSimpleTextureNode* self, double x, double y, double w, double h);
QRectF* QSGSimpleTextureNode_rect(const QSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setSourceRect(QSGSimpleTextureNode* self, QRectF* r);
void QSGSimpleTextureNode_setSourceRect2(QSGSimpleTextureNode* self, double x, double y, double w, double h);
QRectF* QSGSimpleTextureNode_sourceRect(const QSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setTexture(QSGSimpleTextureNode* self, QSGTexture* texture);
QSGTexture* QSGSimpleTextureNode_texture(const QSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setFiltering(QSGSimpleTextureNode* self, int filtering);
int QSGSimpleTextureNode_filtering(const QSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setTextureCoordinatesTransform(QSGSimpleTextureNode* self, int mode);
int QSGSimpleTextureNode_textureCoordinatesTransform(const QSGSimpleTextureNode* self);
void QSGSimpleTextureNode_setOwnsTexture(QSGSimpleTextureNode* self, bool owns);
bool QSGSimpleTextureNode_ownsTexture(const QSGSimpleTextureNode* self);

bool QSGSimpleTextureNode_virtualbase_isSubtreeBlocked(const VirtualQSGSimpleTextureNode* self);
void QSGSimpleTextureNode_virtualbase_preprocess(VirtualQSGSimpleTextureNode* self);

void QSGSimpleTextureNode_delete(QSGSimpleTextureNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
