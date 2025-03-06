#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGIMAGENODE_H
#define SEAQT_QTQUICK_GEN_QSGIMAGENODE_H

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
class QSGGeometry;
class QSGGeometryNode;
class QSGImageNode;
class QSGNode;
class QSGTexture;
#else
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGGeometry QSGGeometry;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGImageNode QSGImageNode;
typedef struct QSGNode QSGNode;
typedef struct QSGTexture QSGTexture;
#endif

void QSGImageNode_virtbase(QSGImageNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGImageNode_setRect(QSGImageNode* self, QRectF* rect);
void QSGImageNode_setRect2(QSGImageNode* self, double x, double y, double w, double h);
QRectF* QSGImageNode_rect(const QSGImageNode* self);
void QSGImageNode_setSourceRect(QSGImageNode* self, QRectF* r);
void QSGImageNode_setSourceRect2(QSGImageNode* self, double x, double y, double w, double h);
QRectF* QSGImageNode_sourceRect(const QSGImageNode* self);
void QSGImageNode_setTexture(QSGImageNode* self, QSGTexture* texture);
QSGTexture* QSGImageNode_texture(const QSGImageNode* self);
void QSGImageNode_setFiltering(QSGImageNode* self, int filtering);
int QSGImageNode_filtering(const QSGImageNode* self);
void QSGImageNode_setMipmapFiltering(QSGImageNode* self, int filtering);
int QSGImageNode_mipmapFiltering(const QSGImageNode* self);
void QSGImageNode_setAnisotropyLevel(QSGImageNode* self, int level);
int QSGImageNode_anisotropyLevel(const QSGImageNode* self);
void QSGImageNode_setTextureCoordinatesTransform(QSGImageNode* self, int mode);
int QSGImageNode_textureCoordinatesTransform(const QSGImageNode* self);
void QSGImageNode_setOwnsTexture(QSGImageNode* self, bool owns);
bool QSGImageNode_ownsTexture(const QSGImageNode* self);
void QSGImageNode_rebuildGeometry(QSGGeometry* g, QSGTexture* texture, QRectF* rect, QRectF* sourceRect, int texCoordMode);
void QSGImageNode_delete(QSGImageNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
