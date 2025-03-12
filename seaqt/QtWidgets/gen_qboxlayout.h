#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QBOXLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QBOXLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBoxLayout;
class QChildEvent;
class QEvent;
class QHBoxLayout;
class QLayout;
class QLayoutItem;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRect;
class QSize;
class QSpacerItem;
class QTimerEvent;
class QVBoxLayout;
class QWidget;
#else
typedef struct QBoxLayout QBoxLayout;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHBoxLayout QHBoxLayout;
typedef struct QLayout QLayout;
typedef struct QLayoutItem QLayoutItem;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QSpacerItem QSpacerItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVBoxLayout QVBoxLayout;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQBoxLayout VirtualQBoxLayout;
typedef struct QBoxLayout_VTable{
	void (*destructor)(VirtualQBoxLayout* self);
	QMetaObject* (*metaObject)(const VirtualQBoxLayout* self);
	void* (*metacast)(VirtualQBoxLayout* self, const char* param1);
	int (*metacall)(VirtualQBoxLayout* self, int param1, int param2, void** param3);
	void (*addItem)(VirtualQBoxLayout* self, QLayoutItem* param1);
	QSize* (*sizeHint)(const VirtualQBoxLayout* self);
	QSize* (*minimumSize)(const VirtualQBoxLayout* self);
	QSize* (*maximumSize)(const VirtualQBoxLayout* self);
	bool (*hasHeightForWidth)(const VirtualQBoxLayout* self);
	int (*heightForWidth)(const VirtualQBoxLayout* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQBoxLayout* self, int param1);
	int (*expandingDirections)(const VirtualQBoxLayout* self);
	void (*invalidate)(VirtualQBoxLayout* self);
	QLayoutItem* (*itemAt)(const VirtualQBoxLayout* self, int param1);
	QLayoutItem* (*takeAt)(VirtualQBoxLayout* self, int param1);
	int (*count)(const VirtualQBoxLayout* self);
	void (*setGeometry)(VirtualQBoxLayout* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQBoxLayout* self);
	int (*indexOf)(const VirtualQBoxLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQBoxLayout* self);
	int (*controlTypes)(const VirtualQBoxLayout* self);
	QLayout* (*layout)(VirtualQBoxLayout* self);
	void (*childEvent)(VirtualQBoxLayout* self, QChildEvent* e);
	bool (*event)(VirtualQBoxLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQBoxLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQBoxLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQBoxLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQBoxLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQBoxLayout* self, QMetaMethod* signal);
	QWidget* (*widget)(VirtualQBoxLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQBoxLayout* self);
}QBoxLayout_VTable;

const QBoxLayout_VTable* QBoxLayout_vtbl(const VirtualQBoxLayout* self);
void* QBoxLayout_vdata(const VirtualQBoxLayout* self);
void QBoxLayout_setVdata(VirtualQBoxLayout* self, void* vdata);

VirtualQBoxLayout* QBoxLayout_new(const QBoxLayout_VTable* vtbl, void* vdata, int param1);
VirtualQBoxLayout* QBoxLayout_new2(const QBoxLayout_VTable* vtbl, void* vdata, int param1, QWidget* parent);

void QBoxLayout_virtbase(QBoxLayout* src, QLayout** outptr_QLayout);
QMetaObject* QBoxLayout_metaObject(const QBoxLayout* self);
void* QBoxLayout_metacast(QBoxLayout* self, const char* param1);
int QBoxLayout_metacall(QBoxLayout* self, int param1, int param2, void** param3);
struct miqt_string QBoxLayout_tr(const char* s);
struct miqt_string QBoxLayout_trUtf8(const char* s);
int QBoxLayout_direction(const QBoxLayout* self);
void QBoxLayout_setDirection(QBoxLayout* self, int direction);
void QBoxLayout_addSpacing(QBoxLayout* self, int size);
void QBoxLayout_addStretch(QBoxLayout* self);
void QBoxLayout_addSpacerItem(QBoxLayout* self, QSpacerItem* spacerItem);
void QBoxLayout_addWidget(QBoxLayout* self, QWidget* param1);
void QBoxLayout_addLayout(QBoxLayout* self, QLayout* layout);
void QBoxLayout_addStrut(QBoxLayout* self, int param1);
void QBoxLayout_addItem(QBoxLayout* self, QLayoutItem* param1);
void QBoxLayout_insertSpacing(QBoxLayout* self, int index, int size);
void QBoxLayout_insertStretch(QBoxLayout* self, int index);
void QBoxLayout_insertSpacerItem(QBoxLayout* self, int index, QSpacerItem* spacerItem);
void QBoxLayout_insertWidget(QBoxLayout* self, int index, QWidget* widget);
void QBoxLayout_insertLayout(QBoxLayout* self, int index, QLayout* layout);
void QBoxLayout_insertItem(QBoxLayout* self, int index, QLayoutItem* param2);
int QBoxLayout_spacing(const QBoxLayout* self);
void QBoxLayout_setSpacing(QBoxLayout* self, int spacing);
bool QBoxLayout_setStretchFactor(QBoxLayout* self, QWidget* w, int stretch);
bool QBoxLayout_setStretchFactor2(QBoxLayout* self, QLayout* l, int stretch);
void QBoxLayout_setStretch(QBoxLayout* self, int index, int stretch);
int QBoxLayout_stretch(const QBoxLayout* self, int index);
QSize* QBoxLayout_sizeHint(const QBoxLayout* self);
QSize* QBoxLayout_minimumSize(const QBoxLayout* self);
QSize* QBoxLayout_maximumSize(const QBoxLayout* self);
bool QBoxLayout_hasHeightForWidth(const QBoxLayout* self);
int QBoxLayout_heightForWidth(const QBoxLayout* self, int param1);
int QBoxLayout_minimumHeightForWidth(const QBoxLayout* self, int param1);
int QBoxLayout_expandingDirections(const QBoxLayout* self);
void QBoxLayout_invalidate(QBoxLayout* self);
QLayoutItem* QBoxLayout_itemAt(const QBoxLayout* self, int param1);
QLayoutItem* QBoxLayout_takeAt(QBoxLayout* self, int param1);
int QBoxLayout_count(const QBoxLayout* self);
void QBoxLayout_setGeometry(QBoxLayout* self, QRect* geometry);
struct miqt_string QBoxLayout_tr2(const char* s, const char* c);
struct miqt_string QBoxLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QBoxLayout_trUtf82(const char* s, const char* c);
struct miqt_string QBoxLayout_trUtf83(const char* s, const char* c, int n);
void QBoxLayout_addStretch1(QBoxLayout* self, int stretch);
void QBoxLayout_addWidget2(QBoxLayout* self, QWidget* param1, int stretch);
void QBoxLayout_addWidget3(QBoxLayout* self, QWidget* param1, int stretch, int alignment);
void QBoxLayout_addLayout2(QBoxLayout* self, QLayout* layout, int stretch);
void QBoxLayout_insertStretch2(QBoxLayout* self, int index, int stretch);
void QBoxLayout_insertWidget3(QBoxLayout* self, int index, QWidget* widget, int stretch);
void QBoxLayout_insertWidget4(QBoxLayout* self, int index, QWidget* widget, int stretch, int alignment);
void QBoxLayout_insertLayout3(QBoxLayout* self, int index, QLayout* layout, int stretch);

QMetaObject* QBoxLayout_virtualbase_metaObject(const VirtualQBoxLayout* self);
void* QBoxLayout_virtualbase_metacast(VirtualQBoxLayout* self, const char* param1);
int QBoxLayout_virtualbase_metacall(VirtualQBoxLayout* self, int param1, int param2, void** param3);
void QBoxLayout_virtualbase_addItem(VirtualQBoxLayout* self, QLayoutItem* param1);
QSize* QBoxLayout_virtualbase_sizeHint(const VirtualQBoxLayout* self);
QSize* QBoxLayout_virtualbase_minimumSize(const VirtualQBoxLayout* self);
QSize* QBoxLayout_virtualbase_maximumSize(const VirtualQBoxLayout* self);
bool QBoxLayout_virtualbase_hasHeightForWidth(const VirtualQBoxLayout* self);
int QBoxLayout_virtualbase_heightForWidth(const VirtualQBoxLayout* self, int param1);
int QBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQBoxLayout* self, int param1);
int QBoxLayout_virtualbase_expandingDirections(const VirtualQBoxLayout* self);
void QBoxLayout_virtualbase_invalidate(VirtualQBoxLayout* self);
QLayoutItem* QBoxLayout_virtualbase_itemAt(const VirtualQBoxLayout* self, int param1);
QLayoutItem* QBoxLayout_virtualbase_takeAt(VirtualQBoxLayout* self, int param1);
int QBoxLayout_virtualbase_count(const VirtualQBoxLayout* self);
void QBoxLayout_virtualbase_setGeometry(VirtualQBoxLayout* self, QRect* geometry);
QRect* QBoxLayout_virtualbase_geometry(const VirtualQBoxLayout* self);
int QBoxLayout_virtualbase_indexOf(const VirtualQBoxLayout* self, QWidget* param1);
bool QBoxLayout_virtualbase_isEmpty(const VirtualQBoxLayout* self);
int QBoxLayout_virtualbase_controlTypes(const VirtualQBoxLayout* self);
QLayout* QBoxLayout_virtualbase_layout(VirtualQBoxLayout* self);
void QBoxLayout_virtualbase_childEvent(VirtualQBoxLayout* self, QChildEvent* e);
bool QBoxLayout_virtualbase_event(VirtualQBoxLayout* self, QEvent* event);
bool QBoxLayout_virtualbase_eventFilter(VirtualQBoxLayout* self, QObject* watched, QEvent* event);
void QBoxLayout_virtualbase_timerEvent(VirtualQBoxLayout* self, QTimerEvent* event);
void QBoxLayout_virtualbase_customEvent(VirtualQBoxLayout* self, QEvent* event);
void QBoxLayout_virtualbase_connectNotify(VirtualQBoxLayout* self, QMetaMethod* signal);
void QBoxLayout_virtualbase_disconnectNotify(VirtualQBoxLayout* self, QMetaMethod* signal);
QWidget* QBoxLayout_virtualbase_widget(VirtualQBoxLayout* self);
QSpacerItem* QBoxLayout_virtualbase_spacerItem(VirtualQBoxLayout* self);

void QBoxLayout_protectedbase_widgetEvent(VirtualQBoxLayout* self, QEvent* param1);
void QBoxLayout_protectedbase_addChildLayout(VirtualQBoxLayout* self, QLayout* l);
void QBoxLayout_protectedbase_addChildWidget(VirtualQBoxLayout* self, QWidget* w);
bool QBoxLayout_protectedbase_adoptLayout(VirtualQBoxLayout* self, QLayout* layout);
QRect* QBoxLayout_protectedbase_alignmentRect(const VirtualQBoxLayout* self, QRect* param1);
QObject* QBoxLayout_protectedbase_sender(const VirtualQBoxLayout* self);
int QBoxLayout_protectedbase_senderSignalIndex(const VirtualQBoxLayout* self);
int QBoxLayout_protectedbase_receivers(const VirtualQBoxLayout* self, const char* signal);
bool QBoxLayout_protectedbase_isSignalConnected(const VirtualQBoxLayout* self, QMetaMethod* signal);

const QMetaObject* QBoxLayout_staticMetaObject();
void QBoxLayout_delete(QBoxLayout* self);

typedef struct VirtualQHBoxLayout VirtualQHBoxLayout;
typedef struct QHBoxLayout_VTable{
	void (*destructor)(VirtualQHBoxLayout* self);
	QMetaObject* (*metaObject)(const VirtualQHBoxLayout* self);
	void* (*metacast)(VirtualQHBoxLayout* self, const char* param1);
	int (*metacall)(VirtualQHBoxLayout* self, int param1, int param2, void** param3);
	void (*addItem)(VirtualQHBoxLayout* self, QLayoutItem* param1);
	QSize* (*sizeHint)(const VirtualQHBoxLayout* self);
	QSize* (*minimumSize)(const VirtualQHBoxLayout* self);
	QSize* (*maximumSize)(const VirtualQHBoxLayout* self);
	bool (*hasHeightForWidth)(const VirtualQHBoxLayout* self);
	int (*heightForWidth)(const VirtualQHBoxLayout* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQHBoxLayout* self, int param1);
	int (*expandingDirections)(const VirtualQHBoxLayout* self);
	void (*invalidate)(VirtualQHBoxLayout* self);
	QLayoutItem* (*itemAt)(const VirtualQHBoxLayout* self, int param1);
	QLayoutItem* (*takeAt)(VirtualQHBoxLayout* self, int param1);
	int (*count)(const VirtualQHBoxLayout* self);
	void (*setGeometry)(VirtualQHBoxLayout* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQHBoxLayout* self);
	int (*indexOf)(const VirtualQHBoxLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQHBoxLayout* self);
	int (*controlTypes)(const VirtualQHBoxLayout* self);
	QLayout* (*layout)(VirtualQHBoxLayout* self);
	void (*childEvent)(VirtualQHBoxLayout* self, QChildEvent* e);
	bool (*event)(VirtualQHBoxLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQHBoxLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQHBoxLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQHBoxLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQHBoxLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQHBoxLayout* self, QMetaMethod* signal);
	QWidget* (*widget)(VirtualQHBoxLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQHBoxLayout* self);
}QHBoxLayout_VTable;

const QHBoxLayout_VTable* QHBoxLayout_vtbl(const VirtualQHBoxLayout* self);
void* QHBoxLayout_vdata(const VirtualQHBoxLayout* self);
void QHBoxLayout_setVdata(VirtualQHBoxLayout* self, void* vdata);

VirtualQHBoxLayout* QHBoxLayout_new(const QHBoxLayout_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQHBoxLayout* QHBoxLayout_new2(const QHBoxLayout_VTable* vtbl, void* vdata);

void QHBoxLayout_virtbase(QHBoxLayout* src, QBoxLayout** outptr_QBoxLayout);
QMetaObject* QHBoxLayout_metaObject(const QHBoxLayout* self);
void* QHBoxLayout_metacast(QHBoxLayout* self, const char* param1);
int QHBoxLayout_metacall(QHBoxLayout* self, int param1, int param2, void** param3);
struct miqt_string QHBoxLayout_tr(const char* s);
struct miqt_string QHBoxLayout_trUtf8(const char* s);
struct miqt_string QHBoxLayout_tr2(const char* s, const char* c);
struct miqt_string QHBoxLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QHBoxLayout_trUtf82(const char* s, const char* c);
struct miqt_string QHBoxLayout_trUtf83(const char* s, const char* c, int n);

QMetaObject* QHBoxLayout_virtualbase_metaObject(const VirtualQHBoxLayout* self);
void* QHBoxLayout_virtualbase_metacast(VirtualQHBoxLayout* self, const char* param1);
int QHBoxLayout_virtualbase_metacall(VirtualQHBoxLayout* self, int param1, int param2, void** param3);
void QHBoxLayout_virtualbase_addItem(VirtualQHBoxLayout* self, QLayoutItem* param1);
QSize* QHBoxLayout_virtualbase_sizeHint(const VirtualQHBoxLayout* self);
QSize* QHBoxLayout_virtualbase_minimumSize(const VirtualQHBoxLayout* self);
QSize* QHBoxLayout_virtualbase_maximumSize(const VirtualQHBoxLayout* self);
bool QHBoxLayout_virtualbase_hasHeightForWidth(const VirtualQHBoxLayout* self);
int QHBoxLayout_virtualbase_heightForWidth(const VirtualQHBoxLayout* self, int param1);
int QHBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQHBoxLayout* self, int param1);
int QHBoxLayout_virtualbase_expandingDirections(const VirtualQHBoxLayout* self);
void QHBoxLayout_virtualbase_invalidate(VirtualQHBoxLayout* self);
QLayoutItem* QHBoxLayout_virtualbase_itemAt(const VirtualQHBoxLayout* self, int param1);
QLayoutItem* QHBoxLayout_virtualbase_takeAt(VirtualQHBoxLayout* self, int param1);
int QHBoxLayout_virtualbase_count(const VirtualQHBoxLayout* self);
void QHBoxLayout_virtualbase_setGeometry(VirtualQHBoxLayout* self, QRect* geometry);
QRect* QHBoxLayout_virtualbase_geometry(const VirtualQHBoxLayout* self);
int QHBoxLayout_virtualbase_indexOf(const VirtualQHBoxLayout* self, QWidget* param1);
bool QHBoxLayout_virtualbase_isEmpty(const VirtualQHBoxLayout* self);
int QHBoxLayout_virtualbase_controlTypes(const VirtualQHBoxLayout* self);
QLayout* QHBoxLayout_virtualbase_layout(VirtualQHBoxLayout* self);
void QHBoxLayout_virtualbase_childEvent(VirtualQHBoxLayout* self, QChildEvent* e);
bool QHBoxLayout_virtualbase_event(VirtualQHBoxLayout* self, QEvent* event);
bool QHBoxLayout_virtualbase_eventFilter(VirtualQHBoxLayout* self, QObject* watched, QEvent* event);
void QHBoxLayout_virtualbase_timerEvent(VirtualQHBoxLayout* self, QTimerEvent* event);
void QHBoxLayout_virtualbase_customEvent(VirtualQHBoxLayout* self, QEvent* event);
void QHBoxLayout_virtualbase_connectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal);
void QHBoxLayout_virtualbase_disconnectNotify(VirtualQHBoxLayout* self, QMetaMethod* signal);
QWidget* QHBoxLayout_virtualbase_widget(VirtualQHBoxLayout* self);
QSpacerItem* QHBoxLayout_virtualbase_spacerItem(VirtualQHBoxLayout* self);

void QHBoxLayout_protectedbase_widgetEvent(VirtualQHBoxLayout* self, QEvent* param1);
void QHBoxLayout_protectedbase_addChildLayout(VirtualQHBoxLayout* self, QLayout* l);
void QHBoxLayout_protectedbase_addChildWidget(VirtualQHBoxLayout* self, QWidget* w);
bool QHBoxLayout_protectedbase_adoptLayout(VirtualQHBoxLayout* self, QLayout* layout);
QRect* QHBoxLayout_protectedbase_alignmentRect(const VirtualQHBoxLayout* self, QRect* param1);
QObject* QHBoxLayout_protectedbase_sender(const VirtualQHBoxLayout* self);
int QHBoxLayout_protectedbase_senderSignalIndex(const VirtualQHBoxLayout* self);
int QHBoxLayout_protectedbase_receivers(const VirtualQHBoxLayout* self, const char* signal);
bool QHBoxLayout_protectedbase_isSignalConnected(const VirtualQHBoxLayout* self, QMetaMethod* signal);

const QMetaObject* QHBoxLayout_staticMetaObject();
void QHBoxLayout_delete(QHBoxLayout* self);

typedef struct VirtualQVBoxLayout VirtualQVBoxLayout;
typedef struct QVBoxLayout_VTable{
	void (*destructor)(VirtualQVBoxLayout* self);
	QMetaObject* (*metaObject)(const VirtualQVBoxLayout* self);
	void* (*metacast)(VirtualQVBoxLayout* self, const char* param1);
	int (*metacall)(VirtualQVBoxLayout* self, int param1, int param2, void** param3);
	void (*addItem)(VirtualQVBoxLayout* self, QLayoutItem* param1);
	QSize* (*sizeHint)(const VirtualQVBoxLayout* self);
	QSize* (*minimumSize)(const VirtualQVBoxLayout* self);
	QSize* (*maximumSize)(const VirtualQVBoxLayout* self);
	bool (*hasHeightForWidth)(const VirtualQVBoxLayout* self);
	int (*heightForWidth)(const VirtualQVBoxLayout* self, int param1);
	int (*minimumHeightForWidth)(const VirtualQVBoxLayout* self, int param1);
	int (*expandingDirections)(const VirtualQVBoxLayout* self);
	void (*invalidate)(VirtualQVBoxLayout* self);
	QLayoutItem* (*itemAt)(const VirtualQVBoxLayout* self, int param1);
	QLayoutItem* (*takeAt)(VirtualQVBoxLayout* self, int param1);
	int (*count)(const VirtualQVBoxLayout* self);
	void (*setGeometry)(VirtualQVBoxLayout* self, QRect* geometry);
	QRect* (*geometry)(const VirtualQVBoxLayout* self);
	int (*indexOf)(const VirtualQVBoxLayout* self, QWidget* param1);
	bool (*isEmpty)(const VirtualQVBoxLayout* self);
	int (*controlTypes)(const VirtualQVBoxLayout* self);
	QLayout* (*layout)(VirtualQVBoxLayout* self);
	void (*childEvent)(VirtualQVBoxLayout* self, QChildEvent* e);
	bool (*event)(VirtualQVBoxLayout* self, QEvent* event);
	bool (*eventFilter)(VirtualQVBoxLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVBoxLayout* self, QTimerEvent* event);
	void (*customEvent)(VirtualQVBoxLayout* self, QEvent* event);
	void (*connectNotify)(VirtualQVBoxLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVBoxLayout* self, QMetaMethod* signal);
	QWidget* (*widget)(VirtualQVBoxLayout* self);
	QSpacerItem* (*spacerItem)(VirtualQVBoxLayout* self);
}QVBoxLayout_VTable;

const QVBoxLayout_VTable* QVBoxLayout_vtbl(const VirtualQVBoxLayout* self);
void* QVBoxLayout_vdata(const VirtualQVBoxLayout* self);
void QVBoxLayout_setVdata(VirtualQVBoxLayout* self, void* vdata);

VirtualQVBoxLayout* QVBoxLayout_new(const QVBoxLayout_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQVBoxLayout* QVBoxLayout_new2(const QVBoxLayout_VTable* vtbl, void* vdata);

void QVBoxLayout_virtbase(QVBoxLayout* src, QBoxLayout** outptr_QBoxLayout);
QMetaObject* QVBoxLayout_metaObject(const QVBoxLayout* self);
void* QVBoxLayout_metacast(QVBoxLayout* self, const char* param1);
int QVBoxLayout_metacall(QVBoxLayout* self, int param1, int param2, void** param3);
struct miqt_string QVBoxLayout_tr(const char* s);
struct miqt_string QVBoxLayout_trUtf8(const char* s);
struct miqt_string QVBoxLayout_tr2(const char* s, const char* c);
struct miqt_string QVBoxLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QVBoxLayout_trUtf82(const char* s, const char* c);
struct miqt_string QVBoxLayout_trUtf83(const char* s, const char* c, int n);

QMetaObject* QVBoxLayout_virtualbase_metaObject(const VirtualQVBoxLayout* self);
void* QVBoxLayout_virtualbase_metacast(VirtualQVBoxLayout* self, const char* param1);
int QVBoxLayout_virtualbase_metacall(VirtualQVBoxLayout* self, int param1, int param2, void** param3);
void QVBoxLayout_virtualbase_addItem(VirtualQVBoxLayout* self, QLayoutItem* param1);
QSize* QVBoxLayout_virtualbase_sizeHint(const VirtualQVBoxLayout* self);
QSize* QVBoxLayout_virtualbase_minimumSize(const VirtualQVBoxLayout* self);
QSize* QVBoxLayout_virtualbase_maximumSize(const VirtualQVBoxLayout* self);
bool QVBoxLayout_virtualbase_hasHeightForWidth(const VirtualQVBoxLayout* self);
int QVBoxLayout_virtualbase_heightForWidth(const VirtualQVBoxLayout* self, int param1);
int QVBoxLayout_virtualbase_minimumHeightForWidth(const VirtualQVBoxLayout* self, int param1);
int QVBoxLayout_virtualbase_expandingDirections(const VirtualQVBoxLayout* self);
void QVBoxLayout_virtualbase_invalidate(VirtualQVBoxLayout* self);
QLayoutItem* QVBoxLayout_virtualbase_itemAt(const VirtualQVBoxLayout* self, int param1);
QLayoutItem* QVBoxLayout_virtualbase_takeAt(VirtualQVBoxLayout* self, int param1);
int QVBoxLayout_virtualbase_count(const VirtualQVBoxLayout* self);
void QVBoxLayout_virtualbase_setGeometry(VirtualQVBoxLayout* self, QRect* geometry);
QRect* QVBoxLayout_virtualbase_geometry(const VirtualQVBoxLayout* self);
int QVBoxLayout_virtualbase_indexOf(const VirtualQVBoxLayout* self, QWidget* param1);
bool QVBoxLayout_virtualbase_isEmpty(const VirtualQVBoxLayout* self);
int QVBoxLayout_virtualbase_controlTypes(const VirtualQVBoxLayout* self);
QLayout* QVBoxLayout_virtualbase_layout(VirtualQVBoxLayout* self);
void QVBoxLayout_virtualbase_childEvent(VirtualQVBoxLayout* self, QChildEvent* e);
bool QVBoxLayout_virtualbase_event(VirtualQVBoxLayout* self, QEvent* event);
bool QVBoxLayout_virtualbase_eventFilter(VirtualQVBoxLayout* self, QObject* watched, QEvent* event);
void QVBoxLayout_virtualbase_timerEvent(VirtualQVBoxLayout* self, QTimerEvent* event);
void QVBoxLayout_virtualbase_customEvent(VirtualQVBoxLayout* self, QEvent* event);
void QVBoxLayout_virtualbase_connectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal);
void QVBoxLayout_virtualbase_disconnectNotify(VirtualQVBoxLayout* self, QMetaMethod* signal);
QWidget* QVBoxLayout_virtualbase_widget(VirtualQVBoxLayout* self);
QSpacerItem* QVBoxLayout_virtualbase_spacerItem(VirtualQVBoxLayout* self);

void QVBoxLayout_protectedbase_widgetEvent(VirtualQVBoxLayout* self, QEvent* param1);
void QVBoxLayout_protectedbase_addChildLayout(VirtualQVBoxLayout* self, QLayout* l);
void QVBoxLayout_protectedbase_addChildWidget(VirtualQVBoxLayout* self, QWidget* w);
bool QVBoxLayout_protectedbase_adoptLayout(VirtualQVBoxLayout* self, QLayout* layout);
QRect* QVBoxLayout_protectedbase_alignmentRect(const VirtualQVBoxLayout* self, QRect* param1);
QObject* QVBoxLayout_protectedbase_sender(const VirtualQVBoxLayout* self);
int QVBoxLayout_protectedbase_senderSignalIndex(const VirtualQVBoxLayout* self);
int QVBoxLayout_protectedbase_receivers(const VirtualQVBoxLayout* self, const char* signal);
bool QVBoxLayout_protectedbase_isSignalConnected(const VirtualQVBoxLayout* self, QMetaMethod* signal);

const QMetaObject* QVBoxLayout_staticMetaObject();
void QVBoxLayout_delete(QVBoxLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
