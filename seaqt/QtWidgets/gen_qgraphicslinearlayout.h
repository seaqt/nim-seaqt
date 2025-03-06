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

struct QGraphicsLinearLayout_VTable {
	void (*destructor)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self);
	void (*removeAt)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self, int index);
	void (*setGeometry)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self, QRectF* rect);
	int (*count)(struct QGraphicsLinearLayout_VTable* vtbl, const QGraphicsLinearLayout* self);
	QGraphicsLayoutItem* (*itemAt)(struct QGraphicsLinearLayout_VTable* vtbl, const QGraphicsLinearLayout* self, int index);
	void (*invalidate)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self);
	QSizeF* (*sizeHint)(struct QGraphicsLinearLayout_VTable* vtbl, const QGraphicsLinearLayout* self, int which, QSizeF* constraint);
	void (*getContentsMargins)(struct QGraphicsLinearLayout_VTable* vtbl, const QGraphicsLinearLayout* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self);
	void (*widgetEvent)(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLinearLayout* self, QEvent* e);
};
QGraphicsLinearLayout* QGraphicsLinearLayout_new(struct QGraphicsLinearLayout_VTable* vtbl);
QGraphicsLinearLayout* QGraphicsLinearLayout_new2(struct QGraphicsLinearLayout_VTable* vtbl, int orientation);
QGraphicsLinearLayout* QGraphicsLinearLayout_new3(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLayoutItem* parent);
QGraphicsLinearLayout* QGraphicsLinearLayout_new4(struct QGraphicsLinearLayout_VTable* vtbl, int orientation, QGraphicsLayoutItem* parent);
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
void QGraphicsLinearLayout_virtualbase_removeAt(void* self, int index);
void QGraphicsLinearLayout_virtualbase_setGeometry(void* self, QRectF* rect);
int QGraphicsLinearLayout_virtualbase_count(const void* self);
QGraphicsLayoutItem* QGraphicsLinearLayout_virtualbase_itemAt(const void* self, int index);
void QGraphicsLinearLayout_virtualbase_invalidate(void* self);
QSizeF* QGraphicsLinearLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);
void QGraphicsLinearLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLinearLayout_virtualbase_updateGeometry(void* self);
void QGraphicsLinearLayout_virtualbase_widgetEvent(void* self, QEvent* e);
void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsLinearLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item);
void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout);
void QGraphicsLinearLayout_delete(QGraphicsLinearLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
