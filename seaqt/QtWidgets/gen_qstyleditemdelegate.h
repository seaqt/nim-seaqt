#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTYLEDITEMDELEGATE_H
#define SEAQT_QTWIDGETS_GEN_QSTYLEDITEMDELEGATE_H

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
class QItemEditorFactory;
class QLocale;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QPainter;
class QSize;
class QStyleOptionViewItem;
class QStyledItemDelegate;
class QTimerEvent;
class QVariant;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHelpEvent QHelpEvent;
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QStyledItemDelegate QStyledItemDelegate;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQStyledItemDelegate VirtualQStyledItemDelegate;
typedef struct QStyledItemDelegate_VTable{
	void (*destructor)(VirtualQStyledItemDelegate* self);
	QMetaObject* (*metaObject)(const VirtualQStyledItemDelegate* self);
	void* (*metacast)(VirtualQStyledItemDelegate* self, const char* param1);
	int (*metacall)(VirtualQStyledItemDelegate* self, int param1, int param2, void** param3);
	void (*paint)(const VirtualQStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	QSize* (*sizeHint)(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	QWidget* (*createEditor)(const VirtualQStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	void (*setEditorData)(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setModelData)(const VirtualQStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	void (*updateEditorGeometry)(const VirtualQStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_string (*displayText)(const VirtualQStyledItemDelegate* self, QVariant* value, QLocale* locale);
	void (*initStyleOption)(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*eventFilter)(VirtualQStyledItemDelegate* self, QObject* object, QEvent* event);
	bool (*editorEvent)(VirtualQStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	void (*destroyEditor)(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
	bool (*helpEvent)(VirtualQStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_array /* of int */  (*paintingRoles)(const VirtualQStyledItemDelegate* self);
	bool (*event)(VirtualQStyledItemDelegate* self, QEvent* event);
	void (*timerEvent)(VirtualQStyledItemDelegate* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStyledItemDelegate* self, QChildEvent* event);
	void (*customEvent)(VirtualQStyledItemDelegate* self, QEvent* event);
	void (*connectNotify)(VirtualQStyledItemDelegate* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStyledItemDelegate* self, QMetaMethod* signal);
}QStyledItemDelegate_VTable;

const QStyledItemDelegate_VTable* QStyledItemDelegate_vtbl(const VirtualQStyledItemDelegate* self);
void* QStyledItemDelegate_vdata(const VirtualQStyledItemDelegate* self);
void QStyledItemDelegate_setVdata(VirtualQStyledItemDelegate* self, void* vdata);

VirtualQStyledItemDelegate* QStyledItemDelegate_new(const QStyledItemDelegate_VTable* vtbl, void* vdata);
VirtualQStyledItemDelegate* QStyledItemDelegate_new2(const QStyledItemDelegate_VTable* vtbl, void* vdata, QObject* parent);

void QStyledItemDelegate_virtbase(QStyledItemDelegate* src, QAbstractItemDelegate** outptr_QAbstractItemDelegate);
QMetaObject* QStyledItemDelegate_metaObject(const QStyledItemDelegate* self);
void* QStyledItemDelegate_metacast(QStyledItemDelegate* self, const char* param1);
int QStyledItemDelegate_metacall(QStyledItemDelegate* self, int param1, int param2, void** param3);
struct miqt_string QStyledItemDelegate_tr(const char* s);
void QStyledItemDelegate_paint(const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QStyledItemDelegate_sizeHint(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QStyledItemDelegate_createEditor(const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QStyledItemDelegate_setEditorData(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
void QStyledItemDelegate_setModelData(const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QStyledItemDelegate_updateEditorGeometry(const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QItemEditorFactory* QStyledItemDelegate_itemEditorFactory(const QStyledItemDelegate* self);
void QStyledItemDelegate_setItemEditorFactory(QStyledItemDelegate* self, QItemEditorFactory* factory);
struct miqt_string QStyledItemDelegate_displayText(const QStyledItemDelegate* self, QVariant* value, QLocale* locale);
void QStyledItemDelegate_initStyleOption(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
bool QStyledItemDelegate_eventFilter(QStyledItemDelegate* self, QObject* object, QEvent* event);
bool QStyledItemDelegate_editorEvent(QStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_string QStyledItemDelegate_tr2(const char* s, const char* c);
struct miqt_string QStyledItemDelegate_tr3(const char* s, const char* c, int n);

QMetaObject* QStyledItemDelegate_virtualbase_metaObject(const VirtualQStyledItemDelegate* self);
void* QStyledItemDelegate_virtualbase_metacast(VirtualQStyledItemDelegate* self, const char* param1);
int QStyledItemDelegate_virtualbase_metacall(VirtualQStyledItemDelegate* self, int param1, int param2, void** param3);
void QStyledItemDelegate_virtualbase_paint(const VirtualQStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QStyledItemDelegate_virtualbase_sizeHint(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QStyledItemDelegate_virtualbase_createEditor(const VirtualQStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QStyledItemDelegate_virtualbase_setEditorData(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
void QStyledItemDelegate_virtualbase_setModelData(const VirtualQStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QStyledItemDelegate_virtualbase_updateEditorGeometry(const VirtualQStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_string QStyledItemDelegate_virtualbase_displayText(const VirtualQStyledItemDelegate* self, QVariant* value, QLocale* locale);
void QStyledItemDelegate_virtualbase_initStyleOption(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
bool QStyledItemDelegate_virtualbase_eventFilter(VirtualQStyledItemDelegate* self, QObject* object, QEvent* event);
bool QStyledItemDelegate_virtualbase_editorEvent(VirtualQStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
void QStyledItemDelegate_virtualbase_destroyEditor(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
bool QStyledItemDelegate_virtualbase_helpEvent(VirtualQStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QStyledItemDelegate_virtualbase_paintingRoles(const VirtualQStyledItemDelegate* self);
bool QStyledItemDelegate_virtualbase_event(VirtualQStyledItemDelegate* self, QEvent* event);
void QStyledItemDelegate_virtualbase_timerEvent(VirtualQStyledItemDelegate* self, QTimerEvent* event);
void QStyledItemDelegate_virtualbase_childEvent(VirtualQStyledItemDelegate* self, QChildEvent* event);
void QStyledItemDelegate_virtualbase_customEvent(VirtualQStyledItemDelegate* self, QEvent* event);
void QStyledItemDelegate_virtualbase_connectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal);
void QStyledItemDelegate_virtualbase_disconnectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal);

QObject* QStyledItemDelegate_protectedbase_sender(const VirtualQStyledItemDelegate* self);
int QStyledItemDelegate_protectedbase_senderSignalIndex(const VirtualQStyledItemDelegate* self);
int QStyledItemDelegate_protectedbase_receivers(const VirtualQStyledItemDelegate* self, const char* signal);
bool QStyledItemDelegate_protectedbase_isSignalConnected(const VirtualQStyledItemDelegate* self, QMetaMethod* signal);

const QMetaObject* QStyledItemDelegate_staticMetaObject();
void QStyledItemDelegate_delete(QStyledItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
