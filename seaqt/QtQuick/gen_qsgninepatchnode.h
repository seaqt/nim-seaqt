#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGNINEPATCHNODE_H
#define SEAQT_QTQUICK_GEN_QSGNINEPATCHNODE_H

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
class QSGNinePatchNode;
class QSGNode;
class QSGTexture;
class QVector4D;
#else
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGGeometry QSGGeometry;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGNinePatchNode QSGNinePatchNode;
typedef struct QSGNode QSGNode;
typedef struct QSGTexture QSGTexture;
typedef struct QVector4D QVector4D;
#endif

void QSGNinePatchNode_virtbase(QSGNinePatchNode* src, QSGGeometryNode** outptr_QSGGeometryNode);
void QSGNinePatchNode_setTexture(QSGNinePatchNode* self, QSGTexture* texture);
void QSGNinePatchNode_setBounds(QSGNinePatchNode* self, QRectF* bounds);
void QSGNinePatchNode_setDevicePixelRatio(QSGNinePatchNode* self, double ratio);
void QSGNinePatchNode_setPadding(QSGNinePatchNode* self, double left, double top, double right, double bottom);
void QSGNinePatchNode_update(QSGNinePatchNode* self);
void QSGNinePatchNode_rebuildGeometry(QSGTexture* texture, QSGGeometry* geometry, QVector4D* padding, QRectF* bounds, double dpr);
void QSGNinePatchNode_delete(QSGNinePatchNode* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
