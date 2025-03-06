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

struct QLayout_VTable {
	void (*destructor)(struct QLayout_VTable* vtbl, QLayout* self);
	QMetaObject* (*metaObject)(struct QLayout_VTable* vtbl, const QLayout* self);
	void* (*metacast)(struct QLayout_VTable* vtbl, QLayout* self, const char* param1);
	int (*metacall)(struct QLayout_VTable* vtbl, QLayout* self, int param1, int param2, void** param3);
	void (*invalidate)(struct QLayout_VTable* vtbl, QLayout* self);
	QRect* (*geometry)(struct QLayout_VTable* vtbl, const QLayout* self);
	void (*addItem)(struct QLayout_VTable* vtbl, QLayout* self, QLayoutItem* param1);
	int (*expandingDirections)(struct QLayout_VTable* vtbl, const QLayout* self);
	QSize* (*minimumSize)(struct QLayout_VTable* vtbl, const QLayout* self);
	QSize* (*maximumSize)(struct QLayout_VTable* vtbl, const QLayout* self);
	void (*setGeometry)(struct QLayout_VTable* vtbl, QLayout* self, QRect* geometry);
	QLayoutItem* (*itemAt)(struct QLayout_VTable* vtbl, const QLayout* self, int index);
	QLayoutItem* (*takeAt)(struct QLayout_VTable* vtbl, QLayout* self, int index);
	int (*indexOf)(struct QLayout_VTable* vtbl, const QLayout* self, QWidget* param1);
	int (*count)(struct QLayout_VTable* vtbl, const QLayout* self);
	bool (*isEmpty)(struct QLayout_VTable* vtbl, const QLayout* self);
	int (*controlTypes)(struct QLayout_VTable* vtbl, const QLayout* self);
	QLayout* (*layout)(struct QLayout_VTable* vtbl, QLayout* self);
	void (*childEvent)(struct QLayout_VTable* vtbl, QLayout* self, QChildEvent* e);
	bool (*event)(struct QLayout_VTable* vtbl, QLayout* self, QEvent* event);
	bool (*eventFilter)(struct QLayout_VTable* vtbl, QLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLayout_VTable* vtbl, QLayout* self, QTimerEvent* event);
	void (*customEvent)(struct QLayout_VTable* vtbl, QLayout* self, QEvent* event);
	void (*connectNotify)(struct QLayout_VTable* vtbl, QLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLayout_VTable* vtbl, QLayout* self, QMetaMethod* signal);
	QSize* (*sizeHint)(struct QLayout_VTable* vtbl, const QLayout* self);
	bool (*hasHeightForWidth)(struct QLayout_VTable* vtbl, const QLayout* self);
	int (*heightForWidth)(struct QLayout_VTable* vtbl, const QLayout* self, int param1);
	int (*minimumHeightForWidth)(struct QLayout_VTable* vtbl, const QLayout* self, int param1);
	QWidget* (*widget)(struct QLayout_VTable* vtbl, QLayout* self);
	QSpacerItem* (*spacerItem)(struct QLayout_VTable* vtbl, QLayout* self);
};
QLayout* QLayout_new(struct QLayout_VTable* vtbl, QWidget* parent);
QLayout* QLayout_new2(struct QLayout_VTable* vtbl);
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
QMetaObject* QLayout_virtualbase_metaObject(const void* self);
void* QLayout_virtualbase_metacast(void* self, const char* param1);
int QLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QLayout_virtualbase_invalidate(void* self);
QRect* QLayout_virtualbase_geometry(const void* self);
void QLayout_virtualbase_addItem(void* self, QLayoutItem* param1);
int QLayout_virtualbase_expandingDirections(const void* self);
QSize* QLayout_virtualbase_minimumSize(const void* self);
QSize* QLayout_virtualbase_maximumSize(const void* self);
void QLayout_virtualbase_setGeometry(void* self, QRect* geometry);
QLayoutItem* QLayout_virtualbase_itemAt(const void* self, int index);
QLayoutItem* QLayout_virtualbase_takeAt(void* self, int index);
int QLayout_virtualbase_indexOf(const void* self, QWidget* param1);
int QLayout_virtualbase_count(const void* self);
bool QLayout_virtualbase_isEmpty(const void* self);
int QLayout_virtualbase_controlTypes(const void* self);
QLayout* QLayout_virtualbase_layout(void* self);
void QLayout_virtualbase_childEvent(void* self, QChildEvent* e);
bool QLayout_virtualbase_event(void* self, QEvent* event);
bool QLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLayout_virtualbase_customEvent(void* self, QEvent* event);
void QLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QSize* QLayout_virtualbase_sizeHint(const void* self);
bool QLayout_virtualbase_hasHeightForWidth(const void* self);
int QLayout_virtualbase_heightForWidth(const void* self, int param1);
int QLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);
QWidget* QLayout_virtualbase_widget(void* self);
QSpacerItem* QLayout_virtualbase_spacerItem(void* self);
void QLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
void QLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
void QLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
bool QLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
QRect* QLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
QObject* QLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QLayout_staticMetaObject();
void QLayout_delete(QLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
