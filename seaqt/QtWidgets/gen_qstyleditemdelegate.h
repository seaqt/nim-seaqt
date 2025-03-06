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

struct QStyledItemDelegate_VTable {
	void (*destructor)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self);
	QMetaObject* (*metaObject)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self);
	void* (*metacast)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, const char* param1);
	int (*metacall)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, int param1, int param2, void** param3);
	void (*paint)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	QSize* (*sizeHint)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	QWidget* (*createEditor)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	void (*setEditorData)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setModelData)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	void (*updateEditorGeometry)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_string (*displayText)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QVariant* value, QLocale* locale);
	void (*initStyleOption)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*eventFilter)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QObject* object, QEvent* event);
	bool (*editorEvent)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	void (*destroyEditor)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index);
	bool (*helpEvent)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_array /* of int */  (*paintingRoles)(struct QStyledItemDelegate_VTable* vtbl, const QStyledItemDelegate* self);
	bool (*event)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QEvent* event);
	void (*timerEvent)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QTimerEvent* event);
	void (*childEvent)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QChildEvent* event);
	void (*customEvent)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QEvent* event);
	void (*connectNotify)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStyledItemDelegate_VTable* vtbl, QStyledItemDelegate* self, QMetaMethod* signal);
};
QStyledItemDelegate* QStyledItemDelegate_new(struct QStyledItemDelegate_VTable* vtbl);
QStyledItemDelegate* QStyledItemDelegate_new2(struct QStyledItemDelegate_VTable* vtbl, QObject* parent);
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
QMetaObject* QStyledItemDelegate_virtualbase_metaObject(const void* self);
void* QStyledItemDelegate_virtualbase_metacast(void* self, const char* param1);
int QStyledItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QStyledItemDelegate_virtualbase_paint(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QStyledItemDelegate_virtualbase_sizeHint(const void* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QStyledItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QStyledItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index);
void QStyledItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QStyledItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_string QStyledItemDelegate_virtualbase_displayText(const void* self, QVariant* value, QLocale* locale);
void QStyledItemDelegate_virtualbase_initStyleOption(const void* self, QStyleOptionViewItem* option, QModelIndex* index);
bool QStyledItemDelegate_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QStyledItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
void QStyledItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index);
bool QStyledItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QStyledItemDelegate_virtualbase_paintingRoles(const void* self);
bool QStyledItemDelegate_virtualbase_event(void* self, QEvent* event);
void QStyledItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStyledItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event);
void QStyledItemDelegate_virtualbase_customEvent(void* self, QEvent* event);
void QStyledItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStyledItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QStyledItemDelegate_protectedbase_sender(const void* self);
int QStyledItemDelegate_protectedbase_senderSignalIndex(const void* self);
int QStyledItemDelegate_protectedbase_receivers(const void* self, const char* signal);
bool QStyledItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QStyledItemDelegate_staticMetaObject();
void QStyledItemDelegate_delete(QStyledItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
