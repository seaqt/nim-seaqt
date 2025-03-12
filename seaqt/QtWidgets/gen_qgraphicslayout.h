#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QGraphicsItem;
class QGraphicsLayout;
class QGraphicsLayoutItem;
class QRectF;
class QSizeF;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

typedef struct VirtualQGraphicsLayout VirtualQGraphicsLayout;
typedef struct QGraphicsLayout_VTable{
	void (*destructor)(VirtualQGraphicsLayout* self);
	void (*getContentsMargins)(const VirtualQGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
	void (*invalidate)(VirtualQGraphicsLayout* self);
	void (*updateGeometry)(VirtualQGraphicsLayout* self);
	void (*widgetEvent)(VirtualQGraphicsLayout* self, QEvent* e);
	int (*count)(const VirtualQGraphicsLayout* self);
	QGraphicsLayoutItem* (*itemAt)(const VirtualQGraphicsLayout* self, int i);
	void (*removeAt)(VirtualQGraphicsLayout* self, int index);
	void (*setGeometry)(VirtualQGraphicsLayout* self, QRectF* rect);
	QSizeF* (*sizeHint)(const VirtualQGraphicsLayout* self, int which, QSizeF* constraint);
}QGraphicsLayout_VTable;

const QGraphicsLayout_VTable* QGraphicsLayout_vtbl(const VirtualQGraphicsLayout* self);
void* QGraphicsLayout_vdata(const VirtualQGraphicsLayout* self);
void QGraphicsLayout_setVdata(VirtualQGraphicsLayout* self, void* vdata);

VirtualQGraphicsLayout* QGraphicsLayout_new(const QGraphicsLayout_VTable* vtbl, void* vdata);
VirtualQGraphicsLayout* QGraphicsLayout_new2(const QGraphicsLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent);

void QGraphicsLayout_virtbase(QGraphicsLayout* src, QGraphicsLayoutItem** outptr_QGraphicsLayoutItem);
void QGraphicsLayout_setContentsMargins(QGraphicsLayout* self, double left, double top, double right, double bottom);
void QGraphicsLayout_getContentsMargins(const QGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLayout_activate(QGraphicsLayout* self);
bool QGraphicsLayout_isActivated(const QGraphicsLayout* self);
void QGraphicsLayout_invalidate(QGraphicsLayout* self);
void QGraphicsLayout_updateGeometry(QGraphicsLayout* self);
void QGraphicsLayout_widgetEvent(QGraphicsLayout* self, QEvent* e);
int QGraphicsLayout_count(const QGraphicsLayout* self);
QGraphicsLayoutItem* QGraphicsLayout_itemAt(const QGraphicsLayout* self, int i);
void QGraphicsLayout_removeAt(QGraphicsLayout* self, int index);
void QGraphicsLayout_setInstantInvalidatePropagation(bool enable);
bool QGraphicsLayout_instantInvalidatePropagation();

void QGraphicsLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLayout_virtualbase_invalidate(VirtualQGraphicsLayout* self);
void QGraphicsLayout_virtualbase_updateGeometry(VirtualQGraphicsLayout* self);
void QGraphicsLayout_virtualbase_widgetEvent(VirtualQGraphicsLayout* self, QEvent* e);
int QGraphicsLayout_virtualbase_count(const VirtualQGraphicsLayout* self);
QGraphicsLayoutItem* QGraphicsLayout_virtualbase_itemAt(const VirtualQGraphicsLayout* self, int i);
void QGraphicsLayout_virtualbase_removeAt(VirtualQGraphicsLayout* self, int index);
void QGraphicsLayout_virtualbase_setGeometry(VirtualQGraphicsLayout* self, QRectF* rect);
QSizeF* QGraphicsLayout_virtualbase_sizeHint(const VirtualQGraphicsLayout* self, int which, QSizeF* constraint);

void QGraphicsLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLayout* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLayout* self, QGraphicsItem* item);
void QGraphicsLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLayout* self, bool ownedByLayout);

void QGraphicsLayout_delete(QGraphicsLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
