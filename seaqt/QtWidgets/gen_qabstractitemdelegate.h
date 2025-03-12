#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTITEMDELEGATE_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTITEMDELEGATE_H

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
class QAbstractItemView;
class QChildEvent;
class QEvent;
class QHelpEvent;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QPainter;
class QSize;
class QStyleOptionViewItem;
class QTimerEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQAbstractItemDelegate VirtualQAbstractItemDelegate;
typedef struct QAbstractItemDelegate_VTable{
	void (*destructor)(VirtualQAbstractItemDelegate* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractItemDelegate* self);
	void* (*metacast)(VirtualQAbstractItemDelegate* self, const char* param1);
	int (*metacall)(VirtualQAbstractItemDelegate* self, int param1, int param2, void** param3);
	void (*paint)(const VirtualQAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	QSize* (*sizeHint)(const VirtualQAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	QWidget* (*createEditor)(const VirtualQAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	void (*destroyEditor)(const VirtualQAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setEditorData)(const VirtualQAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setModelData)(const VirtualQAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	void (*updateEditorGeometry)(const VirtualQAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*editorEvent)(VirtualQAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*helpEvent)(VirtualQAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_array /* of int */  (*paintingRoles)(const VirtualQAbstractItemDelegate* self);
	bool (*event)(VirtualQAbstractItemDelegate* self, QEvent* event);
	bool (*eventFilter)(VirtualQAbstractItemDelegate* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractItemDelegate* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractItemDelegate* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractItemDelegate* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractItemDelegate* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractItemDelegate* self, QMetaMethod* signal);
}QAbstractItemDelegate_VTable;

const QAbstractItemDelegate_VTable* QAbstractItemDelegate_vtbl(const VirtualQAbstractItemDelegate* self);
void* QAbstractItemDelegate_vdata(const VirtualQAbstractItemDelegate* self);
void QAbstractItemDelegate_setVdata(VirtualQAbstractItemDelegate* self, void* vdata);

VirtualQAbstractItemDelegate* QAbstractItemDelegate_new(const QAbstractItemDelegate_VTable* vtbl, void* vdata);
VirtualQAbstractItemDelegate* QAbstractItemDelegate_new2(const QAbstractItemDelegate_VTable* vtbl, void* vdata, QObject* parent);

void QAbstractItemDelegate_virtbase(QAbstractItemDelegate* src, QObject** outptr_QObject);
QMetaObject* QAbstractItemDelegate_metaObject(const QAbstractItemDelegate* self);
void* QAbstractItemDelegate_metacast(QAbstractItemDelegate* self, const char* param1);
int QAbstractItemDelegate_metacall(QAbstractItemDelegate* self, int param1, int param2, void** param3);
struct miqt_string QAbstractItemDelegate_tr(const char* s);
void QAbstractItemDelegate_paint(const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QAbstractItemDelegate_sizeHint(const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QAbstractItemDelegate_createEditor(const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QAbstractItemDelegate_destroyEditor(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_setEditorData(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_setModelData(const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QAbstractItemDelegate_updateEditorGeometry(const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_editorEvent(QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_helpEvent(QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QAbstractItemDelegate_paintingRoles(const QAbstractItemDelegate* self);
void QAbstractItemDelegate_commitData(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_connect_commitData(VirtualQAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QAbstractItemDelegate_closeEditor(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_connect_closeEditor(VirtualQAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*), void (*release)(intptr_t));
void QAbstractItemDelegate_sizeHintChanged(QAbstractItemDelegate* self, QModelIndex* param1);
void QAbstractItemDelegate_connect_sizeHintChanged(VirtualQAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
struct miqt_string QAbstractItemDelegate_tr2(const char* s, const char* c);
struct miqt_string QAbstractItemDelegate_tr3(const char* s, const char* c, int n);
void QAbstractItemDelegate_closeEditor2(QAbstractItemDelegate* self, QWidget* editor, int hint);
void QAbstractItemDelegate_connect_closeEditor2(VirtualQAbstractItemDelegate* self, intptr_t slot, void (*callback)(intptr_t, QWidget*, int), void (*release)(intptr_t));

QMetaObject* QAbstractItemDelegate_virtualbase_metaObject(const VirtualQAbstractItemDelegate* self);
void* QAbstractItemDelegate_virtualbase_metacast(VirtualQAbstractItemDelegate* self, const char* param1);
int QAbstractItemDelegate_virtualbase_metacall(VirtualQAbstractItemDelegate* self, int param1, int param2, void** param3);
void QAbstractItemDelegate_virtualbase_paint(const VirtualQAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QAbstractItemDelegate_virtualbase_sizeHint(const VirtualQAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QAbstractItemDelegate_virtualbase_createEditor(const VirtualQAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_destroyEditor(const VirtualQAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_setEditorData(const VirtualQAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_setModelData(const VirtualQAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_updateEditorGeometry(const VirtualQAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_virtualbase_editorEvent(VirtualQAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_virtualbase_helpEvent(VirtualQAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QAbstractItemDelegate_virtualbase_paintingRoles(const VirtualQAbstractItemDelegate* self);
bool QAbstractItemDelegate_virtualbase_event(VirtualQAbstractItemDelegate* self, QEvent* event);
bool QAbstractItemDelegate_virtualbase_eventFilter(VirtualQAbstractItemDelegate* self, QObject* watched, QEvent* event);
void QAbstractItemDelegate_virtualbase_timerEvent(VirtualQAbstractItemDelegate* self, QTimerEvent* event);
void QAbstractItemDelegate_virtualbase_childEvent(VirtualQAbstractItemDelegate* self, QChildEvent* event);
void QAbstractItemDelegate_virtualbase_customEvent(VirtualQAbstractItemDelegate* self, QEvent* event);
void QAbstractItemDelegate_virtualbase_connectNotify(VirtualQAbstractItemDelegate* self, QMetaMethod* signal);
void QAbstractItemDelegate_virtualbase_disconnectNotify(VirtualQAbstractItemDelegate* self, QMetaMethod* signal);

QObject* QAbstractItemDelegate_protectedbase_sender(const VirtualQAbstractItemDelegate* self);
int QAbstractItemDelegate_protectedbase_senderSignalIndex(const VirtualQAbstractItemDelegate* self);
int QAbstractItemDelegate_protectedbase_receivers(const VirtualQAbstractItemDelegate* self, const char* signal);
bool QAbstractItemDelegate_protectedbase_isSignalConnected(const VirtualQAbstractItemDelegate* self, QMetaMethod* signal);

const QMetaObject* QAbstractItemDelegate_staticMetaObject();
void QAbstractItemDelegate_delete(QAbstractItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
