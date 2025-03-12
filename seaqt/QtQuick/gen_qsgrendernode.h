#pragma once
#ifndef SEAQT_QTQUICK_GEN_QSGRENDERNODE_H
#define SEAQT_QTQUICK_GEN_QSGRENDERNODE_H

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
class QRect;
class QRectF;
class QRegion;
class QSGClipNode;
class QSGNode;
class QSGRenderNode;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGRenderNode__RenderState)
typedef QSGRenderNode::RenderState QSGRenderNode__RenderState;
#else
class QSGRenderNode__RenderState;
#endif
#else
typedef struct QMatrix4x4 QMatrix4x4;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QSGClipNode QSGClipNode;
typedef struct QSGNode QSGNode;
typedef struct QSGRenderNode QSGRenderNode;
typedef struct QSGRenderNode__RenderState QSGRenderNode__RenderState;
#endif

typedef struct VirtualQSGRenderNode VirtualQSGRenderNode;
typedef struct QSGRenderNode_VTable{
	void (*destructor)(VirtualQSGRenderNode* self);
	int (*changedStates)(const VirtualQSGRenderNode* self);
	void (*prepare)(VirtualQSGRenderNode* self);
	void (*render)(VirtualQSGRenderNode* self, QSGRenderNode__RenderState* state);
	void (*releaseResources)(VirtualQSGRenderNode* self);
	int (*flags)(const VirtualQSGRenderNode* self);
	QRectF* (*rect)(const VirtualQSGRenderNode* self);
	bool (*isSubtreeBlocked)(const VirtualQSGRenderNode* self);
	void (*preprocess)(VirtualQSGRenderNode* self);
}QSGRenderNode_VTable;

const QSGRenderNode_VTable* QSGRenderNode_vtbl(const VirtualQSGRenderNode* self);
void* QSGRenderNode_vdata(const VirtualQSGRenderNode* self);
void QSGRenderNode_setVdata(VirtualQSGRenderNode* self, void* vdata);

VirtualQSGRenderNode* QSGRenderNode_new(const QSGRenderNode_VTable* vtbl, void* vdata);

void QSGRenderNode_virtbase(QSGRenderNode* src, QSGNode** outptr_QSGNode);
int QSGRenderNode_changedStates(const QSGRenderNode* self);
void QSGRenderNode_prepare(QSGRenderNode* self);
void QSGRenderNode_render(QSGRenderNode* self, QSGRenderNode__RenderState* state);
void QSGRenderNode_releaseResources(QSGRenderNode* self);
int QSGRenderNode_flags(const QSGRenderNode* self);
QRectF* QSGRenderNode_rect(const QSGRenderNode* self);
QMatrix4x4* QSGRenderNode_matrix(const QSGRenderNode* self);
QSGClipNode* QSGRenderNode_clipList(const QSGRenderNode* self);
double QSGRenderNode_inheritedOpacity(const QSGRenderNode* self);

int QSGRenderNode_virtualbase_changedStates(const VirtualQSGRenderNode* self);
void QSGRenderNode_virtualbase_prepare(VirtualQSGRenderNode* self);
void QSGRenderNode_virtualbase_render(VirtualQSGRenderNode* self, QSGRenderNode__RenderState* state);
void QSGRenderNode_virtualbase_releaseResources(VirtualQSGRenderNode* self);
int QSGRenderNode_virtualbase_flags(const VirtualQSGRenderNode* self);
QRectF* QSGRenderNode_virtualbase_rect(const VirtualQSGRenderNode* self);
bool QSGRenderNode_virtualbase_isSubtreeBlocked(const VirtualQSGRenderNode* self);
void QSGRenderNode_virtualbase_preprocess(VirtualQSGRenderNode* self);

void QSGRenderNode_delete(QSGRenderNode* self);

QMatrix4x4* QSGRenderNode__RenderState_projectionMatrix(const QSGRenderNode__RenderState* self);
QRect* QSGRenderNode__RenderState_scissorRect(const QSGRenderNode__RenderState* self);
bool QSGRenderNode__RenderState_scissorEnabled(const QSGRenderNode__RenderState* self);
int QSGRenderNode__RenderState_stencilValue(const QSGRenderNode__RenderState* self);
bool QSGRenderNode__RenderState_stencilEnabled(const QSGRenderNode__RenderState* self);
QRegion* QSGRenderNode__RenderState_clipRegion(const QSGRenderNode__RenderState* self);
void* QSGRenderNode__RenderState_get(const QSGRenderNode__RenderState* self, const char* state);
void QSGRenderNode__RenderState_operatorAssign(QSGRenderNode__RenderState* self, QSGRenderNode__RenderState* param1);

void QSGRenderNode__RenderState_delete(QSGRenderNode__RenderState* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
