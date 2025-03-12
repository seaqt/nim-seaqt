#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QITEMDELEGATE_H
#define SEAQT_QTWIDGETS_GEN_QITEMDELEGATE_H

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
class QFont;
class QHelpEvent;
class QItemDelegate;
class QItemEditorFactory;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QPainter;
class QPixmap;
class QRect;
class QSize;
class QStyleOptionViewItem;
class QTimerEvent;
class QVariant;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QHelpEvent QHelpEvent;
typedef struct QItemDelegate QItemDelegate;
typedef struct QItemEditorFactory QItemEditorFactory;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QRect QRect;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQItemDelegate VirtualQItemDelegate;
typedef struct QItemDelegate_VTable{
	void (*destructor)(VirtualQItemDelegate* self);
	QMetaObject* (*metaObject)(const VirtualQItemDelegate* self);
	void* (*metacast)(VirtualQItemDelegate* self, const char* param1);
	int (*metacall)(VirtualQItemDelegate* self, int param1, int param2, void** param3);
	void (*paint)(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	QSize* (*sizeHint)(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	QWidget* (*createEditor)(const VirtualQItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	void (*setEditorData)(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setModelData)(const VirtualQItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	void (*updateEditorGeometry)(const VirtualQItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	void (*drawDisplay)(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text);
	void (*drawDecoration)(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);
	void (*drawFocus)(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);
	void (*drawCheck)(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);
	bool (*eventFilter)(VirtualQItemDelegate* self, QObject* object, QEvent* event);
	bool (*editorEvent)(VirtualQItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	void (*destroyEditor)(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);
	bool (*helpEvent)(VirtualQItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_array /* of int */  (*paintingRoles)(const VirtualQItemDelegate* self);
	bool (*event)(VirtualQItemDelegate* self, QEvent* event);
	void (*timerEvent)(VirtualQItemDelegate* self, QTimerEvent* event);
	void (*childEvent)(VirtualQItemDelegate* self, QChildEvent* event);
	void (*customEvent)(VirtualQItemDelegate* self, QEvent* event);
	void (*connectNotify)(VirtualQItemDelegate* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQItemDelegate* self, QMetaMethod* signal);
}QItemDelegate_VTable;

const QItemDelegate_VTable* QItemDelegate_vtbl(const VirtualQItemDelegate* self);
void* QItemDelegate_vdata(const VirtualQItemDelegate* self);
void QItemDelegate_setVdata(VirtualQItemDelegate* self, void* vdata);

VirtualQItemDelegate* QItemDelegate_new(const QItemDelegate_VTable* vtbl, void* vdata);
VirtualQItemDelegate* QItemDelegate_new2(const QItemDelegate_VTable* vtbl, void* vdata, QObject* parent);

void QItemDelegate_virtbase(QItemDelegate* src, QAbstractItemDelegate** outptr_QAbstractItemDelegate);
QMetaObject* QItemDelegate_metaObject(const QItemDelegate* self);
void* QItemDelegate_metacast(QItemDelegate* self, const char* param1);
int QItemDelegate_metacall(QItemDelegate* self, int param1, int param2, void** param3);
struct miqt_string QItemDelegate_tr(const char* s);
bool QItemDelegate_hasClipping(const QItemDelegate* self);
void QItemDelegate_setClipping(QItemDelegate* self, bool clip);
void QItemDelegate_paint(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QItemDelegate_sizeHint(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QItemDelegate_createEditor(const QItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QItemDelegate_setEditorData(const QItemDelegate* self, QWidget* editor, QModelIndex* index);
void QItemDelegate_setModelData(const QItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QItemDelegate_updateEditorGeometry(const QItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
QItemEditorFactory* QItemDelegate_itemEditorFactory(const QItemDelegate* self);
void QItemDelegate_setItemEditorFactory(QItemDelegate* self, QItemEditorFactory* factory);
void QItemDelegate_drawDisplay(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text);
void QItemDelegate_drawDecoration(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);
void QItemDelegate_drawFocus(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);
void QItemDelegate_drawCheck(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);
bool QItemDelegate_eventFilter(QItemDelegate* self, QObject* object, QEvent* event);
bool QItemDelegate_editorEvent(QItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_string QItemDelegate_tr2(const char* s, const char* c);
struct miqt_string QItemDelegate_tr3(const char* s, const char* c, int n);

QMetaObject* QItemDelegate_virtualbase_metaObject(const VirtualQItemDelegate* self);
void* QItemDelegate_virtualbase_metacast(VirtualQItemDelegate* self, const char* param1);
int QItemDelegate_virtualbase_metacall(VirtualQItemDelegate* self, int param1, int param2, void** param3);
void QItemDelegate_virtualbase_paint(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QItemDelegate_virtualbase_sizeHint(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QItemDelegate_virtualbase_createEditor(const VirtualQItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QItemDelegate_virtualbase_setEditorData(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);
void QItemDelegate_virtualbase_setModelData(const VirtualQItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QItemDelegate_virtualbase_updateEditorGeometry(const VirtualQItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
void QItemDelegate_virtualbase_drawDisplay(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text);
void QItemDelegate_virtualbase_drawDecoration(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);
void QItemDelegate_virtualbase_drawFocus(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);
void QItemDelegate_virtualbase_drawCheck(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);
bool QItemDelegate_virtualbase_eventFilter(VirtualQItemDelegate* self, QObject* object, QEvent* event);
bool QItemDelegate_virtualbase_editorEvent(VirtualQItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
void QItemDelegate_virtualbase_destroyEditor(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);
bool QItemDelegate_virtualbase_helpEvent(VirtualQItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QItemDelegate_virtualbase_paintingRoles(const VirtualQItemDelegate* self);
bool QItemDelegate_virtualbase_event(VirtualQItemDelegate* self, QEvent* event);
void QItemDelegate_virtualbase_timerEvent(VirtualQItemDelegate* self, QTimerEvent* event);
void QItemDelegate_virtualbase_childEvent(VirtualQItemDelegate* self, QChildEvent* event);
void QItemDelegate_virtualbase_customEvent(VirtualQItemDelegate* self, QEvent* event);
void QItemDelegate_virtualbase_connectNotify(VirtualQItemDelegate* self, QMetaMethod* signal);
void QItemDelegate_virtualbase_disconnectNotify(VirtualQItemDelegate* self, QMetaMethod* signal);

void QItemDelegate_protectedbase_drawBackground(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
void QItemDelegate_protectedbase_doLayout(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint);
QRect* QItemDelegate_protectedbase_rect(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index, int role);
QStyleOptionViewItem* QItemDelegate_protectedbase_setOptions(const VirtualQItemDelegate* self, QModelIndex* index, QStyleOptionViewItem* option);
QPixmap* QItemDelegate_protectedbase_decoration(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QVariant* variant);
QRect* QItemDelegate_protectedbase_doCheck(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant);
QRect* QItemDelegate_protectedbase_textRectangle(const VirtualQItemDelegate* self, QPainter* painter, QRect* rect, QFont* font, struct miqt_string text);
QObject* QItemDelegate_protectedbase_sender(const VirtualQItemDelegate* self);
int QItemDelegate_protectedbase_senderSignalIndex(const VirtualQItemDelegate* self);
int QItemDelegate_protectedbase_receivers(const VirtualQItemDelegate* self, const char* signal);
bool QItemDelegate_protectedbase_isSignalConnected(const VirtualQItemDelegate* self, QMetaMethod* signal);

const QMetaObject* QItemDelegate_staticMetaObject();
void QItemDelegate_delete(QItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
