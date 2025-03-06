#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGNODE_H
#define SEAQT_QTQUICK_GEN_QSGNODE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMatrix4x4;
class QRectF;
class QSGBasicGeometryNode;
class QSGClipNode;
class QSGGeometry;
class QSGGeometryNode;
class QSGMaterial;
class QSGNode;
class QSGNodeVisitor;
class QSGOpacityNode;
class QSGRootNode;
class QSGTransformNode;
#else
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QRectF QRectF;
typedef struct QSGBasicGeometryNode QSGBasicGeometryNode;
typedef struct QSGClipNode QSGClipNode;
typedef struct QSGGeometry QSGGeometry;
typedef struct QSGGeometryNode QSGGeometryNode;
typedef struct QSGMaterial QSGMaterial;
typedef struct QSGNode QSGNode;
typedef struct QSGNodeVisitor QSGNodeVisitor;
typedef struct QSGOpacityNode QSGOpacityNode;
typedef struct QSGRootNode QSGRootNode;
typedef struct QSGTransformNode QSGTransformNode;
#endif

QSGNode* QSGNode_new();
QSGNode* QSGNode_parent(const QSGNode* self);
void QSGNode_removeChildNode(QSGNode* self, QSGNode* node);
void QSGNode_removeAllChildNodes(QSGNode* self);
void QSGNode_prependChildNode(QSGNode* self, QSGNode* node);
void QSGNode_appendChildNode(QSGNode* self, QSGNode* node);
void QSGNode_insertChildNodeBefore(QSGNode* self, QSGNode* node, QSGNode* before);
void QSGNode_insertChildNodeAfter(QSGNode* self, QSGNode* node, QSGNode* after);
void QSGNode_reparentChildNodesTo(QSGNode* self, QSGNode* newParent);
int QSGNode_childCount(const QSGNode* self);
QSGNode* QSGNode_childAtIndex(const QSGNode* self, int i);
QSGNode* QSGNode_firstChild(const QSGNode* self);
QSGNode* QSGNode_lastChild(const QSGNode* self);
QSGNode* QSGNode_nextSibling(const QSGNode* self);
QSGNode* QSGNode_previousSibling(const QSGNode* self);
int QSGNode_type(const QSGNode* self);
void QSGNode_clearDirty(QSGNode* self);
void QSGNode_markDirty(QSGNode* self, int bits);
int QSGNode_dirtyState(const QSGNode* self);
bool QSGNode_isSubtreeBlocked(const QSGNode* self);
int QSGNode_flags(const QSGNode* self);
void QSGNode_setFlag(QSGNode* self, int param1);
void QSGNode_setFlags(QSGNode* self, int param1);
void QSGNode_preprocess(QSGNode* self);
void QSGNode_setFlag2(QSGNode* self, int param1, bool param2);
void QSGNode_setFlags2(QSGNode* self, int param1, bool param2);
bool QSGNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGNode_virtualbase_preprocess(void* self);
void QSGNode_delete(QSGNode* self);

void QSGBasicGeometryNode_virtbase(QSGBasicGeometryNode* src, QSGNode** outptr_QSGNode);
void QSGBasicGeometryNode_setGeometry(QSGBasicGeometryNode* self, QSGGeometry* geometry);
QSGGeometry* QSGBasicGeometryNode_geometry(const QSGBasicGeometryNode* self);
QSGGeometry* QSGBasicGeometryNode_geometry2(QSGBasicGeometryNode* self);
QMatrix4x4* QSGBasicGeometryNode_matrix(const QSGBasicGeometryNode* self);
QSGClipNode* QSGBasicGeometryNode_clipList(const QSGBasicGeometryNode* self);
void QSGBasicGeometryNode_setRendererMatrix(QSGBasicGeometryNode* self, QMatrix4x4* m);
void QSGBasicGeometryNode_setRendererClipList(QSGBasicGeometryNode* self, QSGClipNode* c);
void QSGBasicGeometryNode_delete(QSGBasicGeometryNode* self);

QSGGeometryNode* QSGGeometryNode_new();
void QSGGeometryNode_virtbase(QSGGeometryNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode);
void QSGGeometryNode_setMaterial(QSGGeometryNode* self, QSGMaterial* material);
QSGMaterial* QSGGeometryNode_material(const QSGGeometryNode* self);
void QSGGeometryNode_setOpaqueMaterial(QSGGeometryNode* self, QSGMaterial* material);
QSGMaterial* QSGGeometryNode_opaqueMaterial(const QSGGeometryNode* self);
QSGMaterial* QSGGeometryNode_activeMaterial(const QSGGeometryNode* self);
void QSGGeometryNode_setRenderOrder(QSGGeometryNode* self, int order);
int QSGGeometryNode_renderOrder(const QSGGeometryNode* self);
void QSGGeometryNode_setInheritedOpacity(QSGGeometryNode* self, double opacity);
double QSGGeometryNode_inheritedOpacity(const QSGGeometryNode* self);
bool QSGGeometryNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGGeometryNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGGeometryNode_virtualbase_preprocess(void* self);
void QSGGeometryNode_delete(QSGGeometryNode* self);

QSGClipNode* QSGClipNode_new();
void QSGClipNode_virtbase(QSGClipNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode);
void QSGClipNode_setIsRectangular(QSGClipNode* self, bool rectHint);
bool QSGClipNode_isRectangular(const QSGClipNode* self);
void QSGClipNode_setClipRect(QSGClipNode* self, QRectF* clipRect);
QRectF* QSGClipNode_clipRect(const QSGClipNode* self);
bool QSGClipNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGClipNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGClipNode_virtualbase_preprocess(void* self);
void QSGClipNode_delete(QSGClipNode* self);

QSGTransformNode* QSGTransformNode_new();
void QSGTransformNode_virtbase(QSGTransformNode* src, QSGNode** outptr_QSGNode);
void QSGTransformNode_setMatrix(QSGTransformNode* self, QMatrix4x4* matrix);
QMatrix4x4* QSGTransformNode_matrix(const QSGTransformNode* self);
void QSGTransformNode_setCombinedMatrix(QSGTransformNode* self, QMatrix4x4* matrix);
QMatrix4x4* QSGTransformNode_combinedMatrix(const QSGTransformNode* self);
bool QSGTransformNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGTransformNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGTransformNode_virtualbase_preprocess(void* self);
void QSGTransformNode_delete(QSGTransformNode* self);

QSGRootNode* QSGRootNode_new();
void QSGRootNode_virtbase(QSGRootNode* src, QSGNode** outptr_QSGNode);
bool QSGRootNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGRootNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGRootNode_virtualbase_preprocess(void* self);
void QSGRootNode_delete(QSGRootNode* self);

QSGOpacityNode* QSGOpacityNode_new();
void QSGOpacityNode_virtbase(QSGOpacityNode* src, QSGNode** outptr_QSGNode);
void QSGOpacityNode_setOpacity(QSGOpacityNode* self, double opacity);
double QSGOpacityNode_opacity(const QSGOpacityNode* self);
void QSGOpacityNode_setCombinedOpacity(QSGOpacityNode* self, double opacity);
double QSGOpacityNode_combinedOpacity(const QSGOpacityNode* self);
bool QSGOpacityNode_isSubtreeBlocked(const QSGOpacityNode* self);
bool QSGOpacityNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot);
bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self);
bool QSGOpacityNode_override_virtual_preprocess(void* self, intptr_t slot);
void QSGOpacityNode_virtualbase_preprocess(void* self);
void QSGOpacityNode_delete(QSGOpacityNode* self);

void QSGNodeVisitor_enterTransformNode(QSGNodeVisitor* self, QSGTransformNode* param1);
void QSGNodeVisitor_leaveTransformNode(QSGNodeVisitor* self, QSGTransformNode* param1);
void QSGNodeVisitor_enterClipNode(QSGNodeVisitor* self, QSGClipNode* param1);
void QSGNodeVisitor_leaveClipNode(QSGNodeVisitor* self, QSGClipNode* param1);
void QSGNodeVisitor_enterGeometryNode(QSGNodeVisitor* self, QSGGeometryNode* param1);
void QSGNodeVisitor_leaveGeometryNode(QSGNodeVisitor* self, QSGGeometryNode* param1);
void QSGNodeVisitor_enterOpacityNode(QSGNodeVisitor* self, QSGOpacityNode* param1);
void QSGNodeVisitor_leaveOpacityNode(QSGNodeVisitor* self, QSGOpacityNode* param1);
void QSGNodeVisitor_visitNode(QSGNodeVisitor* self, QSGNode* n);
void QSGNodeVisitor_visitChildren(QSGNodeVisitor* self, QSGNode* n);
void QSGNodeVisitor_delete(QSGNodeVisitor* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
