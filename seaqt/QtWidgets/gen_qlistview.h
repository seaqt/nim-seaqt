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

typedef struct VirtualQListView VirtualQListView;
typedef struct QListView_VTable{
	void (*destructor)(VirtualQListView* self);
	QMetaObject* (*metaObject)(const VirtualQListView* self);
	void* (*metacast)(VirtualQListView* self, const char* param1);
	int (*metacall)(VirtualQListView* self, int param1, int param2, void** param3);
	QRect* (*visualRect)(const VirtualQListView* self, QModelIndex* index);
	void (*scrollTo)(VirtualQListView* self, QModelIndex* index, int hint);
	QModelIndex* (*indexAt)(const VirtualQListView* self, QPoint* p);
	void (*doItemsLayout)(VirtualQListView* self);
	void (*reset)(VirtualQListView* self);
	void (*setRootIndex)(VirtualQListView* self, QModelIndex* index);
	bool (*event)(VirtualQListView* self, QEvent* e);
	void (*scrollContentsBy)(VirtualQListView* self, int dx, int dy);
	void (*dataChanged)(VirtualQListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsInserted)(VirtualQListView* self, QModelIndex* parent, int start, int end);
	void (*rowsAboutToBeRemoved)(VirtualQListView* self, QModelIndex* parent, int start, int end);
	void (*mouseMoveEvent)(VirtualQListView* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(VirtualQListView* self, QMouseEvent* e);
	void (*wheelEvent)(VirtualQListView* self, QWheelEvent* e);
	void (*timerEvent)(VirtualQListView* self, QTimerEvent* e);
	void (*resizeEvent)(VirtualQListView* self, QResizeEvent* e);
	void (*dragMoveEvent)(VirtualQListView* self, QDragMoveEvent* e);
	void (*dragLeaveEvent)(VirtualQListView* self, QDragLeaveEvent* e);
	void (*dropEvent)(VirtualQListView* self, QDropEvent* e);
	void (*startDrag)(VirtualQListView* self, int supportedActions);
	void (*initViewItemOption)(const VirtualQListView* self, QStyleOptionViewItem* option);
	void (*paintEvent)(VirtualQListView* self, QPaintEvent* e);
	int (*horizontalOffset)(const VirtualQListView* self);
	int (*verticalOffset)(const VirtualQListView* self);
	QModelIndex* (*moveCursor)(VirtualQListView* self, int cursorAction, int modifiers);
	void (*setSelection)(VirtualQListView* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(const VirtualQListView* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(const VirtualQListView* self);
	void (*updateGeometries)(VirtualQListView* self);
	bool (*isIndexHidden)(const VirtualQListView* self, QModelIndex* index);
	void (*selectionChanged)(VirtualQListView* self, QItemSelection* selected, QItemSelection* deselected);
	void (*currentChanged)(VirtualQListView* self, QModelIndex* current, QModelIndex* previous);
	QSize* (*viewportSizeHint)(const VirtualQListView* self);
	void (*setModel)(VirtualQListView* self, QAbstractItemModel* model);
	void (*setSelectionModel)(VirtualQListView* self, QItemSelectionModel* selectionModel);
	void (*keyboardSearch)(VirtualQListView* self, struct miqt_string search);
	int (*sizeHintForRow)(const VirtualQListView* self, int row);
	int (*sizeHintForColumn)(const VirtualQListView* self, int column);
	QAbstractItemDelegate* (*itemDelegateForIndex)(const VirtualQListView* self, QModelIndex* index);
	QVariant* (*inputMethodQuery)(const VirtualQListView* self, int query);
	void (*selectAll)(VirtualQListView* self);
	void (*updateEditorData)(VirtualQListView* self);
	void (*updateEditorGeometries)(VirtualQListView* self);
	void (*verticalScrollbarAction)(VirtualQListView* self, int action);
	void (*horizontalScrollbarAction)(VirtualQListView* self, int action);
	void (*verticalScrollbarValueChanged)(VirtualQListView* self, int value);
	void (*horizontalScrollbarValueChanged)(VirtualQListView* self, int value);
	void (*closeEditor)(VirtualQListView* self, QWidget* editor, int hint);
	void (*commitData)(VirtualQListView* self, QWidget* editor);
	void (*editorDestroyed)(VirtualQListView* self, QObject* editor);
	bool (*edit2)(VirtualQListView* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(const VirtualQListView* self, QModelIndex* index, QEvent* event);
	bool (*focusNextPrevChild)(VirtualQListView* self, bool next);
	bool (*viewportEvent)(VirtualQListView* self, QEvent* event);
	void (*mousePressEvent)(VirtualQListView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQListView* self, QMouseEvent* event);
	void (*dragEnterEvent)(VirtualQListView* self, QDragEnterEvent* event);
	void (*focusInEvent)(VirtualQListView* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQListView* self, QFocusEvent* event);
	void (*keyPressEvent)(VirtualQListView* self, QKeyEvent* event);
	void (*inputMethodEvent)(VirtualQListView* self, QInputMethodEvent* event);
	bool (*eventFilter)(VirtualQListView* self, QObject* object, QEvent* event);
	QSize* (*minimumSizeHint)(const VirtualQListView* self);
	QSize* (*sizeHint)(const VirtualQListView* self);
	void (*setupViewport)(VirtualQListView* self, QWidget* viewport);
	void (*contextMenuEvent)(VirtualQListView* self, QContextMenuEvent* param1);
	void (*changeEvent)(VirtualQListView* self, QEvent* param1);
	void (*initStyleOption)(const VirtualQListView* self, QStyleOptionFrame* option);
	int (*devType)(const VirtualQListView* self);
	void (*setVisible)(VirtualQListView* self, bool visible);
	int (*heightForWidth)(const VirtualQListView* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQListView* self);
	QPaintEngine* (*paintEngine)(const VirtualQListView* self);
	void (*keyReleaseEvent)(VirtualQListView* self, QKeyEvent* event);
	void (*enterEvent)(VirtualQListView* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQListView* self, QEvent* event);
	void (*moveEvent)(VirtualQListView* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQListView* self, QCloseEvent* event);
	void (*tabletEvent)(VirtualQListView* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQListView* self, QActionEvent* event);
	void (*showEvent)(VirtualQListView* self, QShowEvent* event);
	void (*hideEvent)(VirtualQListView* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQListView* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQListView* self, int param1);
	void (*initPainter)(const VirtualQListView* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQListView* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQListView* self);
	void (*childEvent)(VirtualQListView* self, QChildEvent* event);
	void (*customEvent)(VirtualQListView* self, QEvent* event);
	void (*connectNotify)(VirtualQListView* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQListView* self, QMetaMethod* signal);
}QListView_VTable;

const QListView_VTable* QListView_vtbl(const VirtualQListView* self);
void* QListView_vdata(const VirtualQListView* self);
void QListView_setVdata(VirtualQListView* self, void* vdata);

VirtualQListView* QListView_new(const QListView_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQListView* QListView_new2(const QListView_VTable* vtbl, void* vdata);

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
void QListView_connect_indexesMoved(VirtualQListView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QModelIndex* */ ), void (*release)(intptr_t));
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

QMetaObject* QListView_virtualbase_metaObject(const VirtualQListView* self);
void* QListView_virtualbase_metacast(VirtualQListView* self, const char* param1);
int QListView_virtualbase_metacall(VirtualQListView* self, int param1, int param2, void** param3);
QRect* QListView_virtualbase_visualRect(const VirtualQListView* self, QModelIndex* index);
void QListView_virtualbase_scrollTo(VirtualQListView* self, QModelIndex* index, int hint);
QModelIndex* QListView_virtualbase_indexAt(const VirtualQListView* self, QPoint* p);
void QListView_virtualbase_doItemsLayout(VirtualQListView* self);
void QListView_virtualbase_reset(VirtualQListView* self);
void QListView_virtualbase_setRootIndex(VirtualQListView* self, QModelIndex* index);
bool QListView_virtualbase_event(VirtualQListView* self, QEvent* e);
void QListView_virtualbase_scrollContentsBy(VirtualQListView* self, int dx, int dy);
void QListView_virtualbase_dataChanged(VirtualQListView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QListView_virtualbase_rowsInserted(VirtualQListView* self, QModelIndex* parent, int start, int end);
void QListView_virtualbase_rowsAboutToBeRemoved(VirtualQListView* self, QModelIndex* parent, int start, int end);
void QListView_virtualbase_mouseMoveEvent(VirtualQListView* self, QMouseEvent* e);
void QListView_virtualbase_mouseReleaseEvent(VirtualQListView* self, QMouseEvent* e);
void QListView_virtualbase_wheelEvent(VirtualQListView* self, QWheelEvent* e);
void QListView_virtualbase_timerEvent(VirtualQListView* self, QTimerEvent* e);
void QListView_virtualbase_resizeEvent(VirtualQListView* self, QResizeEvent* e);
void QListView_virtualbase_dragMoveEvent(VirtualQListView* self, QDragMoveEvent* e);
void QListView_virtualbase_dragLeaveEvent(VirtualQListView* self, QDragLeaveEvent* e);
void QListView_virtualbase_dropEvent(VirtualQListView* self, QDropEvent* e);
void QListView_virtualbase_startDrag(VirtualQListView* self, int supportedActions);
void QListView_virtualbase_initViewItemOption(const VirtualQListView* self, QStyleOptionViewItem* option);
void QListView_virtualbase_paintEvent(VirtualQListView* self, QPaintEvent* e);
int QListView_virtualbase_horizontalOffset(const VirtualQListView* self);
int QListView_virtualbase_verticalOffset(const VirtualQListView* self);
QModelIndex* QListView_virtualbase_moveCursor(VirtualQListView* self, int cursorAction, int modifiers);
void QListView_virtualbase_setSelection(VirtualQListView* self, QRect* rect, int command);
QRegion* QListView_virtualbase_visualRegionForSelection(const VirtualQListView* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QListView_virtualbase_selectedIndexes(const VirtualQListView* self);
void QListView_virtualbase_updateGeometries(VirtualQListView* self);
bool QListView_virtualbase_isIndexHidden(const VirtualQListView* self, QModelIndex* index);
void QListView_virtualbase_selectionChanged(VirtualQListView* self, QItemSelection* selected, QItemSelection* deselected);
void QListView_virtualbase_currentChanged(VirtualQListView* self, QModelIndex* current, QModelIndex* previous);
QSize* QListView_virtualbase_viewportSizeHint(const VirtualQListView* self);
void QListView_virtualbase_setModel(VirtualQListView* self, QAbstractItemModel* model);
void QListView_virtualbase_setSelectionModel(VirtualQListView* self, QItemSelectionModel* selectionModel);
void QListView_virtualbase_keyboardSearch(VirtualQListView* self, struct miqt_string search);
int QListView_virtualbase_sizeHintForRow(const VirtualQListView* self, int row);
int QListView_virtualbase_sizeHintForColumn(const VirtualQListView* self, int column);
QAbstractItemDelegate* QListView_virtualbase_itemDelegateForIndex(const VirtualQListView* self, QModelIndex* index);
QVariant* QListView_virtualbase_inputMethodQuery(const VirtualQListView* self, int query);
void QListView_virtualbase_selectAll(VirtualQListView* self);
void QListView_virtualbase_updateEditorData(VirtualQListView* self);
void QListView_virtualbase_updateEditorGeometries(VirtualQListView* self);
void QListView_virtualbase_verticalScrollbarAction(VirtualQListView* self, int action);
void QListView_virtualbase_horizontalScrollbarAction(VirtualQListView* self, int action);
void QListView_virtualbase_verticalScrollbarValueChanged(VirtualQListView* self, int value);
void QListView_virtualbase_horizontalScrollbarValueChanged(VirtualQListView* self, int value);
void QListView_virtualbase_closeEditor(VirtualQListView* self, QWidget* editor, int hint);
void QListView_virtualbase_commitData(VirtualQListView* self, QWidget* editor);
void QListView_virtualbase_editorDestroyed(VirtualQListView* self, QObject* editor);
bool QListView_virtualbase_edit2(VirtualQListView* self, QModelIndex* index, int trigger, QEvent* event);
int QListView_virtualbase_selectionCommand(const VirtualQListView* self, QModelIndex* index, QEvent* event);
bool QListView_virtualbase_focusNextPrevChild(VirtualQListView* self, bool next);
bool QListView_virtualbase_viewportEvent(VirtualQListView* self, QEvent* event);
void QListView_virtualbase_mousePressEvent(VirtualQListView* self, QMouseEvent* event);
void QListView_virtualbase_mouseDoubleClickEvent(VirtualQListView* self, QMouseEvent* event);
void QListView_virtualbase_dragEnterEvent(VirtualQListView* self, QDragEnterEvent* event);
void QListView_virtualbase_focusInEvent(VirtualQListView* self, QFocusEvent* event);
void QListView_virtualbase_focusOutEvent(VirtualQListView* self, QFocusEvent* event);
void QListView_virtualbase_keyPressEvent(VirtualQListView* self, QKeyEvent* event);
void QListView_virtualbase_inputMethodEvent(VirtualQListView* self, QInputMethodEvent* event);
bool QListView_virtualbase_eventFilter(VirtualQListView* self, QObject* object, QEvent* event);
QSize* QListView_virtualbase_minimumSizeHint(const VirtualQListView* self);
QSize* QListView_virtualbase_sizeHint(const VirtualQListView* self);
void QListView_virtualbase_setupViewport(VirtualQListView* self, QWidget* viewport);
void QListView_virtualbase_contextMenuEvent(VirtualQListView* self, QContextMenuEvent* param1);
void QListView_virtualbase_changeEvent(VirtualQListView* self, QEvent* param1);
void QListView_virtualbase_initStyleOption(const VirtualQListView* self, QStyleOptionFrame* option);
int QListView_virtualbase_devType(const VirtualQListView* self);
void QListView_virtualbase_setVisible(VirtualQListView* self, bool visible);
int QListView_virtualbase_heightForWidth(const VirtualQListView* self, int param1);
bool QListView_virtualbase_hasHeightForWidth(const VirtualQListView* self);
QPaintEngine* QListView_virtualbase_paintEngine(const VirtualQListView* self);
void QListView_virtualbase_keyReleaseEvent(VirtualQListView* self, QKeyEvent* event);
void QListView_virtualbase_enterEvent(VirtualQListView* self, QEnterEvent* event);
void QListView_virtualbase_leaveEvent(VirtualQListView* self, QEvent* event);
void QListView_virtualbase_moveEvent(VirtualQListView* self, QMoveEvent* event);
void QListView_virtualbase_closeEvent(VirtualQListView* self, QCloseEvent* event);
void QListView_virtualbase_tabletEvent(VirtualQListView* self, QTabletEvent* event);
void QListView_virtualbase_actionEvent(VirtualQListView* self, QActionEvent* event);
void QListView_virtualbase_showEvent(VirtualQListView* self, QShowEvent* event);
void QListView_virtualbase_hideEvent(VirtualQListView* self, QHideEvent* event);
bool QListView_virtualbase_nativeEvent(VirtualQListView* self, struct miqt_string eventType, void* message, intptr_t* result);
int QListView_virtualbase_metric(const VirtualQListView* self, int param1);
void QListView_virtualbase_initPainter(const VirtualQListView* self, QPainter* painter);
QPaintDevice* QListView_virtualbase_redirected(const VirtualQListView* self, QPoint* offset);
QPainter* QListView_virtualbase_sharedPainter(const VirtualQListView* self);
void QListView_virtualbase_childEvent(VirtualQListView* self, QChildEvent* event);
void QListView_virtualbase_customEvent(VirtualQListView* self, QEvent* event);
void QListView_virtualbase_connectNotify(VirtualQListView* self, QMetaMethod* signal);
void QListView_virtualbase_disconnectNotify(VirtualQListView* self, QMetaMethod* signal);

void QListView_protectedbase_resizeContents(VirtualQListView* self, int width, int height);
QSize* QListView_protectedbase_contentsSize(const VirtualQListView* self);
QRect* QListView_protectedbase_rectForIndex(const VirtualQListView* self, QModelIndex* index);
void QListView_protectedbase_setPositionForIndex(VirtualQListView* self, QPoint* position, QModelIndex* index);
int QListView_protectedbase_state(const VirtualQListView* self);
void QListView_protectedbase_setState(VirtualQListView* self, int state);
void QListView_protectedbase_scheduleDelayedItemsLayout(VirtualQListView* self);
void QListView_protectedbase_executeDelayedItemsLayout(VirtualQListView* self);
void QListView_protectedbase_setDirtyRegion(VirtualQListView* self, QRegion* region);
void QListView_protectedbase_scrollDirtyRegion(VirtualQListView* self, int dx, int dy);
QPoint* QListView_protectedbase_dirtyRegionOffset(const VirtualQListView* self);
void QListView_protectedbase_startAutoScroll(VirtualQListView* self);
void QListView_protectedbase_stopAutoScroll(VirtualQListView* self);
void QListView_protectedbase_doAutoScroll(VirtualQListView* self);
int QListView_protectedbase_dropIndicatorPosition(const VirtualQListView* self);
void QListView_protectedbase_setViewportMargins(VirtualQListView* self, int left, int top, int right, int bottom);
QMargins* QListView_protectedbase_viewportMargins(const VirtualQListView* self);
void QListView_protectedbase_drawFrame(VirtualQListView* self, QPainter* param1);
void QListView_protectedbase_updateMicroFocus(VirtualQListView* self);
void QListView_protectedbase_create(VirtualQListView* self);
void QListView_protectedbase_destroy(VirtualQListView* self);
bool QListView_protectedbase_focusNextChild(VirtualQListView* self);
bool QListView_protectedbase_focusPreviousChild(VirtualQListView* self);
QObject* QListView_protectedbase_sender(const VirtualQListView* self);
int QListView_protectedbase_senderSignalIndex(const VirtualQListView* self);
int QListView_protectedbase_receivers(const VirtualQListView* self, const char* signal);
bool QListView_protectedbase_isSignalConnected(const VirtualQListView* self, QMetaMethod* signal);

const QMetaObject* QListView_staticMetaObject();
void QListView_delete(QListView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
