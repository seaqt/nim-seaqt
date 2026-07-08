#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSLAYOUTITEM_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSLAYOUTITEM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QGraphicsItem;
class QGraphicsLayoutItem;
class QRectF;
class QSizeF;
class QSizePolicy;
#else
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
typedef struct QSizePolicy QSizePolicy;
#endif

typedef struct VirtualQGraphicsLayoutItem VirtualQGraphicsLayoutItem;
typedef struct QGraphicsLayoutItem_VTable{
	void (*destructor)(VirtualQGraphicsLayoutItem* self);
	void (*setGeometry)(VirtualQGraphicsLayoutItem* self, QRectF* rect);
	void (*getContentsMargins)(const VirtualQGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(VirtualQGraphicsLayoutItem* self);
	QSizeF* (*sizeHint)(const VirtualQGraphicsLayoutItem* self, int which, QSizeF* constraint);
}QGraphicsLayoutItem_VTable;

void* QGraphicsLayoutItem_vdata(VirtualQGraphicsLayoutItem* self);
VirtualQGraphicsLayoutItem* vdata_QGraphicsLayoutItem(void* vdata);

VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new(const QGraphicsLayoutItem_VTable* vtbl, size_t vdata);
VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new_parent(const QGraphicsLayoutItem_VTable* vtbl, size_t vdata, QGraphicsLayoutItem* parent);
VirtualQGraphicsLayoutItem* QGraphicsLayoutItem_new_parent_isLayout(const QGraphicsLayoutItem_VTable* vtbl, size_t vdata, QGraphicsLayoutItem* parent, bool isLayout);

void QGraphicsLayoutItem_setSizePolicy_policy(QGraphicsLayoutItem* self, QSizePolicy* policy);
void QGraphicsLayoutItem_setSizePolicy_hPolicy_vPolicy(QGraphicsLayoutItem* self, int hPolicy, int vPolicy);
QSizePolicy* QGraphicsLayoutItem_sizePolicy(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMinimumSize_size(QGraphicsLayoutItem* self, QSizeF* size);
void QGraphicsLayoutItem_setMinimumSize_w_h(QGraphicsLayoutItem* self, double w, double h);
QSizeF* QGraphicsLayoutItem_minimumSize(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMinimumWidth(QGraphicsLayoutItem* self, double width);
double QGraphicsLayoutItem_minimumWidth(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMinimumHeight(QGraphicsLayoutItem* self, double height);
double QGraphicsLayoutItem_minimumHeight(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setPreferredSize_size(QGraphicsLayoutItem* self, QSizeF* size);
void QGraphicsLayoutItem_setPreferredSize_w_h(QGraphicsLayoutItem* self, double w, double h);
QSizeF* QGraphicsLayoutItem_preferredSize(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setPreferredWidth(QGraphicsLayoutItem* self, double width);
double QGraphicsLayoutItem_preferredWidth(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setPreferredHeight(QGraphicsLayoutItem* self, double height);
double QGraphicsLayoutItem_preferredHeight(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMaximumSize_size(QGraphicsLayoutItem* self, QSizeF* size);
void QGraphicsLayoutItem_setMaximumSize_w_h(QGraphicsLayoutItem* self, double w, double h);
QSizeF* QGraphicsLayoutItem_maximumSize(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMaximumWidth(QGraphicsLayoutItem* self, double width);
double QGraphicsLayoutItem_maximumWidth(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setMaximumHeight(QGraphicsLayoutItem* self, double height);
double QGraphicsLayoutItem_maximumHeight(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setGeometry(QGraphicsLayoutItem* self, QRectF* rect);
QRectF* QGraphicsLayoutItem_geometry(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_getContentsMargins(const QGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);
QRectF* QGraphicsLayoutItem_contentsRect(const QGraphicsLayoutItem* self);
QSizeF* QGraphicsLayoutItem_effectiveSizeHint_which(const QGraphicsLayoutItem* self, int which);
void QGraphicsLayoutItem_updateGeometry(QGraphicsLayoutItem* self);
QGraphicsLayoutItem* QGraphicsLayoutItem_parentLayoutItem(const QGraphicsLayoutItem* self);
void QGraphicsLayoutItem_setParentLayoutItem(QGraphicsLayoutItem* self, QGraphicsLayoutItem* parent);
bool QGraphicsLayoutItem_isLayout(const QGraphicsLayoutItem* self);
QGraphicsItem* QGraphicsLayoutItem_graphicsItem(const QGraphicsLayoutItem* self);
bool QGraphicsLayoutItem_ownedByLayout(const QGraphicsLayoutItem* self);
QSizeF* QGraphicsLayoutItem_sizeHint(const QGraphicsLayoutItem* self, int which, QSizeF* constraint);
void QGraphicsLayoutItem_setSizePolicy_hPolicy_vPolicy_controlType(QGraphicsLayoutItem* self, int hPolicy, int vPolicy, int controlType);
QSizeF* QGraphicsLayoutItem_effectiveSizeHint_which_constraint(const QGraphicsLayoutItem* self, int which, QSizeF* constraint);

void QGraphicsLayoutItem_virtualbase_setGeometry(VirtualQGraphicsLayoutItem* self, QRectF* rect);
void QGraphicsLayoutItem_virtualbase_getContentsMargins(const VirtualQGraphicsLayoutItem* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLayoutItem_virtualbase_updateGeometry(VirtualQGraphicsLayoutItem* self);
QSizeF* QGraphicsLayoutItem_virtualbase_sizeHint(const VirtualQGraphicsLayoutItem* self, int which, QSizeF* constraint);

void QGraphicsLayoutItem_protectedbase_setGraphicsItem(VirtualQGraphicsLayoutItem* self, QGraphicsItem* item);
void QGraphicsLayoutItem_protectedbase_setOwnedByLayout(VirtualQGraphicsLayoutItem* self, bool ownedByLayout);

void QGraphicsLayoutItem_delete(QGraphicsLayoutItem* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
