#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSLINEARLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSLINEARLAYOUT_H

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
class QGraphicsLinearLayout;
class QRectF;
class QSizeF;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QGraphicsLinearLayout QGraphicsLinearLayout;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

typedef struct VirtualQGraphicsLinearLayout VirtualQGraphicsLinearLayout;
typedef struct QGraphicsLinearLayout_VTable{
	void (*destructor)(VirtualQGraphicsLinearLayout* self);
	void (*removeAt)(VirtualQGraphicsLinearLayout* self, int index);
	void (*setGeometry)(VirtualQGraphicsLinearLayout* self, QRectF* rect);
	int (*count)(const VirtualQGraphicsLinearLayout* self);
	QGraphicsLayoutItem* (*itemAt)(const VirtualQGraphicsLinearLayout* self, int index);
	void (*invalidate)(VirtualQGraphicsLinearLayout* self);
	QSizeF* (*sizeHint)(const VirtualQGraphicsLinearLayout* self, int which, QSizeF* constraint);
	void (*getContentsMargins)(const VirtualQGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(VirtualQGraphicsLinearLayout* self);
	void (*widgetEvent)(VirtualQGraphicsLinearLayout* self, QEvent* e);
	bool (*isEmpty)(const VirtualQGraphicsLinearLayout* self);
}QGraphicsLinearLayout_VTable;

const QGraphicsLinearLayout_VTable* QGraphicsLinearLayout_vtbl(const VirtualQGraphicsLinearLayout* self);
void* QGraphicsLinearLayout_vdata(const VirtualQGraphicsLinearLayout* self);
void QGraphicsLinearLayout_setVdata(VirtualQGraphicsLinearLayout* self, void* vdata);

VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new(const QGraphicsLinearLayout_VTable* vtbl, void* vdata);
VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new2(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, int orientation);
VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new3(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent);
VirtualQGraphicsLinearLayout* QGraphicsLinearLayout_new4(const QGraphicsLinearLayout_VTable* vtbl, void* vdata, int orientation, QGraphicsLayoutItem* parent);

void QGraphicsLinearLayout_virtbase(QGraphicsLinearLayout* src, QGraphicsLayout** outptr_QGraphicsLayout);
void QGraphicsLinearLayout_setOrientation(QGraphicsLinearLayout* self, int orientation);
int QGraphicsLinearLayout_orientation(const QGraphicsLinearLayout* self);
void QGraphicsLinearLayout_addItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
void QGraphicsLinearLayout_addStretch(QGraphicsLinearLayout* self);
void QGraphicsLinearLayout_insertItem(QGraphicsLinearLayout* self, int index, QGraphicsLayoutItem* item);
void QGraphicsLinearLayout_insertStretch(QGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_removeItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
void QGraphicsLinearLayout_removeAt(QGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_setSpacing(QGraphicsLinearLayout* self, double spacing);
double QGraphicsLinearLayout_spacing(const QGraphicsLinearLayout* self);
void QGraphicsLinearLayout_setItemSpacing(QGraphicsLinearLayout* self, int index, double spacing);
double QGraphicsLinearLayout_itemSpacing(const QGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_setStretchFactor(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int stretch);
int QGraphicsLinearLayout_stretchFactor(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
void QGraphicsLinearLayout_setAlignment(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int alignment);
int QGraphicsLinearLayout_alignment(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item);
void QGraphicsLinearLayout_setGeometry(QGraphicsLinearLayout* self, QRectF* rect);
int QGraphicsLinearLayout_count(const QGraphicsLinearLayout* self);
QGraphicsLayoutItem* QGraphicsLinearLayout_itemAt(const QGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_invalidate(QGraphicsLinearLayout* self);
QSizeF* QGraphicsLinearLayout_sizeHint(const QGraphicsLinearLayout* self, int which, QSizeF* constraint);
void QGraphicsLinearLayout_dump(const QGraphicsLinearLayout* self);
void QGraphicsLinearLayout_addStretch1(QGraphicsLinearLayout* self, int stretch);
void QGraphicsLinearLayout_insertStretch2(QGraphicsLinearLayout* self, int index, int stretch);
void QGraphicsLinearLayout_dump1(const QGraphicsLinearLayout* self, int indent);

void QGraphicsLinearLayout_virtualbase_removeAt(VirtualQGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_virtualbase_setGeometry(VirtualQGraphicsLinearLayout* self, QRectF* rect);
int QGraphicsLinearLayout_virtualbase_count(const VirtualQGraphicsLinearLayout* self);
QGraphicsLayoutItem* QGraphicsLinearLayout_virtualbase_itemAt(const VirtualQGraphicsLinearLayout* self, int index);
void QGraphicsLinearLayout_virtualbase_invalidate(VirtualQGraphicsLinearLayout* self);
QSizeF* QGraphicsLinearLayout_virtualbase_sizeHint(const VirtualQGraphicsLinearLayout* self, int which, QSizeF* constraint);
void QGraphicsLinearLayout_virtualbase_getContentsMargins(const VirtualQGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLinearLayout_virtualbase_updateGeometry(VirtualQGraphicsLinearLayout* self);
void QGraphicsLinearLayout_virtualbase_widgetEvent(VirtualQGraphicsLinearLayout* self, QEvent* e);
bool QGraphicsLinearLayout_virtualbase_isEmpty(const VirtualQGraphicsLinearLayout* self);

void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsLinearLayout* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsLinearLayout_protectedbase_setGraphicsItem(VirtualQGraphicsLinearLayout* self, QGraphicsItem* item);
void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsLinearLayout* self, bool ownedByLayout);

void QGraphicsLinearLayout_delete(QGraphicsLinearLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
