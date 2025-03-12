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

typedef struct VirtualQDataWidgetMapper VirtualQDataWidgetMapper;
typedef struct QDataWidgetMapper_VTable{
	void (*destructor)(VirtualQDataWidgetMapper* self);
	QMetaObject* (*metaObject)(const VirtualQDataWidgetMapper* self);
	void* (*metacast)(VirtualQDataWidgetMapper* self, const char* param1);
	int (*metacall)(VirtualQDataWidgetMapper* self, int param1, int param2, void** param3);
	void (*setCurrentIndex)(VirtualQDataWidgetMapper* self, int index);
	bool (*event)(VirtualQDataWidgetMapper* self, QEvent* event);
	bool (*eventFilter)(VirtualQDataWidgetMapper* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDataWidgetMapper* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDataWidgetMapper* self, QChildEvent* event);
	void (*customEvent)(VirtualQDataWidgetMapper* self, QEvent* event);
	void (*connectNotify)(VirtualQDataWidgetMapper* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDataWidgetMapper* self, QMetaMethod* signal);
}QDataWidgetMapper_VTable;

const QDataWidgetMapper_VTable* QDataWidgetMapper_vtbl(const VirtualQDataWidgetMapper* self);
void* QDataWidgetMapper_vdata(const VirtualQDataWidgetMapper* self);
void QDataWidgetMapper_setVdata(VirtualQDataWidgetMapper* self, void* vdata);

VirtualQDataWidgetMapper* QDataWidgetMapper_new(const QDataWidgetMapper_VTable* vtbl, void* vdata);
VirtualQDataWidgetMapper* QDataWidgetMapper_new2(const QDataWidgetMapper_VTable* vtbl, void* vdata, QObject* parent);

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
void QDataWidgetMapper_connect_currentIndexChanged(VirtualQDataWidgetMapper* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct miqt_string QDataWidgetMapper_tr2(const char* s, const char* c);
struct miqt_string QDataWidgetMapper_tr3(const char* s, const char* c, int n);

QMetaObject* QDataWidgetMapper_virtualbase_metaObject(const VirtualQDataWidgetMapper* self);
void* QDataWidgetMapper_virtualbase_metacast(VirtualQDataWidgetMapper* self, const char* param1);
int QDataWidgetMapper_virtualbase_metacall(VirtualQDataWidgetMapper* self, int param1, int param2, void** param3);
void QDataWidgetMapper_virtualbase_setCurrentIndex(VirtualQDataWidgetMapper* self, int index);
bool QDataWidgetMapper_virtualbase_event(VirtualQDataWidgetMapper* self, QEvent* event);
bool QDataWidgetMapper_virtualbase_eventFilter(VirtualQDataWidgetMapper* self, QObject* watched, QEvent* event);
void QDataWidgetMapper_virtualbase_timerEvent(VirtualQDataWidgetMapper* self, QTimerEvent* event);
void QDataWidgetMapper_virtualbase_childEvent(VirtualQDataWidgetMapper* self, QChildEvent* event);
void QDataWidgetMapper_virtualbase_customEvent(VirtualQDataWidgetMapper* self, QEvent* event);
void QDataWidgetMapper_virtualbase_connectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal);
void QDataWidgetMapper_virtualbase_disconnectNotify(VirtualQDataWidgetMapper* self, QMetaMethod* signal);

QObject* QDataWidgetMapper_protectedbase_sender(const VirtualQDataWidgetMapper* self);
int QDataWidgetMapper_protectedbase_senderSignalIndex(const VirtualQDataWidgetMapper* self);
int QDataWidgetMapper_protectedbase_receivers(const VirtualQDataWidgetMapper* self, const char* signal);
bool QDataWidgetMapper_protectedbase_isSignalConnected(const VirtualQDataWidgetMapper* self, QMetaMethod* signal);

const QMetaObject* QDataWidgetMapper_staticMetaObject();
void QDataWidgetMapper_delete(QDataWidgetMapper* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
