#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QGRIDLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QGRIDLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QGridLayout;
class QLayout;
class QLayoutItem;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QSize;
class QSpacerItem;
class QTimerEvent;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QGridLayout QGridLayout;
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSpacerItem QSpacerItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQGridLayout VirtualQGridLayout;
typedef struct QGridLayout_VTable{
	void (*destructor)(VirtualQGridLayout* self);
	QMetaObject* (*metaObject)(const VirtualQGridLayout* self);
	void* (*metacast)(VirtualQGridLayout* self, const char* param1);
	int (*metacall)(VirtualQGridLayout* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQGridLayout* self);
	QSize* (*minimumSize)(const VirtualQGridLayout* self);
	QSize* (*maximumSize)(const VirtualQGridLayout* self);
	void (*setSpacing)(VirtualQGridLayout* self, int spacing);
	int (*spacing)(const VirtualQGridLayout* self);
	bool (*hasHeightForWidth)(const VirtualQGridLayout* self);
	int (*heightForWidth)(const VirtualQGridLayout* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQGridLayout* self, int param1);
	int (*expandingDirections)(const VirtualQGridLayout* self);
	void (*invalidate)(VirtualQGridLayout* self);
	QLayoutItem* (*itemAt)(const VirtualQGridLayout* self, int index);
	QLayoutItem* (*takeAt)(VirtualQGridLayout* self, int index);
	int (*count)(const VirtualQGridLayout* self);
	void (*setGeometry)(VirtualQGridLayout* self, QRect* geometry);
	void (*addItemWithQLayoutItem)(VirtualQGridLayout* self, QLayoutItem* param1);
	QRect* (*geometry)(const VirtualQGridLayout* self);
	int (*indexOf)(const VirtualQGridLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQGridLayout* self);
	int (*controlTypes)(const VirtualQGridLayout* self);
	QLayoutItem* (*replaceWidget)(VirtualQGridLayout* self, QWidget* from, QWidget* to, int options);
	QLayout* (*layout)(VirtualQGridLayout* self);
	void (*childEvent)(VirtualQGridLayout* self, QChildEvent* e);
	bool (*event)(VirtualQGridLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQGridLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQGridLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQGridLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQGridLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQGridLayout* self, QMetaMethod* signal);
	QWidget* (*widget)(const VirtualQGridLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQGridLayout* self);
}QGridLayout_VTable;

const QGridLayout_VTable* QGridLayout_vtbl(const VirtualQGridLayout* self);
void* QGridLayout_vdata(const VirtualQGridLayout* self);
void QGridLayout_setVdata(VirtualQGridLayout* self, void* vdata);

VirtualQGridLayout* QGridLayout_new(const QGridLayout_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQGridLayout* QGridLayout_new2(const QGridLayout_VTable* vtbl, void* vdata);

void QGridLayout_virtbase(QGridLayout* src, QLayout** outptr_QLayout);
QMetaObject* QGridLayout_metaObject(const QGridLayout* self);
void* QGridLayout_metacast(QGridLayout* self, const char* param1);
int QGridLayout_metacall(QGridLayout* self, int param1, int param2, void** param3);
struct miqt_string QGridLayout_tr(const char* s);
QSize* QGridLayout_sizeHint(const QGridLayout* self);
QSize* QGridLayout_minimumSize(const QGridLayout* self);
QSize* QGridLayout_maximumSize(const QGridLayout* self);
void QGridLayout_setHorizontalSpacing(QGridLayout* self, int spacing);
int QGridLayout_horizontalSpacing(const QGridLayout* self);
void QGridLayout_setVerticalSpacing(QGridLayout* self, int spacing);
int QGridLayout_verticalSpacing(const QGridLayout* self);
void QGridLayout_setSpacing(QGridLayout* self, int spacing);
int QGridLayout_spacing(const QGridLayout* self);
void QGridLayout_setRowStretch(QGridLayout* self, int row, int stretch);
void QGridLayout_setColumnStretch(QGridLayout* self, int column, int stretch);
int QGridLayout_rowStretch(const QGridLayout* self, int row);
int QGridLayout_columnStretch(const QGridLayout* self, int column);
void QGridLayout_setRowMinimumHeight(QGridLayout* self, int row, int minSize);
void QGridLayout_setColumnMinimumWidth(QGridLayout* self, int column, int minSize);
int QGridLayout_rowMinimumHeight(const QGridLayout* self, int row);
int QGridLayout_columnMinimumWidth(const QGridLayout* self, int column);
int QGridLayout_columnCount(const QGridLayout* self);
int QGridLayout_rowCount(const QGridLayout* self);
QRect* QGridLayout_cellRect(const QGridLayout* self, int row, int column);
bool QGridLayout_hasHeightForWidth(const QGridLayout* self);
int QGridLayout_heightForWidth(const QGridLayout* self, int param1);
int QGridLayout_minimumHeightForWidth(const QGridLayout* self, int param1);
int QGridLayout_expandingDirections(const QGridLayout* self);
void QGridLayout_invalidate(QGridLayout* self);
void QGridLayout_addWidget(QGridLayout* self, QWidget* w);
void QGridLayout_addWidget2(QGridLayout* self, QWidget* param1, int row, int column);
void QGridLayout_addWidget3(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan);
void QGridLayout_addLayout(QGridLayout* self, QLayout* param1, int row, int column);
void QGridLayout_addLayout2(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan);
void QGridLayout_setOriginCorner(QGridLayout* self, int originCorner);
int QGridLayout_originCorner(const QGridLayout* self);
QLayoutItem* QGridLayout_itemAt(const QGridLayout* self, int index);
QLayoutItem* QGridLayout_itemAtPosition(const QGridLayout* self, int row, int column);
QLayoutItem* QGridLayout_takeAt(QGridLayout* self, int index);
int QGridLayout_count(const QGridLayout* self);
void QGridLayout_setGeometry(QGridLayout* self, QRect* geometry);
void QGridLayout_addItem(QGridLayout* self, QLayoutItem* item, int row, int column);
void QGridLayout_setDefaultPositioning(QGridLayout* self, int n, int orient);
void QGridLayout_getItemPosition(const QGridLayout* self, int idx, int* row, int* column, int* rowSpan, int* columnSpan);
void QGridLayout_addItemWithQLayoutItem(QGridLayout* self, QLayoutItem* param1);
struct miqt_string QGridLayout_tr2(const char* s, const char* c);
struct miqt_string QGridLayout_tr3(const char* s, const char* c, int n);
void QGridLayout_addWidget4(QGridLayout* self, QWidget* param1, int row, int column, int param4);
void QGridLayout_addWidget6(QGridLayout* self, QWidget* param1, int row, int column, int rowSpan, int columnSpan, int param6);
void QGridLayout_addLayout4(QGridLayout* self, QLayout* param1, int row, int column, int param4);
void QGridLayout_addLayout6(QGridLayout* self, QLayout* param1, int row, int column, int rowSpan, int columnSpan, int param6);
void QGridLayout_addItem4(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan);
void QGridLayout_addItem5(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan);
void QGridLayout_addItem6(QGridLayout* self, QLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int param6);

QMetaObject* QGridLayout_virtualbase_metaObject(const VirtualQGridLayout* self);
void* QGridLayout_virtualbase_metacast(VirtualQGridLayout* self, const char* param1);
int QGridLayout_virtualbase_metacall(VirtualQGridLayout* self, int param1, int param2, void** param3);
QSize* QGridLayout_virtualbase_sizeHint(const VirtualQGridLayout* self);
QSize* QGridLayout_virtualbase_minimumSize(const VirtualQGridLayout* self);
QSize* QGridLayout_virtualbase_maximumSize(const VirtualQGridLayout* self);
void QGridLayout_virtualbase_setSpacing(VirtualQGridLayout* self, int spacing);
int QGridLayout_virtualbase_spacing(const VirtualQGridLayout* self);
bool QGridLayout_virtualbase_hasHeightForWidth(const VirtualQGridLayout* self);
int QGridLayout_virtualbase_heightForWidth(const VirtualQGridLayout* self, int param1);
int QGridLayout_virtualbase_minimumHeightForWidth(const VirtualQGridLayout* self, int param1);
int QGridLayout_virtualbase_expandingDirections(const VirtualQGridLayout* self);
void QGridLayout_virtualbase_invalidate(VirtualQGridLayout* self);
QLayoutItem* QGridLayout_virtualbase_itemAt(const VirtualQGridLayout* self, int index);
QLayoutItem* QGridLayout_virtualbase_takeAt(VirtualQGridLayout* self, int index);
int QGridLayout_virtualbase_count(const VirtualQGridLayout* self);
void QGridLayout_virtualbase_setGeometry(VirtualQGridLayout* self, QRect* geometry);
void QGridLayout_virtualbase_addItemWithQLayoutItem(VirtualQGridLayout* self, QLayoutItem* param1);
QRect* QGridLayout_virtualbase_geometry(const VirtualQGridLayout* self);
int QGridLayout_virtualbase_indexOf(const VirtualQGridLayout* self, QWidget* param1);
bool QGridLayout_virtualbase_isEmpty(const VirtualQGridLayout* self);
int QGridLayout_virtualbase_controlTypes(const VirtualQGridLayout* self);
QLayoutItem* QGridLayout_virtualbase_replaceWidget(VirtualQGridLayout* self, QWidget* from, QWidget* to, int options);
QLayout* QGridLayout_virtualbase_layout(VirtualQGridLayout* self);
void QGridLayout_virtualbase_childEvent(VirtualQGridLayout* self, QChildEvent* e);
bool QGridLayout_virtualbase_event(VirtualQGridLayout* self, QEvent* event);
bool QGridLayout_virtualbase_eventFilter(VirtualQGridLayout* self, QObject* watched, QEvent* event);
void QGridLayout_virtualbase_timerEvent(VirtualQGridLayout* self, QTimerEvent* event);
void QGridLayout_virtualbase_customEvent(VirtualQGridLayout* self, QEvent* event);
void QGridLayout_virtualbase_connectNotify(VirtualQGridLayout* self, QMetaMethod* signal);
void QGridLayout_virtualbase_disconnectNotify(VirtualQGridLayout* self, QMetaMethod* signal);
QWidget* QGridLayout_virtualbase_widget(const VirtualQGridLayout* self);
QSpacerItem* QGridLayout_virtualbase_spacerItem(VirtualQGridLayout* self);

void QGridLayout_protectedbase_widgetEvent(VirtualQGridLayout* self, QEvent* param1);
void QGridLayout_protectedbase_addChildLayout(VirtualQGridLayout* self, QLayout* l);
void QGridLayout_protectedbase_addChildWidget(VirtualQGridLayout* self, QWidget* w);
bool QGridLayout_protectedbase_adoptLayout(VirtualQGridLayout* self, QLayout* layout);
QRect* QGridLayout_protectedbase_alignmentRect(const VirtualQGridLayout* self, QRect* param1);
QObject* QGridLayout_protectedbase_sender(const VirtualQGridLayout* self);
int QGridLayout_protectedbase_senderSignalIndex(const VirtualQGridLayout* self);
int QGridLayout_protectedbase_receivers(const VirtualQGridLayout* self, const char* signal);
bool QGridLayout_protectedbase_isSignalConnected(const VirtualQGridLayout* self, QMetaMethod* signal);

const QMetaObject* QGridLayout_staticMetaObject();
void QGridLayout_delete(QGridLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
