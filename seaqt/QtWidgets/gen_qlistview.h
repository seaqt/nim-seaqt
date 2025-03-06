#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLISTVIEW_H
#define SEAQT_QTWIDGETS_GEN_QLISTVIEW_H

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
class QListView;
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
typedef struct QListView QListView;
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

struct QListView_VTable {
	void (*destructor)(struct QListView_VTable* vtbl, QListView* self);
	QMetaObject* (*metaObject)(struct QListView_VTable* vtbl, const QListView* self);
	void* (*metacast)(struct QListView_VTable* vtbl, QListView* self, const char* param1);
	int (*metacall)(struct QListView_VTable* vtbl, QListView* self, int param1, int param2, void** param3);
	QRect* (*visualRect)(struct QListView_VTable* vtbl, const QListView* self, QModelIndex* index);
	void (*scrollTo)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* index, int hint);
	QModelIndex* (*indexAt)(struct QListView_VTable* vtbl, const QListView* self, QPoint* p);
	void (*doItemsLayout)(struct QListView_VTable* vtbl, QListView* self);
	void (*reset)(struct QListView_VTable* vtbl, QListView* self);
	void (*setRootIndex)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* index);
	bool (*event)(struct QListView_VTable* vtbl, QListView* self, QEvent* e);
	void (*scrollContentsBy)(struct QListView_VTable* vtbl, QListView* self, int dx, int dy);
	void (*dataChanged)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsInserted)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* parent, int start, int end);
	void (*rowsAboutToBeRemoved)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* parent, int start, int end);
	void (*mouseMoveEvent)(struct QListView_VTable* vtbl, QListView* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QListView_VTable* vtbl, QListView* self, QMouseEvent* e);
	void (*wheelEvent)(struct QListView_VTable* vtbl, QListView* self, QWheelEvent* e);
	void (*timerEvent)(struct QListView_VTable* vtbl, QListView* self, QTimerEvent* e);
	void (*resizeEvent)(struct QListView_VTable* vtbl, QListView* self, QResizeEvent* e);
	void (*dragMoveEvent)(struct QListView_VTable* vtbl, QListView* self, QDragMoveEvent* e);
	void (*dragLeaveEvent)(struct QListView_VTable* vtbl, QListView* self, QDragLeaveEvent* e);
	void (*dropEvent)(struct QListView_VTable* vtbl, QListView* self, QDropEvent* e);
	void (*startDrag)(struct QListView_VTable* vtbl, QListView* self, int supportedActions);
	void (*initViewItemOption)(struct QListView_VTable* vtbl, const QListView* self, QStyleOptionViewItem* option);
	void (*paintEvent)(struct QListView_VTable* vtbl, QListView* self, QPaintEvent* e);
	int (*horizontalOffset)(struct QListView_VTable* vtbl, const QListView* self);
	int (*verticalOffset)(struct QListView_VTable* vtbl, const QListView* self);
	QModelIndex* (*moveCursor)(struct QListView_VTable* vtbl, QListView* self, int cursorAction, int modifiers);
	void (*setSelection)(struct QListView_VTable* vtbl, QListView* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(struct QListView_VTable* vtbl, const QListView* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(struct QListView_VTable* vtbl, const QListView* self);
	void (*updateGeometries)(struct QListView_VTable* vtbl, QListView* self);
	bool (*isIndexHidden)(struct QListView_VTable* vtbl, const QListView* self, QModelIndex* index);
	void (*selectionChanged)(struct QListView_VTable* vtbl, QListView* self, QItemSelection* selected, QItemSelection* deselected);
	void (*currentChanged)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* current, QModelIndex* previous);
	QSize* (*viewportSizeHint)(struct QListView_VTable* vtbl, const QListView* self);
	void (*setModel)(struct QListView_VTable* vtbl, QListView* self, QAbstractItemModel* model);
	void (*setSelectionModel)(struct QListView_VTable* vtbl, QListView* self, QItemSelectionModel* selectionModel);
	void (*keyboardSearch)(struct QListView_VTable* vtbl, QListView* self, struct miqt_string search);
	int (*sizeHintForRow)(struct QListView_VTable* vtbl, const QListView* self, int row);
	int (*sizeHintForColumn)(struct QListView_VTable* vtbl, const QListView* self, int column);
	QAbstractItemDelegate* (*itemDelegateForIndex)(struct QListView_VTable* vtbl, const QListView* self, QModelIndex* index);
	QVariant* (*inputMethodQuery)(struct QListView_VTable* vtbl, const QListView* self, int query);
	void (*selectAll)(struct QListView_VTable* vtbl, QListView* self);
	void (*updateEditorData)(struct QListView_VTable* vtbl, QListView* self);
	void (*updateEditorGeometries)(struct QListView_VTable* vtbl, QListView* self);
	void (*verticalScrollbarAction)(struct QListView_VTable* vtbl, QListView* self, int action);
	void (*horizontalScrollbarAction)(struct QListView_VTable* vtbl, QListView* self, int action);
	void (*verticalScrollbarValueChanged)(struct QListView_VTable* vtbl, QListView* self, int value);
	void (*horizontalScrollbarValueChanged)(struct QListView_VTable* vtbl, QListView* self, int value);
	void (*closeEditor)(struct QListView_VTable* vtbl, QListView* self, QWidget* editor, int hint);
	void (*commitData)(struct QListView_VTable* vtbl, QListView* self, QWidget* editor);
	void (*editorDestroyed)(struct QListView_VTable* vtbl, QListView* self, QObject* editor);
	bool (*edit2)(struct QListView_VTable* vtbl, QListView* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(struct QListView_VTable* vtbl, const QListView* self, QModelIndex* index, QEvent* event);
	bool (*focusNextPrevChild)(struct QListView_VTable* vtbl, QListView* self, bool next);
	bool (*viewportEvent)(struct QListView_VTable* vtbl, QListView* self, QEvent* event);
	void (*mousePressEvent)(struct QListView_VTable* vtbl, QListView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QListView_VTable* vtbl, QListView* self, QMouseEvent* event);
	void (*dragEnterEvent)(struct QListView_VTable* vtbl, QListView* self, QDragEnterEvent* event);
	void (*focusInEvent)(struct QListView_VTable* vtbl, QListView* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QListView_VTable* vtbl, QListView* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QListView_VTable* vtbl, QListView* self, QKeyEvent* event);
	void (*inputMethodEvent)(struct QListView_VTable* vtbl, QListView* self, QInputMethodEvent* event);
	bool (*eventFilter)(struct QListView_VTable* vtbl, QListView* self, QObject* object, QEvent* event);
	QSize* (*minimumSizeHint)(struct QListView_VTable* vtbl, const QListView* self);
	QSize* (*sizeHint)(struct QListView_VTable* vtbl, const QListView* self);
	void (*setupViewport)(struct QListView_VTable* vtbl, QListView* self, QWidget* viewport);
	void (*contextMenuEvent)(struct QListView_VTable* vtbl, QListView* self, QContextMenuEvent* param1);
	void (*changeEvent)(struct QListView_VTable* vtbl, QListView* self, QEvent* param1);
	void (*initStyleOption)(struct QListView_VTable* vtbl, const QListView* self, QStyleOptionFrame* option);
	int (*devType)(struct QListView_VTable* vtbl, const QListView* self);
	void (*setVisible)(struct QListView_VTable* vtbl, QListView* self, bool visible);
	int (*heightForWidth)(struct QListView_VTable* vtbl, const QListView* self, int param1);
	bool (*hasHeightForWidth)(struct QListView_VTable* vtbl, const QListView* self);
	QPaintEngine* (*paintEngine)(struct QListView_VTable* vtbl, const QListView* self);
	void (*keyReleaseEvent)(struct QListView_VTable* vtbl, QListView* self, QKeyEvent* event);
	void (*enterEvent)(struct QListView_VTable* vtbl, QListView* self, QEnterEvent* event);
	void (*leaveEvent)(struct QListView_VTable* vtbl, QListView* self, QEvent* event);
	void (*moveEvent)(struct QListView_VTable* vtbl, QListView* self, QMoveEvent* event);
	void (*closeEvent)(struct QListView_VTable* vtbl, QListView* self, QCloseEvent* event);
	void (*tabletEvent)(struct QListView_VTable* vtbl, QListView* self, QTabletEvent* event);
	void (*actionEvent)(struct QListView_VTable* vtbl, QListView* self, QActionEvent* event);
	void (*showEvent)(struct QListView_VTable* vtbl, QListView* self, QShowEvent* event);
	void (*hideEvent)(struct QListView_VTable* vtbl, QListView* self, QHideEvent* event);
	bool (*nativeEvent)(struct QListView_VTable* vtbl, QListView* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QListView_VTable* vtbl, const QListView* self, int param1);
	void (*initPainter)(struct QListView_VTable* vtbl, const QListView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QListView_VTable* vtbl, const QListView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QListView_VTable* vtbl, const QListView* self);
	void (*childEvent)(struct QListView_VTable* vtbl, QListView* self, QChildEvent* event);
	void (*customEvent)(struct QListView_VTable* vtbl, QListView* self, QEvent* event);
	void (*connectNotify)(struct QListView_VTable* vtbl, QListView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QListView_VTable* vtbl, QListView* self, QMetaMethod* signal);
};
QListView* QListView_new(struct QListView_VTable* vtbl, QWidget* parent);
QListView* QListView_new2(struct QListView_VTable* vtbl);
void QListView_virtbase(QListView* src, QAbstractItemView** outptr_QAbstractItemView);
QMetaObject* QListView_metaObject(const QListView* self);
void* QListView_metacast(QListView* self, const char* param1);
int QListView_metacall(QListView* self, int param1, int param2, void** param3);
struct miqt_string QListView_tr(const char* s);
void QListView_setMovement(QListView* self, int movement);
int QListView_movement(const QListView* self);
void QListView_setFlow(QListView* self, int flow);
int QListView_flow(const QListView* self);
void QListView_setWrapping(QListView* self, bool enable);
bool QListView_isWrapping(const QListView* self);
void QListView_setResizeMode(QListView* self, int mode);
int QListView_resizeMode(const QListView* self);
void QListView_setLayoutMode(QListView* self, int mode);
int QListView_layoutMode(const QListView* self);
void QListView_setSpacing(QListView* self, int space);
int QListView_spacing(const QListView* self);
void QListView_setBatchSize(QListView* self, int batchSize);
int QListView_batchSize(const QListView* self);
void QListView_setGridSize(QListView* self, QSize* size);
QSize* QListView_gridSize(const QListView* self);
void QListView_setViewMode(QListView* self, int mode);
int QListView_viewMode(const QListView* self);
void QListView_clearPropertyFlags(QListView* self);
bool QListView_isRowHidden(const QListView* self, int row);
void QListView_setRowHidden(QListView* self, int row, bool hide);
void QListView_setModelColumn(QListView* self, int column);
int QListView_modelColumn(const QListView* self);
void QListView_setUniformItemSizes(QListView* self, bool enable);
bool QListView_uniformItemSizes(const QListView* self);
void QListView_setWordWrap(QListView* self, bool on);
bool QListView_wordWrap(const QListView* self);
void QListView_setSelectionRectVisible(QListView* self, bool show);
bool QListView_isSelectionRectVisible(const QListView* self);
void QListView_setItemAlignment(QListView* self, int alignment);
int QListView_itemAlignment(const QListView* self);
QRect* QListView_visualRect(const QListView* self, QModelIndex* index);
void QListView_scrollTo(QListView* self, QModelIndex* index, int hint);
QModelIndex* QListView_indexAt(const QListView* self, QPoint* p);
void QListView_doItemsLayout(QListView* self);
void QListView_reset(QListView* self);
void QListView_setRootIndex(QListView* self, QModelIndex* index);
void QListView_indexesMoved(QListView* self, struct miqt_array /* of QModelIndex* */  indexes);
void QListView_connect_indexesMoved(QListView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QModelIndex* */ ), void (*release)(intptr_t));
bool QListView_event(QListView* self, QEvent* e);
void QListView_scrollContentsBy(QListView* self, int dx, int dy);
void QListView_dataChanged(QListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QListView_rowsInserted(QListView* self, QModelIndex* parent, int start, int end);
void QListView_rowsAboutToBeRemoved(QListView* self, QModelIndex* parent, int start, int end);
void QListView_mouseMoveEvent(QListView* self, QMouseEvent* e);
void QListView_mouseReleaseEvent(QListView* self, QMouseEvent* e);
void QListView_wheelEvent(QListView* self, QWheelEvent* e);
void QListView_timerEvent(QListView* self, QTimerEvent* e);
void QListView_resizeEvent(QListView* self, QResizeEvent* e);
void QListView_dragMoveEvent(QListView* self, QDragMoveEvent* e);
void QListView_dragLeaveEvent(QListView* self, QDragLeaveEvent* e);
void QListView_dropEvent(QListView* self, QDropEvent* e);
void QListView_startDrag(QListView* self, int supportedActions);
void QListView_initViewItemOption(const QListView* self, QStyleOptionViewItem* option);
void QListView_paintEvent(QListView* self, QPaintEvent* e);
int QListView_horizontalOffset(const QListView* self);
int QListView_verticalOffset(const QListView* self);
QModelIndex* QListView_moveCursor(QListView* self, int cursorAction, int modifiers);
void QListView_setSelection(QListView* self, QRect* rect, int command);
QRegion* QListView_visualRegionForSelection(const QListView* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QListView_selectedIndexes(const QListView* self);
void QListView_updateGeometries(QListView* self);
bool QListView_isIndexHidden(const QListView* self, QModelIndex* index);
void QListView_selectionChanged(QListView* self, QItemSelection* selected, QItemSelection* deselected);
void QListView_currentChanged(QListView* self, QModelIndex* current, QModelIndex* previous);
QSize* QListView_viewportSizeHint(const QListView* self);
struct miqt_string QListView_tr2(const char* s, const char* c);
struct miqt_string QListView_tr3(const char* s, const char* c, int n);
QMetaObject* QListView_virtualbase_metaObject(const void* self);
void* QListView_virtualbase_metacast(void* self, const char* param1);
int QListView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRect* QListView_virtualbase_visualRect(const void* self, QModelIndex* index);
void QListView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
QModelIndex* QListView_virtualbase_indexAt(const void* self, QPoint* p);
void QListView_virtualbase_doItemsLayout(void* self);
void QListView_virtualbase_reset(void* self);
void QListView_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QListView_virtualbase_event(void* self, QEvent* e);
void QListView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QListView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QListView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
void QListView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
void QListView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QListView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QListView_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QListView_virtualbase_timerEvent(void* self, QTimerEvent* e);
void QListView_virtualbase_resizeEvent(void* self, QResizeEvent* e);
void QListView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
void QListView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
void QListView_virtualbase_dropEvent(void* self, QDropEvent* e);
void QListView_virtualbase_startDrag(void* self, int supportedActions);
void QListView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);
void QListView_virtualbase_paintEvent(void* self, QPaintEvent* e);
int QListView_virtualbase_horizontalOffset(const void* self);
int QListView_virtualbase_verticalOffset(const void* self);
QModelIndex* QListView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
void QListView_virtualbase_setSelection(void* self, QRect* rect, int command);
QRegion* QListView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QListView_virtualbase_selectedIndexes(const void* self);
void QListView_virtualbase_updateGeometries(void* self);
bool QListView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
void QListView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
void QListView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
QSize* QListView_virtualbase_viewportSizeHint(const void* self);
void QListView_virtualbase_setModel(void* self, QAbstractItemModel* model);
void QListView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
void QListView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
int QListView_virtualbase_sizeHintForRow(const void* self, int row);
int QListView_virtualbase_sizeHintForColumn(const void* self, int column);
QAbstractItemDelegate* QListView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);
QVariant* QListView_virtualbase_inputMethodQuery(const void* self, int query);
void QListView_virtualbase_selectAll(void* self);
void QListView_virtualbase_updateEditorData(void* self);
void QListView_virtualbase_updateEditorGeometries(void* self);
void QListView_virtualbase_verticalScrollbarAction(void* self, int action);
void QListView_virtualbase_horizontalScrollbarAction(void* self, int action);
void QListView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
void QListView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
void QListView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
void QListView_virtualbase_commitData(void* self, QWidget* editor);
void QListView_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QListView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
int QListView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QListView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QListView_virtualbase_viewportEvent(void* self, QEvent* event);
void QListView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QListView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QListView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QListView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QListView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QListView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QListView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QListView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QListView_virtualbase_minimumSizeHint(const void* self);
QSize* QListView_virtualbase_sizeHint(const void* self);
void QListView_virtualbase_setupViewport(void* self, QWidget* viewport);
void QListView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QListView_virtualbase_changeEvent(void* self, QEvent* param1);
void QListView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
int QListView_virtualbase_devType(const void* self);
void QListView_virtualbase_setVisible(void* self, bool visible);
int QListView_virtualbase_heightForWidth(const void* self, int param1);
bool QListView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QListView_virtualbase_paintEngine(const void* self);
void QListView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QListView_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QListView_virtualbase_leaveEvent(void* self, QEvent* event);
void QListView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QListView_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QListView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QListView_virtualbase_actionEvent(void* self, QActionEvent* event);
void QListView_virtualbase_showEvent(void* self, QShowEvent* event);
void QListView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QListView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QListView_virtualbase_metric(const void* self, int param1);
void QListView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QListView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QListView_virtualbase_sharedPainter(const void* self);
void QListView_virtualbase_childEvent(void* self, QChildEvent* event);
void QListView_virtualbase_customEvent(void* self, QEvent* event);
void QListView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QListView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QListView_protectedbase_resizeContents(void* self, int width, int height);
QSize* QListView_protectedbase_contentsSize(const void* self);
QRect* QListView_protectedbase_rectForIndex(const void* self, QModelIndex* index);
void QListView_protectedbase_setPositionForIndex(void* self, QPoint* position, QModelIndex* index);
int QListView_protectedbase_state(const void* self);
void QListView_protectedbase_setState(void* self, int state);
void QListView_protectedbase_scheduleDelayedItemsLayout(void* self);
void QListView_protectedbase_executeDelayedItemsLayout(void* self);
void QListView_protectedbase_setDirtyRegion(void* self, QRegion* region);
void QListView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy);
QPoint* QListView_protectedbase_dirtyRegionOffset(const void* self);
void QListView_protectedbase_startAutoScroll(void* self);
void QListView_protectedbase_stopAutoScroll(void* self);
void QListView_protectedbase_doAutoScroll(void* self);
int QListView_protectedbase_dropIndicatorPosition(const void* self);
void QListView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
QMargins* QListView_protectedbase_viewportMargins(const void* self);
void QListView_protectedbase_drawFrame(void* self, QPainter* param1);
void QListView_protectedbase_updateMicroFocus(void* self);
void QListView_protectedbase_create(void* self);
void QListView_protectedbase_destroy(void* self);
bool QListView_protectedbase_focusNextChild(void* self);
bool QListView_protectedbase_focusPreviousChild(void* self);
QObject* QListView_protectedbase_sender(const void* self);
int QListView_protectedbase_senderSignalIndex(const void* self);
int QListView_protectedbase_receivers(const void* self, const char* signal);
bool QListView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QListView_staticMetaObject();
void QListView_delete(QListView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
