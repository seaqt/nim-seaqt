#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDATAWIDGETMAPPER_H
#define SEAQT_QTWIDGETS_GEN_QDATAWIDGETMAPPER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemDelegate;
class QAbstractItemModel;
class QChildEvent;
class QDataWidgetMapper;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QTimerEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataWidgetMapper QDataWidgetMapper;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

struct QDataWidgetMapper_VTable {
	void (*destructor)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self);
	QMetaObject* (*metaObject)(struct QDataWidgetMapper_VTable* vtbl, const QDataWidgetMapper* self);
	void* (*metacast)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, const char* param1);
	int (*metacall)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, int param1, int param2, void** param3);
	void (*setCurrentIndex)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, int index);
	bool (*event)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QEvent* event);
	bool (*eventFilter)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QTimerEvent* event);
	void (*childEvent)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QChildEvent* event);
	void (*customEvent)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QEvent* event);
	void (*connectNotify)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDataWidgetMapper_VTable* vtbl, QDataWidgetMapper* self, QMetaMethod* signal);
};
QDataWidgetMapper* QDataWidgetMapper_new(struct QDataWidgetMapper_VTable* vtbl);
QDataWidgetMapper* QDataWidgetMapper_new2(struct QDataWidgetMapper_VTable* vtbl, QObject* parent);
void QDataWidgetMapper_virtbase(QDataWidgetMapper* src, QObject** outptr_QObject);
QMetaObject* QDataWidgetMapper_metaObject(const QDataWidgetMapper* self);
void* QDataWidgetMapper_metacast(QDataWidgetMapper* self, const char* param1);
int QDataWidgetMapper_metacall(QDataWidgetMapper* self, int param1, int param2, void** param3);
struct miqt_string QDataWidgetMapper_tr(const char* s);
void QDataWidgetMapper_setModel(QDataWidgetMapper* self, QAbstractItemModel* model);
QAbstractItemModel* QDataWidgetMapper_model(const QDataWidgetMapper* self);
void QDataWidgetMapper_setItemDelegate(QDataWidgetMapper* self, QAbstractItemDelegate* delegate);
QAbstractItemDelegate* QDataWidgetMapper_itemDelegate(const QDataWidgetMapper* self);
void QDataWidgetMapper_setRootIndex(QDataWidgetMapper* self, QModelIndex* index);
QModelIndex* QDataWidgetMapper_rootIndex(const QDataWidgetMapper* self);
void QDataWidgetMapper_setOrientation(QDataWidgetMapper* self, int aOrientation);
int QDataWidgetMapper_orientation(const QDataWidgetMapper* self);
void QDataWidgetMapper_setSubmitPolicy(QDataWidgetMapper* self, int policy);
int QDataWidgetMapper_submitPolicy(const QDataWidgetMapper* self);
void QDataWidgetMapper_addMapping(QDataWidgetMapper* self, QWidget* widget, int section);
void QDataWidgetMapper_addMapping2(QDataWidgetMapper* self, QWidget* widget, int section, struct miqt_string propertyName);
void QDataWidgetMapper_removeMapping(QDataWidgetMapper* self, QWidget* widget);
int QDataWidgetMapper_mappedSection(const QDataWidgetMapper* self, QWidget* widget);
struct miqt_string QDataWidgetMapper_mappedPropertyName(const QDataWidgetMapper* self, QWidget* widget);
QWidget* QDataWidgetMapper_mappedWidgetAt(const QDataWidgetMapper* self, int section);
void QDataWidgetMapper_clearMapping(QDataWidgetMapper* self);
int QDataWidgetMapper_currentIndex(const QDataWidgetMapper* self);
void QDataWidgetMapper_revert(QDataWidgetMapper* self);
bool QDataWidgetMapper_submit(QDataWidgetMapper* self);
void QDataWidgetMapper_toFirst(QDataWidgetMapper* self);
void QDataWidgetMapper_toLast(QDataWidgetMapper* self);
void QDataWidgetMapper_toNext(QDataWidgetMapper* self);
void QDataWidgetMapper_toPrevious(QDataWidgetMapper* self);
void QDataWidgetMapper_setCurrentIndex(QDataWidgetMapper* self, int index);
void QDataWidgetMapper_setCurrentModelIndex(QDataWidgetMapper* self, QModelIndex* index);
void QDataWidgetMapper_currentIndexChanged(QDataWidgetMapper* self, int index);
void QDataWidgetMapper_connect_currentIndexChanged(QDataWidgetMapper* self, intptr_t slot);
struct miqt_string QDataWidgetMapper_tr2(const char* s, const char* c);
struct miqt_string QDataWidgetMapper_tr3(const char* s, const char* c, int n);
QMetaObject* QDataWidgetMapper_virtualbase_metaObject(const void* self);
void* QDataWidgetMapper_virtualbase_metacast(void* self, const char* param1);
int QDataWidgetMapper_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QDataWidgetMapper_virtualbase_setCurrentIndex(void* self, int index);
bool QDataWidgetMapper_virtualbase_event(void* self, QEvent* event);
bool QDataWidgetMapper_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDataWidgetMapper_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDataWidgetMapper_virtualbase_childEvent(void* self, QChildEvent* event);
void QDataWidgetMapper_virtualbase_customEvent(void* self, QEvent* event);
void QDataWidgetMapper_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDataWidgetMapper_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QDataWidgetMapper_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDataWidgetMapper_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDataWidgetMapper_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDataWidgetMapper_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDataWidgetMapper_staticMetaObject();
void QDataWidgetMapper_delete(QDataWidgetMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
