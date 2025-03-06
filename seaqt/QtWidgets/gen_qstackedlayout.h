#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTACKEDLAYOUT_H
#define SEAQT_QTWIDGETS_GEN_QSTACKEDLAYOUT_H

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

struct QStackedLayout_VTable {
	void (*destructor)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self);
	QMetaObject* (*metaObject)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	void* (*metacast)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, const char* param1);
	int (*metacall)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, int param1, int param2, void** param3);
	int (*count)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	void (*addItem)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QLayoutItem* item);
	QSize* (*sizeHint)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	QSize* (*minimumSize)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	QLayoutItem* (*itemAt)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self, int param1);
	QLayoutItem* (*takeAt)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, int param1);
	void (*setGeometry)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QRect* rect);
	bool (*hasHeightForWidth)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	int (*heightForWidth)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self, int width);
	void (*invalidate)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self);
	QRect* (*geometry)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	int (*expandingDirections)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	QSize* (*maximumSize)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	int (*indexOf)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self, QWidget* param1);
	bool (*isEmpty)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	int (*controlTypes)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self);
	QLayout* (*layout)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self);
	void (*childEvent)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QChildEvent* e);
	bool (*event)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QEvent* event);
	bool (*eventFilter)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QTimerEvent* event);
	void (*customEvent)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QEvent* event);
	void (*connectNotify)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self, QMetaMethod* signal);
	int (*minimumHeightForWidth)(struct QStackedLayout_VTable* vtbl, const QStackedLayout* self, int param1);
	QWidget* (*widget)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self);
	QSpacerItem* (*spacerItem)(struct QStackedLayout_VTable* vtbl, QStackedLayout* self);
};
QStackedLayout* QStackedLayout_new(struct QStackedLayout_VTable* vtbl, QWidget* parent);
QStackedLayout* QStackedLayout_new2(struct QStackedLayout_VTable* vtbl);
QStackedLayout* QStackedLayout_new3(struct QStackedLayout_VTable* vtbl, QLayout* parentLayout);
void QStackedLayout_virtbase(QStackedLayout* src, QLayout** outptr_QLayout);
QMetaObject* QStackedLayout_metaObject(const QStackedLayout* self);
void* QStackedLayout_metacast(QStackedLayout* self, const char* param1);
int QStackedLayout_metacall(QStackedLayout* self, int param1, int param2, void** param3);
struct miqt_string QStackedLayout_tr(const char* s);
struct miqt_string QStackedLayout_trUtf8(const char* s);
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
struct miqt_string QStackedLayout_tr2(const char* s, const char* c);
struct miqt_string QStackedLayout_tr3(const char* s, const char* c, int n);
struct miqt_string QStackedLayout_trUtf82(const char* s, const char* c);
struct miqt_string QStackedLayout_trUtf83(const char* s, const char* c, int n);
QMetaObject* QStackedLayout_virtualbase_metaObject(const void* self);
void* QStackedLayout_virtualbase_metacast(void* self, const char* param1);
int QStackedLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QStackedLayout_virtualbase_count(const void* self);
void QStackedLayout_virtualbase_addItem(void* self, QLayoutItem* item);
QSize* QStackedLayout_virtualbase_sizeHint(const void* self);
QSize* QStackedLayout_virtualbase_minimumSize(const void* self);
QLayoutItem* QStackedLayout_virtualbase_itemAt(const void* self, int param1);
QLayoutItem* QStackedLayout_virtualbase_takeAt(void* self, int param1);
void QStackedLayout_virtualbase_setGeometry(void* self, QRect* rect);
bool QStackedLayout_virtualbase_hasHeightForWidth(const void* self);
int QStackedLayout_virtualbase_heightForWidth(const void* self, int width);
void QStackedLayout_virtualbase_invalidate(void* self);
QRect* QStackedLayout_virtualbase_geometry(const void* self);
int QStackedLayout_virtualbase_expandingDirections(const void* self);
QSize* QStackedLayout_virtualbase_maximumSize(const void* self);
int QStackedLayout_virtualbase_indexOf(const void* self, QWidget* param1);
bool QStackedLayout_virtualbase_isEmpty(const void* self);
int QStackedLayout_virtualbase_controlTypes(const void* self);
QLayout* QStackedLayout_virtualbase_layout(void* self);
void QStackedLayout_virtualbase_childEvent(void* self, QChildEvent* e);
bool QStackedLayout_virtualbase_event(void* self, QEvent* event);
bool QStackedLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStackedLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStackedLayout_virtualbase_customEvent(void* self, QEvent* event);
void QStackedLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStackedLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QStackedLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);
QWidget* QStackedLayout_virtualbase_widget(void* self);
QSpacerItem* QStackedLayout_virtualbase_spacerItem(void* self);
void QStackedLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
void QStackedLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
void QStackedLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
bool QStackedLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
QRect* QStackedLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
QObject* QStackedLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QStackedLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QStackedLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QStackedLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QStackedLayout_staticMetaObject();
void QStackedLayout_delete(QStackedLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
