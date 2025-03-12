#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QLAYOUT_H

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
class QLayout;
class QLayoutItem;
class QMargins;
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
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSpacerItem QSpacerItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQLayout VirtualQLayout;
typedef struct QLayout_VTable{
	void (*destructor)(VirtualQLayout* self);
	QMetaObject* (*metaObject)(const VirtualQLayout* self);
	void* (*metacast)(VirtualQLayout* self, const char* param1);
	int (*metacall)(VirtualQLayout* self, int param1, int param2, void** param3);
	void (*invalidate)(VirtualQLayout* self);
	QRect* (*geometry)(const VirtualQLayout* self);
	void (*addItem)(VirtualQLayout* self, QLayoutItem* param1);
	int (*expandingDirections)(const VirtualQLayout* self);
	QSize* (*minimumSize)(const VirtualQLayout* self);
	QSize* (*maximumSize)(const VirtualQLayout* self);
	void (*setGeometry)(VirtualQLayout* self, QRect* geometry);
	QLayoutItem* (*itemAt)(const VirtualQLayout* self, int index);
	QLayoutItem* (*takeAt)(VirtualQLayout* self, int index);
	int (*indexOf)(const VirtualQLayout* self, QWidget* param1);
	int (*count)(const VirtualQLayout* self);
	bool (*isEmpty)(const VirtualQLayout* self);
	int (*controlTypes)(const VirtualQLayout* self);
	QLayout* (*layout)(VirtualQLayout* self);
	void (*childEvent)(VirtualQLayout* self, QChildEvent* e);
	bool (*event)(VirtualQLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQLayout* self, QMetaMethod* signal);
	QSize* (*sizeHint)(const VirtualQLayout* self);
	bool (*hasHeightForWidth)(const VirtualQLayout* self);
	int (*heightForWidth)(const VirtualQLayout* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQLayout* self, int param1);
	QWidget* (*widget)(VirtualQLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQLayout* self);
}QLayout_VTable;

const QLayout_VTable* QLayout_vtbl(const VirtualQLayout* self);
void* QLayout_vdata(const VirtualQLayout* self);
void QLayout_setVdata(VirtualQLayout* self, void* vdata);

VirtualQLayout* QLayout_new(const QLayout_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQLayout* QLayout_new2(const QLayout_VTable* vtbl, void* vdata);

void QLayout_virtbase(QLayout* src, QObject** outptr_QObject, QLayoutItem** outptr_QLayoutItem);
QMetaObject* QLayout_metaObject(const QLayout* self);
void* QLayout_metacast(QLayout* self, const char* param1);
int QLayout_metacall(QLayout* self, int param1, int param2, void** param3);
struct miqt_string QLayout_tr(const char* s);
struct miqt_string QLayout_trUtf8(const char* s);
int QLayout_margin(const QLayout* self);
void QLayout_setMargin(QLayout* self, int margin);
int QLayout_spacing(const QLayout* self);
void QLayout_setSpacing(QLayout* self, int spacing);
void QLayout_setContentsMargins(QLayout* self, int left, int top, int right, int bottom);
void QLayout_setContentsMarginsWithMargins(QLayout* self, QMargins* margins);
void QLayout_getContentsMargins(const QLayout* self, int* left, int* top, int* right, int* bottom);
QMargins* QLayout_contentsMargins(const QLayout* self);
QRect* QLayout_contentsRect(const QLayout* self);
bool QLayout_setAlignment(QLayout* self, QWidget* w, int alignment);
bool QLayout_setAlignment2(QLayout* self, QLayout* l, int alignment);
void QLayout_setSizeConstraint(QLayout* self, int sizeConstraint);
int QLayout_sizeConstraint(const QLayout* self);
void QLayout_setMenuBar(QLayout* self, QWidget* w);
QWidget* QLayout_menuBar(const QLayout* self);
QWidget* QLayout_parentWidget(const QLayout* self);
void QLayout_invalidate(QLayout* self);
QRect* QLayout_geometry(const QLayout* self);
bool QLayout_activate(QLayout* self);
void QLayout_update(QLayout* self);
void QLayout_addWidget(QLayout* self, QWidget* w);
void QLayout_addItem(QLayout* self, QLayoutItem* param1);
void QLayout_removeWidget(QLayout* self, QWidget* w);
void QLayout_removeItem(QLayout* self, QLayoutItem* param1);
int QLayout_expandingDirections(const QLayout* self);
QSize* QLayout_minimumSize(const QLayout* self);
QSize* QLayout_maximumSize(const QLayout* self);
void QLayout_setGeometry(QLayout* self, QRect* geometry);
QLayoutItem* QLayout_itemAt(const QLayout* self, int index);
QLayoutItem* QLayout_takeAt(QLayout* self, int index);
int QLayout_indexOf(const QLayout* self, QWidget* param1);
int QLayout_indexOfWithQLayoutItem(const QLayout* self, QLayoutItem* param1);
int QLayout_count(const QLayout* self);
bool QLayout_isEmpty(const QLayout* self);
int QLayout_controlTypes(const QLayout* self);
QLayoutItem* QLayout_replaceWidget(QLayout* self, QWidget* from, QWidget* to);
int QLayout_totalHeightForWidth(const QLayout* self, int w);
QSize* QLayout_totalMinimumSize(const QLayout* self);
QSize* QLayout_totalMaximumSize(const QLayout* self);
QSize* QLayout_totalSizeHint(const QLayout* self);
QLayout* QLayout_layout(QLayout* self);
void QLayout_setEnabled(QLayout* self, bool enabled);
bool QLayout_isEnabled(const QLayout* self);
QSize* QLayout_closestAcceptableSize(QWidget* w, QSize* s);
void QLayout_childEvent(QLayout* self, QChildEvent* e);
struct miqt_string QLayout_tr2(const char* s, const char* c);
struct miqt_string QLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QLayout_trUtf82(const char* s, const char* c);
struct miqt_string QLayout_trUtf83(const char* s, const char* c, int n);
QLayoutItem* QLayout_replaceWidget3(QLayout* self, QWidget* from, QWidget* to, int options);

QMetaObject* QLayout_virtualbase_metaObject(const VirtualQLayout* self);
void* QLayout_virtualbase_metacast(VirtualQLayout* self, const char* param1);
int QLayout_virtualbase_metacall(VirtualQLayout* self, int param1, int param2, void** param3);
void QLayout_virtualbase_invalidate(VirtualQLayout* self);
QRect* QLayout_virtualbase_geometry(const VirtualQLayout* self);
void QLayout_virtualbase_addItem(VirtualQLayout* self, QLayoutItem* param1);
int QLayout_virtualbase_expandingDirections(const VirtualQLayout* self);
QSize* QLayout_virtualbase_minimumSize(const VirtualQLayout* self);
QSize* QLayout_virtualbase_maximumSize(const VirtualQLayout* self);
void QLayout_virtualbase_setGeometry(VirtualQLayout* self, QRect* geometry);
QLayoutItem* QLayout_virtualbase_itemAt(const VirtualQLayout* self, int index);
QLayoutItem* QLayout_virtualbase_takeAt(VirtualQLayout* self, int index);
int QLayout_virtualbase_indexOf(const VirtualQLayout* self, QWidget* param1);
int QLayout_virtualbase_count(const VirtualQLayout* self);
bool QLayout_virtualbase_isEmpty(const VirtualQLayout* self);
int QLayout_virtualbase_controlTypes(const VirtualQLayout* self);
QLayout* QLayout_virtualbase_layout(VirtualQLayout* self);
void QLayout_virtualbase_childEvent(VirtualQLayout* self, QChildEvent* e);
bool QLayout_virtualbase_event(VirtualQLayout* self, QEvent* event);
bool QLayout_virtualbase_eventFilter(VirtualQLayout* self, QObject* watched, QEvent* event);
void QLayout_virtualbase_timerEvent(VirtualQLayout* self, QTimerEvent* event);
void QLayout_virtualbase_customEvent(VirtualQLayout* self, QEvent* event);
void QLayout_virtualbase_connectNotify(VirtualQLayout* self, QMetaMethod* signal);
void QLayout_virtualbase_disconnectNotify(VirtualQLayout* self, QMetaMethod* signal);
QSize* QLayout_virtualbase_sizeHint(const VirtualQLayout* self);
bool QLayout_virtualbase_hasHeightForWidth(const VirtualQLayout* self);
int QLayout_virtualbase_heightForWidth(const VirtualQLayout* self, int param1);
int QLayout_virtualbase_minimumHeightForWidth(const VirtualQLayout* self, int param1);
QWidget* QLayout_virtualbase_widget(VirtualQLayout* self);
QSpacerItem* QLayout_virtualbase_spacerItem(VirtualQLayout* self);

void QLayout_protectedbase_widgetEvent(VirtualQLayout* self, QEvent* param1);
void QLayout_protectedbase_addChildLayout(VirtualQLayout* self, QLayout* l);
void QLayout_protectedbase_addChildWidget(VirtualQLayout* self, QWidget* w);
bool QLayout_protectedbase_adoptLayout(VirtualQLayout* self, QLayout* layout);
QRect* QLayout_protectedbase_alignmentRect(const VirtualQLayout* self, QRect* param1);
QObject* QLayout_protectedbase_sender(const VirtualQLayout* self);
int QLayout_protectedbase_senderSignalIndex(const VirtualQLayout* self);
int QLayout_protectedbase_receivers(const VirtualQLayout* self, const char* signal);
bool QLayout_protectedbase_isSignalConnected(const VirtualQLayout* self, QMetaMethod* signal);

const QMetaObject* QLayout_staticMetaObject();
void QLayout_delete(QLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
