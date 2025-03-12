#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFORMLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QFORMLAYOUT_H

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
class QFormLayout;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QFormLayout__TakeRowResult)
typedef QFormLayout::TakeRowResult QFormLayout__TakeRowResult;
#else
class QFormLayout__TakeRowResult;
#endif
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
typedef struct QFormLayout QFormLayout;
typedef struct QFormLayout__TakeRowResult QFormLayout__TakeRowResult;
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

typedef struct VirtualQFormLayout VirtualQFormLayout;
typedef struct QFormLayout_VTable{
	void (*destructor)(VirtualQFormLayout* self);
	QMetaObject* (*metaObject)(const VirtualQFormLayout* self);
	void* (*metacast)(VirtualQFormLayout* self, const char* param1);
	int (*metacall)(VirtualQFormLayout* self, int param1, int param2, void** param3);
	int (*spacing)(const VirtualQFormLayout* self);
	void (*setSpacing)(VirtualQFormLayout* self, int spacing);
	void (*addItem)(VirtualQFormLayout* self, QLayoutItem* item);
	QLayoutItem* (*itemAtWithIndex)(const VirtualQFormLayout* self, int index);
	QLayoutItem* (*takeAt)(VirtualQFormLayout* self, int index);
	void (*setGeometry)(VirtualQFormLayout* self, QRect* rect);
	QSize* (*minimumSize)(const VirtualQFormLayout* self);
	QSize* (*sizeHint)(const VirtualQFormLayout* self);
	void (*invalidate)(VirtualQFormLayout* self);
	bool (*hasHeightForWidth)(const VirtualQFormLayout* self);
	int (*heightForWidth)(const VirtualQFormLayout* self, int width);
	int (*expandingDirections)(const VirtualQFormLayout* self);
	int (*count)(const VirtualQFormLayout* self);
	QRect* (*geometry)(const VirtualQFormLayout* self);
	QSize* (*maximumSize)(const VirtualQFormLayout* self);
	int (*indexOf)(const VirtualQFormLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQFormLayout* self);
	int (*controlTypes)(const VirtualQFormLayout* self);
	QLayoutItem* (*replaceWidget)(VirtualQFormLayout* self, QWidget* from, QWidget* to, int options);
	QLayout* (*layout)(VirtualQFormLayout* self);
	void (*childEvent)(VirtualQFormLayout* self, QChildEvent* e);
	bool (*event)(VirtualQFormLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQFormLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQFormLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQFormLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQFormLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFormLayout* self, QMetaMethod* signal);
	int (*minimumHeightForWidth)(const VirtualQFormLayout* self, int param1);
	QWidget* (*widget)(const VirtualQFormLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQFormLayout* self);
}QFormLayout_VTable;

const QFormLayout_VTable* QFormLayout_vtbl(const VirtualQFormLayout* self);
void* QFormLayout_vdata(const VirtualQFormLayout* self);
void QFormLayout_setVdata(VirtualQFormLayout* self, void* vdata);

VirtualQFormLayout* QFormLayout_new(const QFormLayout_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQFormLayout* QFormLayout_new2(const QFormLayout_VTable* vtbl, void* vdata);

void QFormLayout_virtbase(QFormLayout* src, QLayout** outptr_QLayout);
QMetaObject* QFormLayout_metaObject(const QFormLayout* self);
void* QFormLayout_metacast(QFormLayout* self, const char* param1);
int QFormLayout_metacall(QFormLayout* self, int param1, int param2, void** param3);
struct miqt_string QFormLayout_tr(const char* s);
void QFormLayout_setFieldGrowthPolicy(QFormLayout* self, int policy);
int QFormLayout_fieldGrowthPolicy(const QFormLayout* self);
void QFormLayout_setRowWrapPolicy(QFormLayout* self, int policy);
int QFormLayout_rowWrapPolicy(const QFormLayout* self);
void QFormLayout_setLabelAlignment(QFormLayout* self, int alignment);
int QFormLayout_labelAlignment(const QFormLayout* self);
void QFormLayout_setFormAlignment(QFormLayout* self, int alignment);
int QFormLayout_formAlignment(const QFormLayout* self);
void QFormLayout_setHorizontalSpacing(QFormLayout* self, int spacing);
int QFormLayout_horizontalSpacing(const QFormLayout* self);
void QFormLayout_setVerticalSpacing(QFormLayout* self, int spacing);
int QFormLayout_verticalSpacing(const QFormLayout* self);
int QFormLayout_spacing(const QFormLayout* self);
void QFormLayout_setSpacing(QFormLayout* self, int spacing);
void QFormLayout_addRow(QFormLayout* self, QWidget* label, QWidget* field);
void QFormLayout_addRow2(QFormLayout* self, QWidget* label, QLayout* field);
void QFormLayout_addRow3(QFormLayout* self, struct miqt_string labelText, QWidget* field);
void QFormLayout_addRow4(QFormLayout* self, struct miqt_string labelText, QLayout* field);
void QFormLayout_addRowWithWidget(QFormLayout* self, QWidget* widget);
void QFormLayout_addRowWithLayout(QFormLayout* self, QLayout* layout);
void QFormLayout_insertRow(QFormLayout* self, int row, QWidget* label, QWidget* field);
void QFormLayout_insertRow2(QFormLayout* self, int row, QWidget* label, QLayout* field);
void QFormLayout_insertRow3(QFormLayout* self, int row, struct miqt_string labelText, QWidget* field);
void QFormLayout_insertRow4(QFormLayout* self, int row, struct miqt_string labelText, QLayout* field);
void QFormLayout_insertRow5(QFormLayout* self, int row, QWidget* widget);
void QFormLayout_insertRow6(QFormLayout* self, int row, QLayout* layout);
void QFormLayout_removeRow(QFormLayout* self, int row);
void QFormLayout_removeRowWithWidget(QFormLayout* self, QWidget* widget);
void QFormLayout_removeRowWithLayout(QFormLayout* self, QLayout* layout);
QFormLayout__TakeRowResult* QFormLayout_takeRow(QFormLayout* self, int row);
QFormLayout__TakeRowResult* QFormLayout_takeRowWithWidget(QFormLayout* self, QWidget* widget);
QFormLayout__TakeRowResult* QFormLayout_takeRowWithLayout(QFormLayout* self, QLayout* layout);
void QFormLayout_setItem(QFormLayout* self, int row, int role, QLayoutItem* item);
void QFormLayout_setWidget(QFormLayout* self, int row, int role, QWidget* widget);
void QFormLayout_setLayout(QFormLayout* self, int row, int role, QLayout* layout);
void QFormLayout_setRowVisible(QFormLayout* self, int row, bool on);
void QFormLayout_setRowVisible2(QFormLayout* self, QWidget* widget, bool on);
void QFormLayout_setRowVisible3(QFormLayout* self, QLayout* layout, bool on);
bool QFormLayout_isRowVisible(const QFormLayout* self, int row);
bool QFormLayout_isRowVisibleWithWidget(const QFormLayout* self, QWidget* widget);
bool QFormLayout_isRowVisibleWithLayout(const QFormLayout* self, QLayout* layout);
QLayoutItem* QFormLayout_itemAt(const QFormLayout* self, int row, int role);
QWidget* QFormLayout_labelForField(const QFormLayout* self, QWidget* field);
QWidget* QFormLayout_labelForFieldWithField(const QFormLayout* self, QLayout* field);
void QFormLayout_addItem(QFormLayout* self, QLayoutItem* item);
QLayoutItem* QFormLayout_itemAtWithIndex(const QFormLayout* self, int index);
QLayoutItem* QFormLayout_takeAt(QFormLayout* self, int index);
void QFormLayout_setGeometry(QFormLayout* self, QRect* rect);
QSize* QFormLayout_minimumSize(const QFormLayout* self);
QSize* QFormLayout_sizeHint(const QFormLayout* self);
void QFormLayout_invalidate(QFormLayout* self);
bool QFormLayout_hasHeightForWidth(const QFormLayout* self);
int QFormLayout_heightForWidth(const QFormLayout* self, int width);
int QFormLayout_expandingDirections(const QFormLayout* self);
int QFormLayout_count(const QFormLayout* self);
int QFormLayout_rowCount(const QFormLayout* self);
struct miqt_string QFormLayout_tr2(const char* s, const char* c);
struct miqt_string QFormLayout_tr3(const char* s, const char* c, int n);

QMetaObject* QFormLayout_virtualbase_metaObject(const VirtualQFormLayout* self);
void* QFormLayout_virtualbase_metacast(VirtualQFormLayout* self, const char* param1);
int QFormLayout_virtualbase_metacall(VirtualQFormLayout* self, int param1, int param2, void** param3);
int QFormLayout_virtualbase_spacing(const VirtualQFormLayout* self);
void QFormLayout_virtualbase_setSpacing(VirtualQFormLayout* self, int spacing);
void QFormLayout_virtualbase_addItem(VirtualQFormLayout* self, QLayoutItem* item);
QLayoutItem* QFormLayout_virtualbase_itemAtWithIndex(const VirtualQFormLayout* self, int index);
QLayoutItem* QFormLayout_virtualbase_takeAt(VirtualQFormLayout* self, int index);
void QFormLayout_virtualbase_setGeometry(VirtualQFormLayout* self, QRect* rect);
QSize* QFormLayout_virtualbase_minimumSize(const VirtualQFormLayout* self);
QSize* QFormLayout_virtualbase_sizeHint(const VirtualQFormLayout* self);
void QFormLayout_virtualbase_invalidate(VirtualQFormLayout* self);
bool QFormLayout_virtualbase_hasHeightForWidth(const VirtualQFormLayout* self);
int QFormLayout_virtualbase_heightForWidth(const VirtualQFormLayout* self, int width);
int QFormLayout_virtualbase_expandingDirections(const VirtualQFormLayout* self);
int QFormLayout_virtualbase_count(const VirtualQFormLayout* self);
QRect* QFormLayout_virtualbase_geometry(const VirtualQFormLayout* self);
QSize* QFormLayout_virtualbase_maximumSize(const VirtualQFormLayout* self);
int QFormLayout_virtualbase_indexOf(const VirtualQFormLayout* self, QWidget* param1);
bool QFormLayout_virtualbase_isEmpty(const VirtualQFormLayout* self);
int QFormLayout_virtualbase_controlTypes(const VirtualQFormLayout* self);
QLayoutItem* QFormLayout_virtualbase_replaceWidget(VirtualQFormLayout* self, QWidget* from, QWidget* to, int options);
QLayout* QFormLayout_virtualbase_layout(VirtualQFormLayout* self);
void QFormLayout_virtualbase_childEvent(VirtualQFormLayout* self, QChildEvent* e);
bool QFormLayout_virtualbase_event(VirtualQFormLayout* self, QEvent* event);
bool QFormLayout_virtualbase_eventFilter(VirtualQFormLayout* self, QObject* watched, QEvent* event);
void QFormLayout_virtualbase_timerEvent(VirtualQFormLayout* self, QTimerEvent* event);
void QFormLayout_virtualbase_customEvent(VirtualQFormLayout* self, QEvent* event);
void QFormLayout_virtualbase_connectNotify(VirtualQFormLayout* self, QMetaMethod* signal);
void QFormLayout_virtualbase_disconnectNotify(VirtualQFormLayout* self, QMetaMethod* signal);
int QFormLayout_virtualbase_minimumHeightForWidth(const VirtualQFormLayout* self, int param1);
QWidget* QFormLayout_virtualbase_widget(const VirtualQFormLayout* self);
QSpacerItem* QFormLayout_virtualbase_spacerItem(VirtualQFormLayout* self);

void QFormLayout_protectedbase_widgetEvent(VirtualQFormLayout* self, QEvent* param1);
void QFormLayout_protectedbase_addChildLayout(VirtualQFormLayout* self, QLayout* l);
void QFormLayout_protectedbase_addChildWidget(VirtualQFormLayout* self, QWidget* w);
bool QFormLayout_protectedbase_adoptLayout(VirtualQFormLayout* self, QLayout* layout);
QRect* QFormLayout_protectedbase_alignmentRect(const VirtualQFormLayout* self, QRect* param1);
QObject* QFormLayout_protectedbase_sender(const VirtualQFormLayout* self);
int QFormLayout_protectedbase_senderSignalIndex(const VirtualQFormLayout* self);
int QFormLayout_protectedbase_receivers(const VirtualQFormLayout* self, const char* signal);
bool QFormLayout_protectedbase_isSignalConnected(const VirtualQFormLayout* self, QMetaMethod* signal);

const QMetaObject* QFormLayout_staticMetaObject();
void QFormLayout_delete(QFormLayout* self);

void QFormLayout__TakeRowResult_delete(QFormLayout__TakeRowResult* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
