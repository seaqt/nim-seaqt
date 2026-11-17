#pragma once
#ifndef SEAQT_QTDESIGNER_GEN_LAYOUTDECORATION_H
#define SEAQT_QTDESIGNER_GEN_LAYOUTDECORATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QDesignerLayoutDecorationExtension;
class QLayout;
class QLayoutItem;
class QPoint;
class QRect;
class QWidget;
#else
typedef struct QDesignerLayoutDecorationExtension QDesignerLayoutDecorationExtension;
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQDesignerLayoutDecorationExtension VirtualQDesignerLayoutDecorationExtension;
typedef struct QDesignerLayoutDecorationExtension_VTable{
	void (*destructor)(VirtualQDesignerLayoutDecorationExtension* self);
	struct seaqt_array /* of QWidget* */  (*widgets)(const VirtualQDesignerLayoutDecorationExtension* self, QLayout* layout);
	QRect* (*itemInfo)(const VirtualQDesignerLayoutDecorationExtension* self, int index);
	int (*indexOf_widget)(const VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget);
	int (*indexOf_item)(const VirtualQDesignerLayoutDecorationExtension* self, QLayoutItem* item);
	int (*currentInsertMode)(const VirtualQDesignerLayoutDecorationExtension* self);
	int (*currentIndex)(const VirtualQDesignerLayoutDecorationExtension* self);
	struct seaqt_map /* tuple of int and int */  (*currentCell)(const VirtualQDesignerLayoutDecorationExtension* self);
	void (*insertWidget)(VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget, struct seaqt_map /* tuple of int and int */  cell);
	void (*removeWidget)(VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget);
	void (*insertRow)(VirtualQDesignerLayoutDecorationExtension* self, int row);
	void (*insertColumn)(VirtualQDesignerLayoutDecorationExtension* self, int column);
	void (*simplify)(VirtualQDesignerLayoutDecorationExtension* self);
	int (*findItemAt_pos)(const VirtualQDesignerLayoutDecorationExtension* self, QPoint* pos);
	int (*findItemAt_row_column)(const VirtualQDesignerLayoutDecorationExtension* self, int row, int column);
	void (*adjustIndicator)(VirtualQDesignerLayoutDecorationExtension* self, QPoint* pos, int index);
}QDesignerLayoutDecorationExtension_VTable;

void* QDesignerLayoutDecorationExtension_vdata(VirtualQDesignerLayoutDecorationExtension* self);
VirtualQDesignerLayoutDecorationExtension* vdata_QDesignerLayoutDecorationExtension(void* vdata);

VirtualQDesignerLayoutDecorationExtension* QDesignerLayoutDecorationExtension_new(const QDesignerLayoutDecorationExtension_VTable* vtbl, size_t vdata);

struct seaqt_array /* of QWidget* */  QDesignerLayoutDecorationExtension_widgets(const QDesignerLayoutDecorationExtension* self, QLayout* layout);
QRect* QDesignerLayoutDecorationExtension_itemInfo(const QDesignerLayoutDecorationExtension* self, int index);
int QDesignerLayoutDecorationExtension_indexOf_widget(const QDesignerLayoutDecorationExtension* self, QWidget* widget);
int QDesignerLayoutDecorationExtension_indexOf_item(const QDesignerLayoutDecorationExtension* self, QLayoutItem* item);
int QDesignerLayoutDecorationExtension_currentInsertMode(const QDesignerLayoutDecorationExtension* self);
int QDesignerLayoutDecorationExtension_currentIndex(const QDesignerLayoutDecorationExtension* self);
struct seaqt_map /* tuple of int and int */  QDesignerLayoutDecorationExtension_currentCell(const QDesignerLayoutDecorationExtension* self);
void QDesignerLayoutDecorationExtension_insertWidget(QDesignerLayoutDecorationExtension* self, QWidget* widget, struct seaqt_map /* tuple of int and int */  cell);
void QDesignerLayoutDecorationExtension_removeWidget(QDesignerLayoutDecorationExtension* self, QWidget* widget);
void QDesignerLayoutDecorationExtension_insertRow(QDesignerLayoutDecorationExtension* self, int row);
void QDesignerLayoutDecorationExtension_insertColumn(QDesignerLayoutDecorationExtension* self, int column);
void QDesignerLayoutDecorationExtension_simplify(QDesignerLayoutDecorationExtension* self);
int QDesignerLayoutDecorationExtension_findItemAt_pos(const QDesignerLayoutDecorationExtension* self, QPoint* pos);
int QDesignerLayoutDecorationExtension_findItemAt_row_column(const QDesignerLayoutDecorationExtension* self, int row, int column);
void QDesignerLayoutDecorationExtension_adjustIndicator(QDesignerLayoutDecorationExtension* self, QPoint* pos, int index);

struct seaqt_array /* of QWidget* */  QDesignerLayoutDecorationExtension_virtualbase_widgets(const VirtualQDesignerLayoutDecorationExtension* self, QLayout* layout);
QRect* QDesignerLayoutDecorationExtension_virtualbase_itemInfo(const VirtualQDesignerLayoutDecorationExtension* self, int index);
int QDesignerLayoutDecorationExtension_virtualbase_indexOf_widget(const VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget);
int QDesignerLayoutDecorationExtension_virtualbase_indexOf_item(const VirtualQDesignerLayoutDecorationExtension* self, QLayoutItem* item);
int QDesignerLayoutDecorationExtension_virtualbase_currentInsertMode(const VirtualQDesignerLayoutDecorationExtension* self);
int QDesignerLayoutDecorationExtension_virtualbase_currentIndex(const VirtualQDesignerLayoutDecorationExtension* self);
struct seaqt_map /* tuple of int and int */  QDesignerLayoutDecorationExtension_virtualbase_currentCell(const VirtualQDesignerLayoutDecorationExtension* self);
void QDesignerLayoutDecorationExtension_virtualbase_insertWidget(VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget, struct seaqt_map /* tuple of int and int */  cell);
void QDesignerLayoutDecorationExtension_virtualbase_removeWidget(VirtualQDesignerLayoutDecorationExtension* self, QWidget* widget);
void QDesignerLayoutDecorationExtension_virtualbase_insertRow(VirtualQDesignerLayoutDecorationExtension* self, int row);
void QDesignerLayoutDecorationExtension_virtualbase_insertColumn(VirtualQDesignerLayoutDecorationExtension* self, int column);
void QDesignerLayoutDecorationExtension_virtualbase_simplify(VirtualQDesignerLayoutDecorationExtension* self);
int QDesignerLayoutDecorationExtension_virtualbase_findItemAt_pos(const VirtualQDesignerLayoutDecorationExtension* self, QPoint* pos);
int QDesignerLayoutDecorationExtension_virtualbase_findItemAt_row_column(const VirtualQDesignerLayoutDecorationExtension* self, int row, int column);
void QDesignerLayoutDecorationExtension_virtualbase_adjustIndicator(VirtualQDesignerLayoutDecorationExtension* self, QPoint* pos, int index);

void QDesignerLayoutDecorationExtension_delete(QDesignerLayoutDecorationExtension* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
