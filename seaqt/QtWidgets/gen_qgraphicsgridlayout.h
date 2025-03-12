#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRAPHICSGRIDLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QGRAPHICSGRIDLAYOUT_H

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
class QGraphicsGridLayout;
class QGraphicsItem;
class QGraphicsLayout;
class QGraphicsLayoutItem;
class QRectF;
class QSizeF;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsGridLayout QGraphicsGridLayout;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

typedef struct VirtualQGraphicsGridLayout VirtualQGraphicsGridLayout;
typedef struct QGraphicsGridLayout_VTable{
	void (*destructor)(VirtualQGraphicsGridLayout* self);
	int (*count)(const VirtualQGraphicsGridLayout* self);
	QGraphicsLayoutItem* (*itemAtWithIndex)(const VirtualQGraphicsGridLayout* self, int index);
	void (*removeAt)(VirtualQGraphicsGridLayout* self, int index);
	void (*invalidate)(VirtualQGraphicsGridLayout* self);
	void (*setGeometry)(VirtualQGraphicsGridLayout* self, QRectF* rect);
	QSizeF* (*sizeHint)(const VirtualQGraphicsGridLayout* self, int which, QSizeF* constraint);
	void (*getContentsMargins)(const VirtualQGraphicsGridLayout* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(VirtualQGraphicsGridLayout* self);
	void (*widgetEvent)(VirtualQGraphicsGridLayout* self, QEvent* e);
	bool (*isEmpty)(const VirtualQGraphicsGridLayout* self);
}QGraphicsGridLayout_VTable;

const QGraphicsGridLayout_VTable* QGraphicsGridLayout_vtbl(const VirtualQGraphicsGridLayout* self);
void* QGraphicsGridLayout_vdata(const VirtualQGraphicsGridLayout* self);
void QGraphicsGridLayout_setVdata(VirtualQGraphicsGridLayout* self, void* vdata);

VirtualQGraphicsGridLayout* QGraphicsGridLayout_new(const QGraphicsGridLayout_VTable* vtbl, void* vdata);
VirtualQGraphicsGridLayout* QGraphicsGridLayout_new2(const QGraphicsGridLayout_VTable* vtbl, void* vdata, QGraphicsLayoutItem* parent);

void QGraphicsGridLayout_virtbase(QGraphicsGridLayout* src, QGraphicsLayout** outptr_QGraphicsLayout);
void QGraphicsGridLayout_addItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan);
void QGraphicsGridLayout_addItem2(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column);
void QGraphicsGridLayout_setHorizontalSpacing(QGraphicsGridLayout* self, double spacing);
double QGraphicsGridLayout_horizontalSpacing(const QGraphicsGridLayout* self);
void QGraphicsGridLayout_setVerticalSpacing(QGraphicsGridLayout* self, double spacing);
double QGraphicsGridLayout_verticalSpacing(const QGraphicsGridLayout* self);
void QGraphicsGridLayout_setSpacing(QGraphicsGridLayout* self, double spacing);
void QGraphicsGridLayout_setRowSpacing(QGraphicsGridLayout* self, int row, double spacing);
double QGraphicsGridLayout_rowSpacing(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnSpacing(QGraphicsGridLayout* self, int column, double spacing);
double QGraphicsGridLayout_columnSpacing(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setRowStretchFactor(QGraphicsGridLayout* self, int row, int stretch);
int QGraphicsGridLayout_rowStretchFactor(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnStretchFactor(QGraphicsGridLayout* self, int column, int stretch);
int QGraphicsGridLayout_columnStretchFactor(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setRowMinimumHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowMinimumHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowPreferredHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowPreferredHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowMaximumHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowMaximumHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowFixedHeight(QGraphicsGridLayout* self, int row, double height);
void QGraphicsGridLayout_setColumnMinimumWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnMinimumWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnPreferredWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnPreferredWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnMaximumWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnMaximumWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnFixedWidth(QGraphicsGridLayout* self, int column, double width);
void QGraphicsGridLayout_setRowAlignment(QGraphicsGridLayout* self, int row, int alignment);
int QGraphicsGridLayout_rowAlignment(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnAlignment(QGraphicsGridLayout* self, int column, int alignment);
int QGraphicsGridLayout_columnAlignment(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setAlignment(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int alignment);
int QGraphicsGridLayout_alignment(const QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
int QGraphicsGridLayout_rowCount(const QGraphicsGridLayout* self);
int QGraphicsGridLayout_columnCount(const QGraphicsGridLayout* self);
QGraphicsLayoutItem* QGraphicsGridLayout_itemAt(const QGraphicsGridLayout* self, int row, int column);
int QGraphicsGridLayout_count(const QGraphicsGridLayout* self);
QGraphicsLayoutItem* QGraphicsGridLayout_itemAtWithIndex(const QGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_removeAt(QGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_removeItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
void QGraphicsGridLayout_invalidate(QGraphicsGridLayout* self);
void QGraphicsGridLayout_setGeometry(QGraphicsGridLayout* self, QRectF* rect);
QSizeF* QGraphicsGridLayout_sizeHint(const QGraphicsGridLayout* self, int which, QSizeF* constraint);
void QGraphicsGridLayout_addItem6(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int alignment);
void QGraphicsGridLayout_addItem4(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int alignment);

int QGraphicsGridLayout_virtualbase_count(const VirtualQGraphicsGridLayout* self);
QGraphicsLayoutItem* QGraphicsGridLayout_virtualbase_itemAtWithIndex(const VirtualQGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_virtualbase_removeAt(VirtualQGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_virtualbase_invalidate(VirtualQGraphicsGridLayout* self);
void QGraphicsGridLayout_virtualbase_setGeometry(VirtualQGraphicsGridLayout* self, QRectF* rect);
QSizeF* QGraphicsGridLayout_virtualbase_sizeHint(const VirtualQGraphicsGridLayout* self, int which, QSizeF* constraint);
void QGraphicsGridLayout_virtualbase_getContentsMargins(const VirtualQGraphicsGridLayout* self, double* left, double* top, double* right, double* bottom);
void QGraphicsGridLayout_virtualbase_updateGeometry(VirtualQGraphicsGridLayout* self);
void QGraphicsGridLayout_virtualbase_widgetEvent(VirtualQGraphicsGridLayout* self, QEvent* e);
bool QGraphicsGridLayout_virtualbase_isEmpty(const VirtualQGraphicsGridLayout* self);

void QGraphicsGridLayout_protectedbase_addChildLayoutItem(VirtualQGraphicsGridLayout* self, QGraphicsLayoutItem* layoutItem);
void QGraphicsGridLayout_protectedbase_setGraphicsItem(VirtualQGraphicsGridLayout* self, QGraphicsItem* item);
void QGraphicsGridLayout_protectedbase_setOwnedByLayout(VirtualQGraphicsGridLayout* self, bool ownedByLayout);

void QGraphicsGridLayout_delete(QGraphicsGridLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
