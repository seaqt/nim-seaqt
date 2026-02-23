#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTACKEDLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QSTACKEDLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QLayout;
class QLayoutItem;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QSize;
class QSpacerItem;
class QStackedLayout;
class QTimerEvent;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSpacerItem QSpacerItem;
typedef struct QStackedLayout QStackedLayout;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQStackedLayout VirtualQStackedLayout;
typedef struct QStackedLayout_VTable{
	void (*destructor)(VirtualQStackedLayout* self);
	QMetaObject* (*metaObject)(const VirtualQStackedLayout* self);
	void* (*metacast)(VirtualQStackedLayout* self, const char* param1);
	int (*metacall)(VirtualQStackedLayout* self, int param1, int param2, void** param3);
	int (*count)(const VirtualQStackedLayout* self);
	void (*addItem)(VirtualQStackedLayout* self, QLayoutItem* item);
	QSize* (*sizeHint)(const VirtualQStackedLayout* self);
	QSize* (*minimumSize)(const VirtualQStackedLayout* self);
	QLayoutItem* (*itemAt)(const VirtualQStackedLayout* self, int param1);
	QLayoutItem* (*takeAt)(VirtualQStackedLayout* self, int param1);
	void (*setGeometry)(VirtualQStackedLayout* self, QRect* rect);
	bool (*hasHeightForWidth)(const VirtualQStackedLayout* self);
	int (*heightForWidth)(const VirtualQStackedLayout* self, int width);
	int (*spacing)(const VirtualQStackedLayout* self);
	void (*setSpacing)(VirtualQStackedLayout* self, int spacing);
	void (*invalidate)(VirtualQStackedLayout* self);
	QRect* (*geometry)(const VirtualQStackedLayout* self);
	int (*expandingDirections)(const VirtualQStackedLayout* self);
	QSize* (*maximumSize)(const VirtualQStackedLayout* self);
	int (*indexOf_QWidget)(const VirtualQStackedLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQStackedLayout* self);
	int (*controlTypes)(const VirtualQStackedLayout* self);
	QLayoutItem* (*replaceWidget)(VirtualQStackedLayout* self, QWidget* from, QWidget* to, int options);
	QLayout* (*layout)(VirtualQStackedLayout* self);
	void (*childEvent)(VirtualQStackedLayout* self, QChildEvent* e);
	bool (*event)(VirtualQStackedLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQStackedLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStackedLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQStackedLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQStackedLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStackedLayout* self, QMetaMethod* signal);
	int (*minimumHeightForWidth)(const VirtualQStackedLayout* self, int param1);
	QWidget* (*widget)(const VirtualQStackedLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQStackedLayout* self);
}QStackedLayout_VTable;

void* QStackedLayout_vdata(VirtualQStackedLayout* self);
VirtualQStackedLayout* vdata_QStackedLayout(void* vdata);

VirtualQStackedLayout* QStackedLayout_new_parent(const QStackedLayout_VTable* vtbl, size_t vdata, QWidget* parent);
VirtualQStackedLayout* QStackedLayout_new(const QStackedLayout_VTable* vtbl, size_t vdata);
VirtualQStackedLayout* QStackedLayout_new_parentLayout(const QStackedLayout_VTable* vtbl, size_t vdata, QLayout* parentLayout);

void QStackedLayout_virtbase(QStackedLayout* src, QLayout** outptr_QLayout);
QMetaObject* QStackedLayout_metaObject(const QStackedLayout* self);
void* QStackedLayout_metacast(QStackedLayout* self, const char* param1);
int QStackedLayout_metacall(QStackedLayout* self, int param1, int param2, void** param3);
struct seaqt_string QStackedLayout_tr_s(const char* s);
int QStackedLayout_addWidget(QStackedLayout* self, QWidget* w);
int QStackedLayout_insertWidget(QStackedLayout* self, int index, QWidget* w);
QWidget* QStackedLayout_currentWidget(const QStackedLayout* self);
int QStackedLayout_currentIndex(const QStackedLayout* self);
QWidget* QStackedLayout_widget(const QStackedLayout* self, int param1);
int QStackedLayout_count(const QStackedLayout* self);
int QStackedLayout_stackingMode(const QStackedLayout* self);
void QStackedLayout_setStackingMode(QStackedLayout* self, int stackingMode);
void QStackedLayout_addItem(QStackedLayout* self, QLayoutItem* item);
QSize* QStackedLayout_sizeHint(const QStackedLayout* self);
QSize* QStackedLayout_minimumSize(const QStackedLayout* self);
QLayoutItem* QStackedLayout_itemAt(const QStackedLayout* self, int param1);
QLayoutItem* QStackedLayout_takeAt(QStackedLayout* self, int param1);
void QStackedLayout_setGeometry(QStackedLayout* self, QRect* rect);
bool QStackedLayout_hasHeightForWidth(const QStackedLayout* self);
int QStackedLayout_heightForWidth(const QStackedLayout* self, int width);
void QStackedLayout_widgetRemoved(QStackedLayout* self, int index);
void QStackedLayout_connect_widgetRemoved(QStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QStackedLayout_currentChanged(QStackedLayout* self, int index);
void QStackedLayout_connect_currentChanged(QStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QStackedLayout_setCurrentIndex(QStackedLayout* self, int index);
void QStackedLayout_setCurrentWidget(QStackedLayout* self, QWidget* w);
struct seaqt_string QStackedLayout_tr_s_c(const char* s, const char* c);
struct seaqt_string QStackedLayout_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QStackedLayout_virtualbase_metaObject(const VirtualQStackedLayout* self);
void* QStackedLayout_virtualbase_metacast(VirtualQStackedLayout* self, const char* param1);
int QStackedLayout_virtualbase_metacall(VirtualQStackedLayout* self, int param1, int param2, void** param3);
int QStackedLayout_virtualbase_count(const VirtualQStackedLayout* self);
void QStackedLayout_virtualbase_addItem(VirtualQStackedLayout* self, QLayoutItem* item);
QSize* QStackedLayout_virtualbase_sizeHint(const VirtualQStackedLayout* self);
QSize* QStackedLayout_virtualbase_minimumSize(const VirtualQStackedLayout* self);
QLayoutItem* QStackedLayout_virtualbase_itemAt(const VirtualQStackedLayout* self, int param1);
QLayoutItem* QStackedLayout_virtualbase_takeAt(VirtualQStackedLayout* self, int param1);
void QStackedLayout_virtualbase_setGeometry(VirtualQStackedLayout* self, QRect* rect);
bool QStackedLayout_virtualbase_hasHeightForWidth(const VirtualQStackedLayout* self);
int QStackedLayout_virtualbase_heightForWidth(const VirtualQStackedLayout* self, int width);
int QStackedLayout_virtualbase_spacing(const VirtualQStackedLayout* self);
void QStackedLayout_virtualbase_setSpacing(VirtualQStackedLayout* self, int spacing);
void QStackedLayout_virtualbase_invalidate(VirtualQStackedLayout* self);
QRect* QStackedLayout_virtualbase_geometry(const VirtualQStackedLayout* self);
int QStackedLayout_virtualbase_expandingDirections(const VirtualQStackedLayout* self);
QSize* QStackedLayout_virtualbase_maximumSize(const VirtualQStackedLayout* self);
int QStackedLayout_virtualbase_indexOf_QWidget(const VirtualQStackedLayout* self, QWidget* param1);
bool QStackedLayout_virtualbase_isEmpty(const VirtualQStackedLayout* self);
int QStackedLayout_virtualbase_controlTypes(const VirtualQStackedLayout* self);
QLayoutItem* QStackedLayout_virtualbase_replaceWidget(VirtualQStackedLayout* self, QWidget* from, QWidget* to, int options);
QLayout* QStackedLayout_virtualbase_layout(VirtualQStackedLayout* self);
void QStackedLayout_virtualbase_childEvent(VirtualQStackedLayout* self, QChildEvent* e);
bool QStackedLayout_virtualbase_event(VirtualQStackedLayout* self, QEvent* event);
bool QStackedLayout_virtualbase_eventFilter(VirtualQStackedLayout* self, QObject* watched, QEvent* event);
void QStackedLayout_virtualbase_timerEvent(VirtualQStackedLayout* self, QTimerEvent* event);
void QStackedLayout_virtualbase_customEvent(VirtualQStackedLayout* self, QEvent* event);
void QStackedLayout_virtualbase_connectNotify(VirtualQStackedLayout* self, QMetaMethod* signal);
void QStackedLayout_virtualbase_disconnectNotify(VirtualQStackedLayout* self, QMetaMethod* signal);
int QStackedLayout_virtualbase_minimumHeightForWidth(const VirtualQStackedLayout* self, int param1);
QWidget* QStackedLayout_virtualbase_widget(const VirtualQStackedLayout* self);
QSpacerItem* QStackedLayout_virtualbase_spacerItem(VirtualQStackedLayout* self);

void QStackedLayout_protectedbase_widgetEvent(VirtualQStackedLayout* self, QEvent* param1);
void QStackedLayout_protectedbase_addChildLayout(VirtualQStackedLayout* self, QLayout* l);
void QStackedLayout_protectedbase_addChildWidget(VirtualQStackedLayout* self, QWidget* w);
bool QStackedLayout_protectedbase_adoptLayout(VirtualQStackedLayout* self, QLayout* layout);
QRect* QStackedLayout_protectedbase_alignmentRect(const VirtualQStackedLayout* self, QRect* param1);
QObject* QStackedLayout_protectedbase_sender(const VirtualQStackedLayout* self);
int QStackedLayout_protectedbase_senderSignalIndex(const VirtualQStackedLayout* self);
int QStackedLayout_protectedbase_receivers(const VirtualQStackedLayout* self, const char* signal);
bool QStackedLayout_protectedbase_isSignalConnected(const VirtualQStackedLayout* self, QMetaMethod* signal);

void QStackedLayout_delete(QStackedLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
