#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLAYOUTITEM_H
#define SEAQT_QTWIDGETS_GEN_QLAYOUTITEM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QLayout;
class QLayoutItem;
class QRect;
class QSize;
class QSizePolicy;
class QSpacerItem;
class QWidget;
class QWidgetItem;
class QWidgetItemV2;
#else
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSizePolicy QSizePolicy;
typedef struct QSpacerItem QSpacerItem;
typedef struct QWidget QWidget;
typedef struct QWidgetItem QWidgetItem;
typedef struct QWidgetItemV2 QWidgetItemV2;
#endif

struct QLayoutItem_VTable {
	void (*destructor)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self);
	QSize* (*sizeHint)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	QSize* (*minimumSize)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	QSize* (*maximumSize)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	int (*expandingDirections)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	void (*setGeometry)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self, QRect* geometry);
	QRect* (*geometry)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	bool (*isEmpty)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	bool (*hasHeightForWidth)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
	int (*heightForWidth)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self, int param1);
	int (*minimumHeightForWidth)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self, int param1);
	void (*invalidate)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self);
	QWidget* (*widget)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self);
	QLayout* (*layout)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self);
	QSpacerItem* (*spacerItem)(struct QLayoutItem_VTable* vtbl, QLayoutItem* self);
	int (*controlTypes)(struct QLayoutItem_VTable* vtbl, const QLayoutItem* self);
};
QLayoutItem* QLayoutItem_new(struct QLayoutItem_VTable* vtbl);
QLayoutItem* QLayoutItem_new2(struct QLayoutItem_VTable* vtbl, QLayoutItem* param1);
QLayoutItem* QLayoutItem_new3(struct QLayoutItem_VTable* vtbl, int alignment);
QSize* QLayoutItem_sizeHint(const QLayoutItem* self);
QSize* QLayoutItem_minimumSize(const QLayoutItem* self);
QSize* QLayoutItem_maximumSize(const QLayoutItem* self);
int QLayoutItem_expandingDirections(const QLayoutItem* self);
void QLayoutItem_setGeometry(QLayoutItem* self, QRect* geometry);
QRect* QLayoutItem_geometry(const QLayoutItem* self);
bool QLayoutItem_isEmpty(const QLayoutItem* self);
bool QLayoutItem_hasHeightForWidth(const QLayoutItem* self);
int QLayoutItem_heightForWidth(const QLayoutItem* self, int param1);
int QLayoutItem_minimumHeightForWidth(const QLayoutItem* self, int param1);
void QLayoutItem_invalidate(QLayoutItem* self);
QWidget* QLayoutItem_widget(QLayoutItem* self);
QLayout* QLayoutItem_layout(QLayoutItem* self);
QSpacerItem* QLayoutItem_spacerItem(QLayoutItem* self);
int QLayoutItem_alignment(const QLayoutItem* self);
void QLayoutItem_setAlignment(QLayoutItem* self, int a);
int QLayoutItem_controlTypes(const QLayoutItem* self);
QSize* QLayoutItem_virtualbase_sizeHint(const void* self);
QSize* QLayoutItem_virtualbase_minimumSize(const void* self);
QSize* QLayoutItem_virtualbase_maximumSize(const void* self);
int QLayoutItem_virtualbase_expandingDirections(const void* self);
void QLayoutItem_virtualbase_setGeometry(void* self, QRect* geometry);
QRect* QLayoutItem_virtualbase_geometry(const void* self);
bool QLayoutItem_virtualbase_isEmpty(const void* self);
bool QLayoutItem_virtualbase_hasHeightForWidth(const void* self);
int QLayoutItem_virtualbase_heightForWidth(const void* self, int param1);
int QLayoutItem_virtualbase_minimumHeightForWidth(const void* self, int param1);
void QLayoutItem_virtualbase_invalidate(void* self);
QWidget* QLayoutItem_virtualbase_widget(void* self);
QLayout* QLayoutItem_virtualbase_layout(void* self);
QSpacerItem* QLayoutItem_virtualbase_spacerItem(void* self);
int QLayoutItem_virtualbase_controlTypes(const void* self);
void QLayoutItem_delete(QLayoutItem* self);

struct QSpacerItem_VTable {
	void (*destructor)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self);
	QSize* (*sizeHint)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	QSize* (*minimumSize)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	QSize* (*maximumSize)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	int (*expandingDirections)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	bool (*isEmpty)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	void (*setGeometry)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self, QRect* geometry);
	QRect* (*geometry)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	QSpacerItem* (*spacerItem)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self);
	bool (*hasHeightForWidth)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
	int (*heightForWidth)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self, int param1);
	int (*minimumHeightForWidth)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self, int param1);
	void (*invalidate)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self);
	QWidget* (*widget)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self);
	QLayout* (*layout)(struct QSpacerItem_VTable* vtbl, QSpacerItem* self);
	int (*controlTypes)(struct QSpacerItem_VTable* vtbl, const QSpacerItem* self);
};
QSpacerItem* QSpacerItem_new(struct QSpacerItem_VTable* vtbl, int w, int h);
QSpacerItem* QSpacerItem_new2(struct QSpacerItem_VTable* vtbl, QSpacerItem* param1);
QSpacerItem* QSpacerItem_new3(struct QSpacerItem_VTable* vtbl, int w, int h, int hData);
QSpacerItem* QSpacerItem_new4(struct QSpacerItem_VTable* vtbl, int w, int h, int hData, int vData);
void QSpacerItem_virtbase(QSpacerItem* src, QLayoutItem** outptr_QLayoutItem);
void QSpacerItem_changeSize(QSpacerItem* self, int w, int h);
QSize* QSpacerItem_sizeHint(const QSpacerItem* self);
QSize* QSpacerItem_minimumSize(const QSpacerItem* self);
QSize* QSpacerItem_maximumSize(const QSpacerItem* self);
int QSpacerItem_expandingDirections(const QSpacerItem* self);
bool QSpacerItem_isEmpty(const QSpacerItem* self);
void QSpacerItem_setGeometry(QSpacerItem* self, QRect* geometry);
QRect* QSpacerItem_geometry(const QSpacerItem* self);
QSpacerItem* QSpacerItem_spacerItem(QSpacerItem* self);
QSizePolicy* QSpacerItem_sizePolicy(const QSpacerItem* self);
void QSpacerItem_changeSize3(QSpacerItem* self, int w, int h, int hData);
void QSpacerItem_changeSize4(QSpacerItem* self, int w, int h, int hData, int vData);
QSize* QSpacerItem_virtualbase_sizeHint(const void* self);
QSize* QSpacerItem_virtualbase_minimumSize(const void* self);
QSize* QSpacerItem_virtualbase_maximumSize(const void* self);
int QSpacerItem_virtualbase_expandingDirections(const void* self);
bool QSpacerItem_virtualbase_isEmpty(const void* self);
void QSpacerItem_virtualbase_setGeometry(void* self, QRect* geometry);
QRect* QSpacerItem_virtualbase_geometry(const void* self);
QSpacerItem* QSpacerItem_virtualbase_spacerItem(void* self);
bool QSpacerItem_virtualbase_hasHeightForWidth(const void* self);
int QSpacerItem_virtualbase_heightForWidth(const void* self, int param1);
int QSpacerItem_virtualbase_minimumHeightForWidth(const void* self, int param1);
void QSpacerItem_virtualbase_invalidate(void* self);
QWidget* QSpacerItem_virtualbase_widget(void* self);
QLayout* QSpacerItem_virtualbase_layout(void* self);
int QSpacerItem_virtualbase_controlTypes(const void* self);
void QSpacerItem_delete(QSpacerItem* self);

struct QWidgetItem_VTable {
	void (*destructor)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self);
	QSize* (*sizeHint)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	QSize* (*minimumSize)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	QSize* (*maximumSize)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	int (*expandingDirections)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	bool (*isEmpty)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	void (*setGeometry)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self, QRect* geometry);
	QRect* (*geometry)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	QWidget* (*widget)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self);
	bool (*hasHeightForWidth)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	int (*heightForWidth)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self, int param1);
	int (*controlTypes)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self);
	int (*minimumHeightForWidth)(struct QWidgetItem_VTable* vtbl, const QWidgetItem* self, int param1);
	void (*invalidate)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self);
	QLayout* (*layout)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self);
	QSpacerItem* (*spacerItem)(struct QWidgetItem_VTable* vtbl, QWidgetItem* self);
};
QWidgetItem* QWidgetItem_new(struct QWidgetItem_VTable* vtbl, QWidget* w);
void QWidgetItem_virtbase(QWidgetItem* src, QLayoutItem** outptr_QLayoutItem);
QSize* QWidgetItem_sizeHint(const QWidgetItem* self);
QSize* QWidgetItem_minimumSize(const QWidgetItem* self);
QSize* QWidgetItem_maximumSize(const QWidgetItem* self);
int QWidgetItem_expandingDirections(const QWidgetItem* self);
bool QWidgetItem_isEmpty(const QWidgetItem* self);
void QWidgetItem_setGeometry(QWidgetItem* self, QRect* geometry);
QRect* QWidgetItem_geometry(const QWidgetItem* self);
QWidget* QWidgetItem_widget(QWidgetItem* self);
bool QWidgetItem_hasHeightForWidth(const QWidgetItem* self);
int QWidgetItem_heightForWidth(const QWidgetItem* self, int param1);
int QWidgetItem_controlTypes(const QWidgetItem* self);
QSize* QWidgetItem_virtualbase_sizeHint(const void* self);
QSize* QWidgetItem_virtualbase_minimumSize(const void* self);
QSize* QWidgetItem_virtualbase_maximumSize(const void* self);
int QWidgetItem_virtualbase_expandingDirections(const void* self);
bool QWidgetItem_virtualbase_isEmpty(const void* self);
void QWidgetItem_virtualbase_setGeometry(void* self, QRect* geometry);
QRect* QWidgetItem_virtualbase_geometry(const void* self);
QWidget* QWidgetItem_virtualbase_widget(void* self);
bool QWidgetItem_virtualbase_hasHeightForWidth(const void* self);
int QWidgetItem_virtualbase_heightForWidth(const void* self, int param1);
int QWidgetItem_virtualbase_controlTypes(const void* self);
int QWidgetItem_virtualbase_minimumHeightForWidth(const void* self, int param1);
void QWidgetItem_virtualbase_invalidate(void* self);
QLayout* QWidgetItem_virtualbase_layout(void* self);
QSpacerItem* QWidgetItem_virtualbase_spacerItem(void* self);
void QWidgetItem_delete(QWidgetItem* self);

struct QWidgetItemV2_VTable {
	void (*destructor)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self);
	QSize* (*sizeHint)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	QSize* (*minimumSize)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	QSize* (*maximumSize)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	int (*heightForWidth)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self, int width);
	int (*expandingDirections)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	bool (*isEmpty)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	void (*setGeometry)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self, QRect* geometry);
	QRect* (*geometry)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	QWidget* (*widget)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self);
	bool (*hasHeightForWidth)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	int (*controlTypes)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self);
	int (*minimumHeightForWidth)(struct QWidgetItemV2_VTable* vtbl, const QWidgetItemV2* self, int param1);
	void (*invalidate)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self);
	QLayout* (*layout)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self);
	QSpacerItem* (*spacerItem)(struct QWidgetItemV2_VTable* vtbl, QWidgetItemV2* self);
};
QWidgetItemV2* QWidgetItemV2_new(struct QWidgetItemV2_VTable* vtbl, QWidget* widget);
void QWidgetItemV2_virtbase(QWidgetItemV2* src, QWidgetItem** outptr_QWidgetItem);
QSize* QWidgetItemV2_sizeHint(const QWidgetItemV2* self);
QSize* QWidgetItemV2_minimumSize(const QWidgetItemV2* self);
QSize* QWidgetItemV2_maximumSize(const QWidgetItemV2* self);
int QWidgetItemV2_heightForWidth(const QWidgetItemV2* self, int width);
QSize* QWidgetItemV2_virtualbase_sizeHint(const void* self);
QSize* QWidgetItemV2_virtualbase_minimumSize(const void* self);
QSize* QWidgetItemV2_virtualbase_maximumSize(const void* self);
int QWidgetItemV2_virtualbase_heightForWidth(const void* self, int width);
int QWidgetItemV2_virtualbase_expandingDirections(const void* self);
bool QWidgetItemV2_virtualbase_isEmpty(const void* self);
void QWidgetItemV2_virtualbase_setGeometry(void* self, QRect* geometry);
QRect* QWidgetItemV2_virtualbase_geometry(const void* self);
QWidget* QWidgetItemV2_virtualbase_widget(void* self);
bool QWidgetItemV2_virtualbase_hasHeightForWidth(const void* self);
int QWidgetItemV2_virtualbase_controlTypes(const void* self);
int QWidgetItemV2_virtualbase_minimumHeightForWidth(const void* self, int param1);
void QWidgetItemV2_virtualbase_invalidate(void* self);
QLayout* QWidgetItemV2_virtualbase_layout(void* self);
QSpacerItem* QWidgetItemV2_virtualbase_spacerItem(void* self);
void QWidgetItemV2_delete(QWidgetItemV2* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
