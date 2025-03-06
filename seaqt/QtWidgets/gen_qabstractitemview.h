#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QABSTRACTITEMVIEW_H
#define SEAQT_QTWIDGETS_GEN_QABSTRACTITEMVIEW_H

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
class QAbstractScrollArea;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
class QMargins;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QRect;
class QRegion;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QStyleOptionViewItem;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractItemView_VTable {
	void (*destructor)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	QMetaObject* (*metaObject)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	void* (*metacast)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, const char* param1);
	int (*metacall)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int param1, int param2, void** param3);
	void (*setModel)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QAbstractItemModel* model);
	void (*setSelectionModel)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QItemSelectionModel* selectionModel);
	void (*keyboardSearch)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, struct miqt_string search);
	QRect* (*visualRect)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QModelIndex* index);
	void (*scrollTo)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* index, int hint);
	QModelIndex* (*indexAt)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QPoint* point);
	int (*sizeHintForRow)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, int row);
	int (*sizeHintForColumn)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, int column);
	QAbstractItemDelegate* (*itemDelegateForIndex)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QModelIndex* index);
	QVariant* (*inputMethodQuery)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, int query);
	void (*reset)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*setRootIndex)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* index);
	void (*doItemsLayout)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*selectAll)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*dataChanged)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsInserted)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* parent, int start, int end);
	void (*rowsAboutToBeRemoved)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* parent, int start, int end);
	void (*selectionChanged)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QItemSelection* selected, QItemSelection* deselected);
	void (*currentChanged)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* current, QModelIndex* previous);
	void (*updateEditorData)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*updateEditorGeometries)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*updateGeometries)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self);
	void (*verticalScrollbarAction)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int action);
	void (*horizontalScrollbarAction)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int action);
	void (*verticalScrollbarValueChanged)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int value);
	void (*horizontalScrollbarValueChanged)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int value);
	void (*closeEditor)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QWidget* editor, int hint);
	void (*commitData)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QWidget* editor);
	void (*editorDestroyed)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QObject* editor);
	QModelIndex* (*moveCursor)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int cursorAction, int modifiers);
	int (*horizontalOffset)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	int (*verticalOffset)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	bool (*isIndexHidden)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QModelIndex* index);
	void (*setSelection)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	bool (*edit2)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QModelIndex* index, QEvent* event);
	void (*startDrag)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int supportedActions);
	void (*initViewItemOption)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QStyleOptionViewItem* option);
	bool (*focusNextPrevChild)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, bool next);
	bool (*event)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEvent* event);
	bool (*viewportEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEvent* event);
	void (*mousePressEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMouseEvent* event);
	void (*dragEnterEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QDropEvent* event);
	void (*focusInEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QKeyEvent* event);
	void (*resizeEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QResizeEvent* event);
	void (*timerEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QTimerEvent* event);
	void (*inputMethodEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QInputMethodEvent* event);
	bool (*eventFilter)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QObject* object, QEvent* event);
	QSize* (*viewportSizeHint)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	QSize* (*minimumSizeHint)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	QSize* (*sizeHint)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	void (*setupViewport)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QWidget* viewport);
	void (*paintEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QPaintEvent* param1);
	void (*wheelEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QWheelEvent* param1);
	void (*contextMenuEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QContextMenuEvent* param1);
	void (*scrollContentsBy)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, int dx, int dy);
	void (*changeEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEvent* param1);
	void (*initStyleOption)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QStyleOptionFrame* option);
	int (*devType)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	void (*setVisible)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, bool visible);
	int (*heightForWidth)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	QPaintEngine* (*paintEngine)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	void (*keyReleaseEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QKeyEvent* event);
	void (*enterEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEnterEvent* event);
	void (*leaveEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEvent* event);
	void (*moveEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMoveEvent* event);
	void (*closeEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QCloseEvent* event);
	void (*tabletEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QActionEvent* event);
	void (*showEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QShowEvent* event);
	void (*hideEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QHideEvent* event);
	bool (*nativeEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, int param1);
	void (*initPainter)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractItemView_VTable* vtbl, const QAbstractItemView* self);
	void (*childEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QEvent* event);
	void (*connectNotify)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractItemView_VTable* vtbl, QAbstractItemView* self, QMetaMethod* signal);
};
QAbstractItemView* QAbstractItemView_new(struct QAbstractItemView_VTable* vtbl, QWidget* parent);
QAbstractItemView* QAbstractItemView_new2(struct QAbstractItemView_VTable* vtbl);
void QAbstractItemView_virtbase(QAbstractItemView* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QAbstractItemView_metaObject(const QAbstractItemView* self);
void* QAbstractItemView_metacast(QAbstractItemView* self, const char* param1);
int QAbstractItemView_metacall(QAbstractItemView* self, int param1, int param2, void** param3);
struct miqt_string QAbstractItemView_tr(const char* s);
void QAbstractItemView_setModel(QAbstractItemView* self, QAbstractItemModel* model);
QAbstractItemModel* QAbstractItemView_model(const QAbstractItemView* self);
void QAbstractItemView_setSelectionModel(QAbstractItemView* self, QItemSelectionModel* selectionModel);
QItemSelectionModel* QAbstractItemView_selectionModel(const QAbstractItemView* self);
void QAbstractItemView_setItemDelegate(QAbstractItemView* self, QAbstractItemDelegate* delegate);
QAbstractItemDelegate* QAbstractItemView_itemDelegate(const QAbstractItemView* self);
void QAbstractItemView_setSelectionMode(QAbstractItemView* self, int mode);
int QAbstractItemView_selectionMode(const QAbstractItemView* self);
void QAbstractItemView_setSelectionBehavior(QAbstractItemView* self, int behavior);
int QAbstractItemView_selectionBehavior(const QAbstractItemView* self);
QModelIndex* QAbstractItemView_currentIndex(const QAbstractItemView* self);
QModelIndex* QAbstractItemView_rootIndex(const QAbstractItemView* self);
void QAbstractItemView_setEditTriggers(QAbstractItemView* self, int triggers);
int QAbstractItemView_editTriggers(const QAbstractItemView* self);
void QAbstractItemView_setVerticalScrollMode(QAbstractItemView* self, int mode);
int QAbstractItemView_verticalScrollMode(const QAbstractItemView* self);
void QAbstractItemView_resetVerticalScrollMode(QAbstractItemView* self);
void QAbstractItemView_setHorizontalScrollMode(QAbstractItemView* self, int mode);
int QAbstractItemView_horizontalScrollMode(const QAbstractItemView* self);
void QAbstractItemView_resetHorizontalScrollMode(QAbstractItemView* self);
void QAbstractItemView_setAutoScroll(QAbstractItemView* self, bool enable);
bool QAbstractItemView_hasAutoScroll(const QAbstractItemView* self);
void QAbstractItemView_setAutoScrollMargin(QAbstractItemView* self, int margin);
int QAbstractItemView_autoScrollMargin(const QAbstractItemView* self);
void QAbstractItemView_setTabKeyNavigation(QAbstractItemView* self, bool enable);
bool QAbstractItemView_tabKeyNavigation(const QAbstractItemView* self);
void QAbstractItemView_setDropIndicatorShown(QAbstractItemView* self, bool enable);
bool QAbstractItemView_showDropIndicator(const QAbstractItemView* self);
void QAbstractItemView_setDragEnabled(QAbstractItemView* self, bool enable);
bool QAbstractItemView_dragEnabled(const QAbstractItemView* self);
void QAbstractItemView_setDragDropOverwriteMode(QAbstractItemView* self, bool overwrite);
bool QAbstractItemView_dragDropOverwriteMode(const QAbstractItemView* self);
void QAbstractItemView_setDragDropMode(QAbstractItemView* self, int behavior);
int QAbstractItemView_dragDropMode(const QAbstractItemView* self);
void QAbstractItemView_setDefaultDropAction(QAbstractItemView* self, int dropAction);
int QAbstractItemView_defaultDropAction(const QAbstractItemView* self);
void QAbstractItemView_setAlternatingRowColors(QAbstractItemView* self, bool enable);
bool QAbstractItemView_alternatingRowColors(const QAbstractItemView* self);
void QAbstractItemView_setIconSize(QAbstractItemView* self, QSize* size);
QSize* QAbstractItemView_iconSize(const QAbstractItemView* self);
void QAbstractItemView_setTextElideMode(QAbstractItemView* self, int mode);
int QAbstractItemView_textElideMode(const QAbstractItemView* self);
void QAbstractItemView_keyboardSearch(QAbstractItemView* self, struct miqt_string search);
QRect* QAbstractItemView_visualRect(const QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_scrollTo(QAbstractItemView* self, QModelIndex* index, int hint);
QModelIndex* QAbstractItemView_indexAt(const QAbstractItemView* self, QPoint* point);
QSize* QAbstractItemView_sizeHintForIndex(const QAbstractItemView* self, QModelIndex* index);
int QAbstractItemView_sizeHintForRow(const QAbstractItemView* self, int row);
int QAbstractItemView_sizeHintForColumn(const QAbstractItemView* self, int column);
void QAbstractItemView_openPersistentEditor(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_closePersistentEditor(QAbstractItemView* self, QModelIndex* index);
bool QAbstractItemView_isPersistentEditorOpen(const QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_setIndexWidget(QAbstractItemView* self, QModelIndex* index, QWidget* widget);
QWidget* QAbstractItemView_indexWidget(const QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_setItemDelegateForRow(QAbstractItemView* self, int row, QAbstractItemDelegate* delegate);
QAbstractItemDelegate* QAbstractItemView_itemDelegateForRow(const QAbstractItemView* self, int row);
void QAbstractItemView_setItemDelegateForColumn(QAbstractItemView* self, int column, QAbstractItemDelegate* delegate);
QAbstractItemDelegate* QAbstractItemView_itemDelegateForColumn(const QAbstractItemView* self, int column);
QAbstractItemDelegate* QAbstractItemView_itemDelegateWithIndex(const QAbstractItemView* self, QModelIndex* index);
QAbstractItemDelegate* QAbstractItemView_itemDelegateForIndex(const QAbstractItemView* self, QModelIndex* index);
QVariant* QAbstractItemView_inputMethodQuery(const QAbstractItemView* self, int query);
void QAbstractItemView_reset(QAbstractItemView* self);
void QAbstractItemView_setRootIndex(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_doItemsLayout(QAbstractItemView* self);
void QAbstractItemView_selectAll(QAbstractItemView* self);
void QAbstractItemView_edit(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_clearSelection(QAbstractItemView* self);
void QAbstractItemView_setCurrentIndex(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_scrollToTop(QAbstractItemView* self);
void QAbstractItemView_scrollToBottom(QAbstractItemView* self);
void QAbstractItemView_update(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_dataChanged(QAbstractItemView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QAbstractItemView_rowsInserted(QAbstractItemView* self, QModelIndex* parent, int start, int end);
void QAbstractItemView_rowsAboutToBeRemoved(QAbstractItemView* self, QModelIndex* parent, int start, int end);
void QAbstractItemView_selectionChanged(QAbstractItemView* self, QItemSelection* selected, QItemSelection* deselected);
void QAbstractItemView_currentChanged(QAbstractItemView* self, QModelIndex* current, QModelIndex* previous);
void QAbstractItemView_updateEditorData(QAbstractItemView* self);
void QAbstractItemView_updateEditorGeometries(QAbstractItemView* self);
void QAbstractItemView_updateGeometries(QAbstractItemView* self);
void QAbstractItemView_verticalScrollbarAction(QAbstractItemView* self, int action);
void QAbstractItemView_horizontalScrollbarAction(QAbstractItemView* self, int action);
void QAbstractItemView_verticalScrollbarValueChanged(QAbstractItemView* self, int value);
void QAbstractItemView_horizontalScrollbarValueChanged(QAbstractItemView* self, int value);
void QAbstractItemView_closeEditor(QAbstractItemView* self, QWidget* editor, int hint);
void QAbstractItemView_commitData(QAbstractItemView* self, QWidget* editor);
void QAbstractItemView_editorDestroyed(QAbstractItemView* self, QObject* editor);
void QAbstractItemView_pressed(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_connect_pressed(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QAbstractItemView_clicked(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_connect_clicked(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QAbstractItemView_doubleClicked(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_connect_doubleClicked(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QAbstractItemView_activated(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_connect_activated(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QAbstractItemView_entered(QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_connect_entered(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*), void (*release)(intptr_t));
void QAbstractItemView_viewportEntered(QAbstractItemView* self);
void QAbstractItemView_connect_viewportEntered(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAbstractItemView_iconSizeChanged(QAbstractItemView* self, QSize* size);
void QAbstractItemView_connect_iconSizeChanged(QAbstractItemView* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
QModelIndex* QAbstractItemView_moveCursor(QAbstractItemView* self, int cursorAction, int modifiers);
int QAbstractItemView_horizontalOffset(const QAbstractItemView* self);
int QAbstractItemView_verticalOffset(const QAbstractItemView* self);
bool QAbstractItemView_isIndexHidden(const QAbstractItemView* self, QModelIndex* index);
void QAbstractItemView_setSelection(QAbstractItemView* self, QRect* rect, int command);
QRegion* QAbstractItemView_visualRegionForSelection(const QAbstractItemView* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QAbstractItemView_selectedIndexes(const QAbstractItemView* self);
bool QAbstractItemView_edit2(QAbstractItemView* self, QModelIndex* index, int trigger, QEvent* event);
int QAbstractItemView_selectionCommand(const QAbstractItemView* self, QModelIndex* index, QEvent* event);
void QAbstractItemView_startDrag(QAbstractItemView* self, int supportedActions);
void QAbstractItemView_initViewItemOption(const QAbstractItemView* self, QStyleOptionViewItem* option);
bool QAbstractItemView_focusNextPrevChild(QAbstractItemView* self, bool next);
bool QAbstractItemView_event(QAbstractItemView* self, QEvent* event);
bool QAbstractItemView_viewportEvent(QAbstractItemView* self, QEvent* event);
void QAbstractItemView_mousePressEvent(QAbstractItemView* self, QMouseEvent* event);
void QAbstractItemView_mouseMoveEvent(QAbstractItemView* self, QMouseEvent* event);
void QAbstractItemView_mouseReleaseEvent(QAbstractItemView* self, QMouseEvent* event);
void QAbstractItemView_mouseDoubleClickEvent(QAbstractItemView* self, QMouseEvent* event);
void QAbstractItemView_dragEnterEvent(QAbstractItemView* self, QDragEnterEvent* event);
void QAbstractItemView_dragMoveEvent(QAbstractItemView* self, QDragMoveEvent* event);
void QAbstractItemView_dragLeaveEvent(QAbstractItemView* self, QDragLeaveEvent* event);
void QAbstractItemView_dropEvent(QAbstractItemView* self, QDropEvent* event);
void QAbstractItemView_focusInEvent(QAbstractItemView* self, QFocusEvent* event);
void QAbstractItemView_focusOutEvent(QAbstractItemView* self, QFocusEvent* event);
void QAbstractItemView_keyPressEvent(QAbstractItemView* self, QKeyEvent* event);
void QAbstractItemView_resizeEvent(QAbstractItemView* self, QResizeEvent* event);
void QAbstractItemView_timerEvent(QAbstractItemView* self, QTimerEvent* event);
void QAbstractItemView_inputMethodEvent(QAbstractItemView* self, QInputMethodEvent* event);
bool QAbstractItemView_eventFilter(QAbstractItemView* self, QObject* object, QEvent* event);
QSize* QAbstractItemView_viewportSizeHint(const QAbstractItemView* self);
struct miqt_string QAbstractItemView_tr2(const char* s, const char* c);
struct miqt_string QAbstractItemView_tr3(const char* s, const char* c, int n);
QMetaObject* QAbstractItemView_virtualbase_metaObject(const void* self);
void* QAbstractItemView_virtualbase_metacast(void* self, const char* param1);
int QAbstractItemView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractItemView_virtualbase_setModel(void* self, QAbstractItemModel* model);
void QAbstractItemView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
void QAbstractItemView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
QRect* QAbstractItemView_virtualbase_visualRect(const void* self, QModelIndex* index);
void QAbstractItemView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
QModelIndex* QAbstractItemView_virtualbase_indexAt(const void* self, QPoint* point);
int QAbstractItemView_virtualbase_sizeHintForRow(const void* self, int row);
int QAbstractItemView_virtualbase_sizeHintForColumn(const void* self, int column);
QAbstractItemDelegate* QAbstractItemView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);
QVariant* QAbstractItemView_virtualbase_inputMethodQuery(const void* self, int query);
void QAbstractItemView_virtualbase_reset(void* self);
void QAbstractItemView_virtualbase_setRootIndex(void* self, QModelIndex* index);
void QAbstractItemView_virtualbase_doItemsLayout(void* self);
void QAbstractItemView_virtualbase_selectAll(void* self);
void QAbstractItemView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QAbstractItemView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
void QAbstractItemView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
void QAbstractItemView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
void QAbstractItemView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
void QAbstractItemView_virtualbase_updateEditorData(void* self);
void QAbstractItemView_virtualbase_updateEditorGeometries(void* self);
void QAbstractItemView_virtualbase_updateGeometries(void* self);
void QAbstractItemView_virtualbase_verticalScrollbarAction(void* self, int action);
void QAbstractItemView_virtualbase_horizontalScrollbarAction(void* self, int action);
void QAbstractItemView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
void QAbstractItemView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
void QAbstractItemView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
void QAbstractItemView_virtualbase_commitData(void* self, QWidget* editor);
void QAbstractItemView_virtualbase_editorDestroyed(void* self, QObject* editor);
QModelIndex* QAbstractItemView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
int QAbstractItemView_virtualbase_horizontalOffset(const void* self);
int QAbstractItemView_virtualbase_verticalOffset(const void* self);
bool QAbstractItemView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
void QAbstractItemView_virtualbase_setSelection(void* self, QRect* rect, int command);
QRegion* QAbstractItemView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QAbstractItemView_virtualbase_selectedIndexes(const void* self);
bool QAbstractItemView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
int QAbstractItemView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
void QAbstractItemView_virtualbase_startDrag(void* self, int supportedActions);
void QAbstractItemView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);
bool QAbstractItemView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QAbstractItemView_virtualbase_event(void* self, QEvent* event);
bool QAbstractItemView_virtualbase_viewportEvent(void* self, QEvent* event);
void QAbstractItemView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QAbstractItemView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QAbstractItemView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QAbstractItemView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QAbstractItemView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QAbstractItemView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QAbstractItemView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QAbstractItemView_virtualbase_dropEvent(void* self, QDropEvent* event);
void QAbstractItemView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QAbstractItemView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QAbstractItemView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QAbstractItemView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QAbstractItemView_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractItemView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QAbstractItemView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QAbstractItemView_virtualbase_viewportSizeHint(const void* self);
QSize* QAbstractItemView_virtualbase_minimumSizeHint(const void* self);
QSize* QAbstractItemView_virtualbase_sizeHint(const void* self);
void QAbstractItemView_virtualbase_setupViewport(void* self, QWidget* viewport);
void QAbstractItemView_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QAbstractItemView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QAbstractItemView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QAbstractItemView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QAbstractItemView_virtualbase_changeEvent(void* self, QEvent* param1);
void QAbstractItemView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
int QAbstractItemView_virtualbase_devType(const void* self);
void QAbstractItemView_virtualbase_setVisible(void* self, bool visible);
int QAbstractItemView_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractItemView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractItemView_virtualbase_paintEngine(const void* self);
void QAbstractItemView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QAbstractItemView_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QAbstractItemView_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractItemView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractItemView_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QAbstractItemView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractItemView_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractItemView_virtualbase_showEvent(void* self, QShowEvent* event);
void QAbstractItemView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QAbstractItemView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QAbstractItemView_virtualbase_metric(const void* self, int param1);
void QAbstractItemView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractItemView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractItemView_virtualbase_sharedPainter(const void* self);
void QAbstractItemView_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractItemView_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractItemView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractItemView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QAbstractItemView_protectedbase_state(const void* self);
void QAbstractItemView_protectedbase_setState(void* self, int state);
void QAbstractItemView_protectedbase_scheduleDelayedItemsLayout(void* self);
void QAbstractItemView_protectedbase_executeDelayedItemsLayout(void* self);
void QAbstractItemView_protectedbase_setDirtyRegion(void* self, QRegion* region);
void QAbstractItemView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy);
QPoint* QAbstractItemView_protectedbase_dirtyRegionOffset(const void* self);
void QAbstractItemView_protectedbase_startAutoScroll(void* self);
void QAbstractItemView_protectedbase_stopAutoScroll(void* self);
void QAbstractItemView_protectedbase_doAutoScroll(void* self);
int QAbstractItemView_protectedbase_dropIndicatorPosition(const void* self);
void QAbstractItemView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
QMargins* QAbstractItemView_protectedbase_viewportMargins(const void* self);
void QAbstractItemView_protectedbase_drawFrame(void* self, QPainter* param1);
void QAbstractItemView_protectedbase_updateMicroFocus(void* self);
void QAbstractItemView_protectedbase_create(void* self);
void QAbstractItemView_protectedbase_destroy(void* self);
bool QAbstractItemView_protectedbase_focusNextChild(void* self);
bool QAbstractItemView_protectedbase_focusPreviousChild(void* self);
QObject* QAbstractItemView_protectedbase_sender(const void* self);
int QAbstractItemView_protectedbase_senderSignalIndex(const void* self);
int QAbstractItemView_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractItemView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractItemView_staticMetaObject();
void QAbstractItemView_delete(QAbstractItemView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
