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

struct QGraphicsLayout_VTable {
	void (*destructor)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self);
	void (*getContentsMargins)(struct QGraphicsLayout_VTable* vtbl, const QGraphicsLayout* self, double* left, double* top, double* right, double* bottom);
	void (*invalidate)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self);
	void (*updateGeometry)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self);
	void (*widgetEvent)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self, QEvent* e);
	int (*count)(struct QGraphicsLayout_VTable* vtbl, const QGraphicsLayout* self);
	QGraphicsLayoutItem* (*itemAt)(struct QGraphicsLayout_VTable* vtbl, const QGraphicsLayout* self, int i);
	void (*removeAt)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self, int index);
	void (*setGeometry)(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayout* self, QRectF* rect);
	bool (*isEmpty)(struct QGraphicsLayout_VTable* vtbl, const QGraphicsLayout* self);
	QSizeF* (*sizeHint)(struct QGraphicsLayout_VTable* vtbl, const QGraphicsLayout* self, int which, QSizeF* constraint);
};
QGraphicsLayout* QGraphicsLayout_new(struct QGraphicsLayout_VTable* vtbl);
QGraphicsLayout* QGraphicsLayout_new2(struct QGraphicsLayout_VTable* vtbl, QGraphicsLayoutItem* parent);
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
void QGraphicsLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);
void QGraphicsLayout_virtualbase_invalidate(void* self);
void QGraphicsLayout_virtualbase_updateGeometry(void* self);
void QGraphicsLayout_virtualbase_widgetEvent(void* self, QEvent* e);
int QGraphicsLayout_virtualbase_count(const void* self);
QGraphicsLayoutItem* QGraphicsLayout_virtualbase_itemAt(const void* self, int i);
void QGraphicsLayout_virtualbase_removeAt(void* self, int index);
void QGraphicsLayout_virtualbase_setGeometry(void* self, QRectF* rect);
bool QGraphicsLayout_virtualbase_isEmpty(const void* self);
QSizeF* QGraphicsLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);
void QGraphicsLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item);
void QGraphicsLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout);
void QGraphicsLayout_delete(QGraphicsLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
