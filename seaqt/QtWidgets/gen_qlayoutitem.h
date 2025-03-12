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

typedef struct VirtualQLayoutItem VirtualQLayoutItem;
typedef struct QLayoutItem_VTable{
	void (*destructor)(VirtualQLayoutItem* self);
	QSize* (*sizeHint)(const VirtualQLayoutItem* self);
	QSize* (*minimumSize)(const VirtualQLayoutItem* self);
	QSize* (*maximumSize)(const VirtualQLayoutItem* self);
	int (*expandingDirections)(const VirtualQLayoutItem* self);
	void (*setGeometry)(VirtualQLayoutItem* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQLayoutItem* self);
	bool (*isEmpty)(const VirtualQLayoutItem* self);
	bool (*hasHeightForWidth)(const VirtualQLayoutItem* self);
	int (*heightForWidth)(const VirtualQLayoutItem* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQLayoutItem* self, int param1);
	void (*invalidate)(VirtualQLayoutItem* self);
	QWidget* (*widget)(const VirtualQLayoutItem* self);
	QLayout* (*layout)(VirtualQLayoutItem* self);
	QSpacerItem* (*spacerItem)(VirtualQLayoutItem* self);
	int (*controlTypes)(const VirtualQLayoutItem* self);
}QLayoutItem_VTable;

const QLayoutItem_VTable* QLayoutItem_vtbl(const VirtualQLayoutItem* self);
void* QLayoutItem_vdata(const VirtualQLayoutItem* self);
void QLayoutItem_setVdata(VirtualQLayoutItem* self, void* vdata);

VirtualQLayoutItem* QLayoutItem_new(const QLayoutItem_VTable* vtbl, void* vdata);
VirtualQLayoutItem* QLayoutItem_new2(const QLayoutItem_VTable* vtbl, void* vdata, QLayoutItem* param1);
VirtualQLayoutItem* QLayoutItem_new3(const QLayoutItem_VTable* vtbl, void* vdata, int alignment);

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
QWidget* QLayoutItem_widget(const QLayoutItem* self);
QLayout* QLayoutItem_layout(QLayoutItem* self);
QSpacerItem* QLayoutItem_spacerItem(QLayoutItem* self);
int QLayoutItem_alignment(const QLayoutItem* self);
void QLayoutItem_setAlignment(QLayoutItem* self, int a);
int QLayoutItem_controlTypes(const QLayoutItem* self);

QSize* QLayoutItem_virtualbase_sizeHint(const VirtualQLayoutItem* self);
QSize* QLayoutItem_virtualbase_minimumSize(const VirtualQLayoutItem* self);
QSize* QLayoutItem_virtualbase_maximumSize(const VirtualQLayoutItem* self);
int QLayoutItem_virtualbase_expandingDirections(const VirtualQLayoutItem* self);
void QLayoutItem_virtualbase_setGeometry(VirtualQLayoutItem* self, QRect* geometry);
QRect* QLayoutItem_virtualbase_geometry(const VirtualQLayoutItem* self);
bool QLayoutItem_virtualbase_isEmpty(const VirtualQLayoutItem* self);
bool QLayoutItem_virtualbase_hasHeightForWidth(const VirtualQLayoutItem* self);
int QLayoutItem_virtualbase_heightForWidth(const VirtualQLayoutItem* self, int param1);
int QLayoutItem_virtualbase_minimumHeightForWidth(const VirtualQLayoutItem* self, int param1);
void QLayoutItem_virtualbase_invalidate(VirtualQLayoutItem* self);
QWidget* QLayoutItem_virtualbase_widget(const VirtualQLayoutItem* self);
QLayout* QLayoutItem_virtualbase_layout(VirtualQLayoutItem* self);
QSpacerItem* QLayoutItem_virtualbase_spacerItem(VirtualQLayoutItem* self);
int QLayoutItem_virtualbase_controlTypes(const VirtualQLayoutItem* self);

void QLayoutItem_delete(QLayoutItem* self);

typedef struct VirtualQSpacerItem VirtualQSpacerItem;
typedef struct QSpacerItem_VTable{
	void (*destructor)(VirtualQSpacerItem* self);
	QSize* (*sizeHint)(const VirtualQSpacerItem* self);
	QSize* (*minimumSize)(const VirtualQSpacerItem* self);
	QSize* (*maximumSize)(const VirtualQSpacerItem* self);
	int (*expandingDirections)(const VirtualQSpacerItem* self);
	bool (*isEmpty)(const VirtualQSpacerItem* self);
	void (*setGeometry)(VirtualQSpacerItem* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQSpacerItem* self);
	QSpacerItem* (*spacerItem)(VirtualQSpacerItem* self);
	bool (*hasHeightForWidth)(const VirtualQSpacerItem* self);
	int (*heightForWidth)(const VirtualQSpacerItem* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQSpacerItem* self, int param1);
	void (*invalidate)(VirtualQSpacerItem* self);
	QWidget* (*widget)(const VirtualQSpacerItem* self);
	QLayout* (*layout)(VirtualQSpacerItem* self);
	int (*controlTypes)(const VirtualQSpacerItem* self);
}QSpacerItem_VTable;

const QSpacerItem_VTable* QSpacerItem_vtbl(const VirtualQSpacerItem* self);
void* QSpacerItem_vdata(const VirtualQSpacerItem* self);
void QSpacerItem_setVdata(VirtualQSpacerItem* self, void* vdata);

VirtualQSpacerItem* QSpacerItem_new(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h);
VirtualQSpacerItem* QSpacerItem_new2(const QSpacerItem_VTable* vtbl, void* vdata, QSpacerItem* param1);
VirtualQSpacerItem* QSpacerItem_new3(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, int hData);
VirtualQSpacerItem* QSpacerItem_new4(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, int hData, int vData);

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

QSize* QSpacerItem_virtualbase_sizeHint(const VirtualQSpacerItem* self);
QSize* QSpacerItem_virtualbase_minimumSize(const VirtualQSpacerItem* self);
QSize* QSpacerItem_virtualbase_maximumSize(const VirtualQSpacerItem* self);
int QSpacerItem_virtualbase_expandingDirections(const VirtualQSpacerItem* self);
bool QSpacerItem_virtualbase_isEmpty(const VirtualQSpacerItem* self);
void QSpacerItem_virtualbase_setGeometry(VirtualQSpacerItem* self, QRect* geometry);
QRect* QSpacerItem_virtualbase_geometry(const VirtualQSpacerItem* self);
QSpacerItem* QSpacerItem_virtualbase_spacerItem(VirtualQSpacerItem* self);
bool QSpacerItem_virtualbase_hasHeightForWidth(const VirtualQSpacerItem* self);
int QSpacerItem_virtualbase_heightForWidth(const VirtualQSpacerItem* self, int param1);
int QSpacerItem_virtualbase_minimumHeightForWidth(const VirtualQSpacerItem* self, int param1);
void QSpacerItem_virtualbase_invalidate(VirtualQSpacerItem* self);
QWidget* QSpacerItem_virtualbase_widget(const VirtualQSpacerItem* self);
QLayout* QSpacerItem_virtualbase_layout(VirtualQSpacerItem* self);
int QSpacerItem_virtualbase_controlTypes(const VirtualQSpacerItem* self);

void QSpacerItem_delete(QSpacerItem* self);

typedef struct VirtualQWidgetItem VirtualQWidgetItem;
typedef struct QWidgetItem_VTable{
	void (*destructor)(VirtualQWidgetItem* self);
	QSize* (*sizeHint)(const VirtualQWidgetItem* self);
	QSize* (*minimumSize)(const VirtualQWidgetItem* self);
	QSize* (*maximumSize)(const VirtualQWidgetItem* self);
	int (*expandingDirections)(const VirtualQWidgetItem* self);
	bool (*isEmpty)(const VirtualQWidgetItem* self);
	void (*setGeometry)(VirtualQWidgetItem* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQWidgetItem* self);
	QWidget* (*widget)(const VirtualQWidgetItem* self);
	bool (*hasHeightForWidth)(const VirtualQWidgetItem* self);
	int (*heightForWidth)(const VirtualQWidgetItem* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQWidgetItem* self, int param1);
	int (*controlTypes)(const VirtualQWidgetItem* self);
	void (*invalidate)(VirtualQWidgetItem* self);
	QLayout* (*layout)(VirtualQWidgetItem* self);
	QSpacerItem* (*spacerItem)(VirtualQWidgetItem* self);
}QWidgetItem_VTable;

const QWidgetItem_VTable* QWidgetItem_vtbl(const VirtualQWidgetItem* self);
void* QWidgetItem_vdata(const VirtualQWidgetItem* self);
void QWidgetItem_setVdata(VirtualQWidgetItem* self, void* vdata);

VirtualQWidgetItem* QWidgetItem_new(const QWidgetItem_VTable* vtbl, void* vdata, QWidget* w);

void QWidgetItem_virtbase(QWidgetItem* src, QLayoutItem** outptr_QLayoutItem);
QSize* QWidgetItem_sizeHint(const QWidgetItem* self);
QSize* QWidgetItem_minimumSize(const QWidgetItem* self);
QSize* QWidgetItem_maximumSize(const QWidgetItem* self);
int QWidgetItem_expandingDirections(const QWidgetItem* self);
bool QWidgetItem_isEmpty(const QWidgetItem* self);
void QWidgetItem_setGeometry(QWidgetItem* self, QRect* geometry);
QRect* QWidgetItem_geometry(const QWidgetItem* self);
QWidget* QWidgetItem_widget(const QWidgetItem* self);
bool QWidgetItem_hasHeightForWidth(const QWidgetItem* self);
int QWidgetItem_heightForWidth(const QWidgetItem* self, int param1);
int QWidgetItem_minimumHeightForWidth(const QWidgetItem* self, int param1);
int QWidgetItem_controlTypes(const QWidgetItem* self);

QSize* QWidgetItem_virtualbase_sizeHint(const VirtualQWidgetItem* self);
QSize* QWidgetItem_virtualbase_minimumSize(const VirtualQWidgetItem* self);
QSize* QWidgetItem_virtualbase_maximumSize(const VirtualQWidgetItem* self);
int QWidgetItem_virtualbase_expandingDirections(const VirtualQWidgetItem* self);
bool QWidgetItem_virtualbase_isEmpty(const VirtualQWidgetItem* self);
void QWidgetItem_virtualbase_setGeometry(VirtualQWidgetItem* self, QRect* geometry);
QRect* QWidgetItem_virtualbase_geometry(const VirtualQWidgetItem* self);
QWidget* QWidgetItem_virtualbase_widget(const VirtualQWidgetItem* self);
bool QWidgetItem_virtualbase_hasHeightForWidth(const VirtualQWidgetItem* self);
int QWidgetItem_virtualbase_heightForWidth(const VirtualQWidgetItem* self, int param1);
int QWidgetItem_virtualbase_minimumHeightForWidth(const VirtualQWidgetItem* self, int param1);
int QWidgetItem_virtualbase_controlTypes(const VirtualQWidgetItem* self);
void QWidgetItem_virtualbase_invalidate(VirtualQWidgetItem* self);
QLayout* QWidgetItem_virtualbase_layout(VirtualQWidgetItem* self);
QSpacerItem* QWidgetItem_virtualbase_spacerItem(VirtualQWidgetItem* self);

void QWidgetItem_delete(QWidgetItem* self);

typedef struct VirtualQWidgetItemV2 VirtualQWidgetItemV2;
typedef struct QWidgetItemV2_VTable{
	void (*destructor)(VirtualQWidgetItemV2* self);
	QSize* (*sizeHint)(const VirtualQWidgetItemV2* self);
	QSize* (*minimumSize)(const VirtualQWidgetItemV2* self);
	QSize* (*maximumSize)(const VirtualQWidgetItemV2* self);
	int (*heightForWidth)(const VirtualQWidgetItemV2* self, int width);
	int (*expandingDirections)(const VirtualQWidgetItemV2* self);
	bool (*isEmpty)(const VirtualQWidgetItemV2* self);
	void (*setGeometry)(VirtualQWidgetItemV2* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQWidgetItemV2* self);
	QWidget* (*widget)(const VirtualQWidgetItemV2* self);
	bool (*hasHeightForWidth)(const VirtualQWidgetItemV2* self);
	int (*minimumHeightForWidth)(const VirtualQWidgetItemV2* self, int param1);
	int (*controlTypes)(const VirtualQWidgetItemV2* self);
	void (*invalidate)(VirtualQWidgetItemV2* self);
	QLayout* (*layout)(VirtualQWidgetItemV2* self);
	QSpacerItem* (*spacerItem)(VirtualQWidgetItemV2* self);
}QWidgetItemV2_VTable;

const QWidgetItemV2_VTable* QWidgetItemV2_vtbl(const VirtualQWidgetItemV2* self);
void* QWidgetItemV2_vdata(const VirtualQWidgetItemV2* self);
void QWidgetItemV2_setVdata(VirtualQWidgetItemV2* self, void* vdata);

VirtualQWidgetItemV2* QWidgetItemV2_new(const QWidgetItemV2_VTable* vtbl, void* vdata, QWidget* widget);

void QWidgetItemV2_virtbase(QWidgetItemV2* src, QWidgetItem** outptr_QWidgetItem);
QSize* QWidgetItemV2_sizeHint(const QWidgetItemV2* self);
QSize* QWidgetItemV2_minimumSize(const QWidgetItemV2* self);
QSize* QWidgetItemV2_maximumSize(const QWidgetItemV2* self);
int QWidgetItemV2_heightForWidth(const QWidgetItemV2* self, int width);

QSize* QWidgetItemV2_virtualbase_sizeHint(const VirtualQWidgetItemV2* self);
QSize* QWidgetItemV2_virtualbase_minimumSize(const VirtualQWidgetItemV2* self);
QSize* QWidgetItemV2_virtualbase_maximumSize(const VirtualQWidgetItemV2* self);
int QWidgetItemV2_virtualbase_heightForWidth(const VirtualQWidgetItemV2* self, int width);
int QWidgetItemV2_virtualbase_expandingDirections(const VirtualQWidgetItemV2* self);
bool QWidgetItemV2_virtualbase_isEmpty(const VirtualQWidgetItemV2* self);
void QWidgetItemV2_virtualbase_setGeometry(VirtualQWidgetItemV2* self, QRect* geometry);
QRect* QWidgetItemV2_virtualbase_geometry(const VirtualQWidgetItemV2* self);
QWidget* QWidgetItemV2_virtualbase_widget(const VirtualQWidgetItemV2* self);
bool QWidgetItemV2_virtualbase_hasHeightForWidth(const VirtualQWidgetItemV2* self);
int QWidgetItemV2_virtualbase_minimumHeightForWidth(const VirtualQWidgetItemV2* self, int param1);
int QWidgetItemV2_virtualbase_controlTypes(const VirtualQWidgetItemV2* self);
void QWidgetItemV2_virtualbase_invalidate(VirtualQWidgetItemV2* self);
QLayout* QWidgetItemV2_virtualbase_layout(VirtualQWidgetItemV2* self);
QSpacerItem* QWidgetItemV2_virtualbase_spacerItem(VirtualQWidgetItemV2* self);

void QWidgetItemV2_delete(QWidgetItemV2* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
