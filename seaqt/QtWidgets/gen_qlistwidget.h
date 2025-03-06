#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QLISTWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QLISTWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemView;
class QAbstractScrollArea;
class QActionEvent;
class QBrush;
class QChildEvent;
class QCloseEvent;
class QColor;
class QContextMenuEvent;
class QDataStream;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QFont;
class QFrame;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
class QListView;
class QListWidget;
class QListWidgetItem;
class QMargins;
class QMetaMethod;
class QMetaObject;
class QMimeData;
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
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDataStream QDataStream;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
typedef struct QListView QListView;
typedef struct QListWidget QListWidget;
typedef struct QListWidgetItem QListWidgetItem;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
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

struct QListWidgetItem_VTable {
	void (*destructor)(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* self);
	QListWidgetItem* (*clone)(struct QListWidgetItem_VTable* vtbl, const QListWidgetItem* self);
	void (*setBackgroundColor)(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* self, QColor* color);
	QVariant* (*data)(struct QListWidgetItem_VTable* vtbl, const QListWidgetItem* self, int role);
	void (*setData)(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* self, int role, QVariant* value);
	bool (*operatorLesser)(struct QListWidgetItem_VTable* vtbl, const QListWidgetItem* self, QListWidgetItem* other);
	void (*read)(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* self, QDataStream* in);
	void (*write)(struct QListWidgetItem_VTable* vtbl, const QListWidgetItem* self, QDataStream* out);
};
QListWidgetItem* QListWidgetItem_new(struct QListWidgetItem_VTable* vtbl);
QListWidgetItem* QListWidgetItem_new2(struct QListWidgetItem_VTable* vtbl, struct miqt_string text);
QListWidgetItem* QListWidgetItem_new3(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text);
QListWidgetItem* QListWidgetItem_new4(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* other);
QListWidgetItem* QListWidgetItem_new5(struct QListWidgetItem_VTable* vtbl, QListWidget* listview);
QListWidgetItem* QListWidgetItem_new6(struct QListWidgetItem_VTable* vtbl, QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_new7(struct QListWidgetItem_VTable* vtbl, struct miqt_string text, QListWidget* listview);
QListWidgetItem* QListWidgetItem_new8(struct QListWidgetItem_VTable* vtbl, struct miqt_string text, QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_new9(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text, QListWidget* listview);
QListWidgetItem* QListWidgetItem_new10(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text, QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_clone(const QListWidgetItem* self);
QListWidget* QListWidgetItem_listWidget(const QListWidgetItem* self);
void QListWidgetItem_setSelected(QListWidgetItem* self, bool select);
bool QListWidgetItem_isSelected(const QListWidgetItem* self);
void QListWidgetItem_setHidden(QListWidgetItem* self, bool hide);
bool QListWidgetItem_isHidden(const QListWidgetItem* self);
int QListWidgetItem_flags(const QListWidgetItem* self);
void QListWidgetItem_setFlags(QListWidgetItem* self, int flags);
struct miqt_string QListWidgetItem_text(const QListWidgetItem* self);
void QListWidgetItem_setText(QListWidgetItem* self, struct miqt_string text);
QIcon* QListWidgetItem_icon(const QListWidgetItem* self);
void QListWidgetItem_setIcon(QListWidgetItem* self, QIcon* icon);
struct miqt_string QListWidgetItem_statusTip(const QListWidgetItem* self);
void QListWidgetItem_setStatusTip(QListWidgetItem* self, struct miqt_string statusTip);
struct miqt_string QListWidgetItem_toolTip(const QListWidgetItem* self);
void QListWidgetItem_setToolTip(QListWidgetItem* self, struct miqt_string toolTip);
struct miqt_string QListWidgetItem_whatsThis(const QListWidgetItem* self);
void QListWidgetItem_setWhatsThis(QListWidgetItem* self, struct miqt_string whatsThis);
QFont* QListWidgetItem_font(const QListWidgetItem* self);
void QListWidgetItem_setFont(QListWidgetItem* self, QFont* font);
int QListWidgetItem_textAlignment(const QListWidgetItem* self);
void QListWidgetItem_setTextAlignment(QListWidgetItem* self, int alignment);
QColor* QListWidgetItem_backgroundColor(const QListWidgetItem* self);
void QListWidgetItem_setBackgroundColor(QListWidgetItem* self, QColor* color);
QBrush* QListWidgetItem_background(const QListWidgetItem* self);
void QListWidgetItem_setBackground(QListWidgetItem* self, QBrush* brush);
QColor* QListWidgetItem_textColor(const QListWidgetItem* self);
void QListWidgetItem_setTextColor(QListWidgetItem* self, QColor* color);
QBrush* QListWidgetItem_foreground(const QListWidgetItem* self);
void QListWidgetItem_setForeground(QListWidgetItem* self, QBrush* brush);
int QListWidgetItem_checkState(const QListWidgetItem* self);
void QListWidgetItem_setCheckState(QListWidgetItem* self, int state);
QSize* QListWidgetItem_sizeHint(const QListWidgetItem* self);
void QListWidgetItem_setSizeHint(QListWidgetItem* self, QSize* size);
QVariant* QListWidgetItem_data(const QListWidgetItem* self, int role);
void QListWidgetItem_setData(QListWidgetItem* self, int role, QVariant* value);
bool QListWidgetItem_operatorLesser(const QListWidgetItem* self, QListWidgetItem* other);
void QListWidgetItem_read(QListWidgetItem* self, QDataStream* in);
void QListWidgetItem_write(const QListWidgetItem* self, QDataStream* out);
void QListWidgetItem_operatorAssign(QListWidgetItem* self, QListWidgetItem* other);
int QListWidgetItem_type(const QListWidgetItem* self);
QListWidgetItem* QListWidgetItem_virtualbase_clone(const void* self);
void QListWidgetItem_virtualbase_setBackgroundColor(void* self, QColor* color);
QVariant* QListWidgetItem_virtualbase_data(const void* self, int role);
void QListWidgetItem_virtualbase_setData(void* self, int role, QVariant* value);
bool QListWidgetItem_virtualbase_operatorLesser(const void* self, QListWidgetItem* other);
void QListWidgetItem_virtualbase_read(void* self, QDataStream* in);
void QListWidgetItem_virtualbase_write(const void* self, QDataStream* out);
void QListWidgetItem_delete(QListWidgetItem* self);

struct QListWidget_VTable {
	void (*destructor)(struct QListWidget_VTable* vtbl, QListWidget* self);
	QMetaObject* (*metaObject)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void* (*metacast)(struct QListWidget_VTable* vtbl, QListWidget* self, const char* param1);
	int (*metacall)(struct QListWidget_VTable* vtbl, QListWidget* self, int param1, int param2, void** param3);
	void (*setSelectionModel)(struct QListWidget_VTable* vtbl, QListWidget* self, QItemSelectionModel* selectionModel);
	void (*dropEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QDropEvent* event);
	bool (*event)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* e);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	QMimeData* (*mimeData)(struct QListWidget_VTable* vtbl, const QListWidget* self, struct miqt_array /* of QListWidgetItem* */  items);
	bool (*dropMimeData)(struct QListWidget_VTable* vtbl, QListWidget* self, int index, QMimeData* data, int action);
	int (*supportedDropActions)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	QRect* (*visualRect)(struct QListWidget_VTable* vtbl, const QListWidget* self, QModelIndex* index);
	void (*scrollTo)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* index, int hint);
	QModelIndex* (*indexAt)(struct QListWidget_VTable* vtbl, const QListWidget* self, QPoint* p);
	void (*doItemsLayout)(struct QListWidget_VTable* vtbl, QListWidget* self);
	void (*reset)(struct QListWidget_VTable* vtbl, QListWidget* self);
	void (*setRootIndex)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* index);
	void (*scrollContentsBy)(struct QListWidget_VTable* vtbl, QListWidget* self, int dx, int dy);
	void (*dataChanged)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsInserted)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* parent, int start, int end);
	void (*rowsAboutToBeRemoved)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* parent, int start, int end);
	void (*mouseMoveEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QMouseEvent* e);
	void (*wheelEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QWheelEvent* e);
	void (*timerEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QTimerEvent* e);
	void (*resizeEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QResizeEvent* e);
	void (*dragMoveEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QDragMoveEvent* e);
	void (*dragLeaveEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QDragLeaveEvent* e);
	void (*startDrag)(struct QListWidget_VTable* vtbl, QListWidget* self, int supportedActions);
	QStyleOptionViewItem* (*viewOptions)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*paintEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QPaintEvent* e);
	int (*horizontalOffset)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	int (*verticalOffset)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	QModelIndex* (*moveCursor)(struct QListWidget_VTable* vtbl, QListWidget* self, int cursorAction, int modifiers);
	void (*setSelection)(struct QListWidget_VTable* vtbl, QListWidget* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(struct QListWidget_VTable* vtbl, const QListWidget* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*updateGeometries)(struct QListWidget_VTable* vtbl, QListWidget* self);
	bool (*isIndexHidden)(struct QListWidget_VTable* vtbl, const QListWidget* self, QModelIndex* index);
	void (*selectionChanged)(struct QListWidget_VTable* vtbl, QListWidget* self, QItemSelection* selected, QItemSelection* deselected);
	void (*currentChanged)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* current, QModelIndex* previous);
	QSize* (*viewportSizeHint)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*keyboardSearch)(struct QListWidget_VTable* vtbl, QListWidget* self, struct miqt_string search);
	int (*sizeHintForRow)(struct QListWidget_VTable* vtbl, const QListWidget* self, int row);
	int (*sizeHintForColumn)(struct QListWidget_VTable* vtbl, const QListWidget* self, int column);
	QVariant* (*inputMethodQuery)(struct QListWidget_VTable* vtbl, const QListWidget* self, int query);
	void (*selectAll)(struct QListWidget_VTable* vtbl, QListWidget* self);
	void (*updateEditorData)(struct QListWidget_VTable* vtbl, QListWidget* self);
	void (*updateEditorGeometries)(struct QListWidget_VTable* vtbl, QListWidget* self);
	void (*verticalScrollbarAction)(struct QListWidget_VTable* vtbl, QListWidget* self, int action);
	void (*horizontalScrollbarAction)(struct QListWidget_VTable* vtbl, QListWidget* self, int action);
	void (*verticalScrollbarValueChanged)(struct QListWidget_VTable* vtbl, QListWidget* self, int value);
	void (*horizontalScrollbarValueChanged)(struct QListWidget_VTable* vtbl, QListWidget* self, int value);
	void (*closeEditor)(struct QListWidget_VTable* vtbl, QListWidget* self, QWidget* editor, int hint);
	void (*commitData)(struct QListWidget_VTable* vtbl, QListWidget* self, QWidget* editor);
	void (*editorDestroyed)(struct QListWidget_VTable* vtbl, QListWidget* self, QObject* editor);
	bool (*edit2)(struct QListWidget_VTable* vtbl, QListWidget* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(struct QListWidget_VTable* vtbl, const QListWidget* self, QModelIndex* index, QEvent* event);
	bool (*focusNextPrevChild)(struct QListWidget_VTable* vtbl, QListWidget* self, bool next);
	bool (*viewportEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* event);
	void (*mousePressEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QMouseEvent* event);
	void (*dragEnterEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QDragEnterEvent* event);
	void (*focusInEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QKeyEvent* event);
	void (*inputMethodEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QInputMethodEvent* event);
	bool (*eventFilter)(struct QListWidget_VTable* vtbl, QListWidget* self, QObject* object, QEvent* event);
	QSize* (*minimumSizeHint)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	QSize* (*sizeHint)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*setupViewport)(struct QListWidget_VTable* vtbl, QListWidget* self, QWidget* viewport);
	void (*contextMenuEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QContextMenuEvent* param1);
	void (*changeEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* param1);
	int (*devType)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*setVisible)(struct QListWidget_VTable* vtbl, QListWidget* self, bool visible);
	int (*heightForWidth)(struct QListWidget_VTable* vtbl, const QListWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	QPaintEngine* (*paintEngine)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*keyReleaseEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QKeyEvent* event);
	void (*enterEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* event);
	void (*leaveEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* event);
	void (*moveEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QMoveEvent* event);
	void (*closeEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QCloseEvent* event);
	void (*tabletEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QActionEvent* event);
	void (*showEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QListWidget_VTable* vtbl, const QListWidget* self, int param1);
	void (*initPainter)(struct QListWidget_VTable* vtbl, const QListWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QListWidget_VTable* vtbl, const QListWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QListWidget_VTable* vtbl, const QListWidget* self);
	void (*childEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QChildEvent* event);
	void (*customEvent)(struct QListWidget_VTable* vtbl, QListWidget* self, QEvent* event);
	void (*connectNotify)(struct QListWidget_VTable* vtbl, QListWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QListWidget_VTable* vtbl, QListWidget* self, QMetaMethod* signal);
};
QListWidget* QListWidget_new(struct QListWidget_VTable* vtbl, QWidget* parent);
QListWidget* QListWidget_new2(struct QListWidget_VTable* vtbl);
void QListWidget_virtbase(QListWidget* src, QListView** outptr_QListView);
QMetaObject* QListWidget_metaObject(const QListWidget* self);
void* QListWidget_metacast(QListWidget* self, const char* param1);
int QListWidget_metacall(QListWidget* self, int param1, int param2, void** param3);
struct miqt_string QListWidget_tr(const char* s);
struct miqt_string QListWidget_trUtf8(const char* s);
void QListWidget_setSelectionModel(QListWidget* self, QItemSelectionModel* selectionModel);
QListWidgetItem* QListWidget_item(const QListWidget* self, int row);
int QListWidget_row(const QListWidget* self, QListWidgetItem* item);
void QListWidget_insertItem(QListWidget* self, int row, QListWidgetItem* item);
void QListWidget_insertItem2(QListWidget* self, int row, struct miqt_string label);
void QListWidget_insertItems(QListWidget* self, int row, struct miqt_array /* of struct miqt_string */  labels);
void QListWidget_addItem(QListWidget* self, struct miqt_string label);
void QListWidget_addItemWithItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_addItems(QListWidget* self, struct miqt_array /* of struct miqt_string */  labels);
QListWidgetItem* QListWidget_takeItem(QListWidget* self, int row);
int QListWidget_count(const QListWidget* self);
QListWidgetItem* QListWidget_currentItem(const QListWidget* self);
void QListWidget_setCurrentItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_setCurrentItem2(QListWidget* self, QListWidgetItem* item, int command);
int QListWidget_currentRow(const QListWidget* self);
void QListWidget_setCurrentRow(QListWidget* self, int row);
void QListWidget_setCurrentRow2(QListWidget* self, int row, int command);
QListWidgetItem* QListWidget_itemAt(const QListWidget* self, QPoint* p);
QListWidgetItem* QListWidget_itemAt2(const QListWidget* self, int x, int y);
QRect* QListWidget_visualItemRect(const QListWidget* self, QListWidgetItem* item);
void QListWidget_sortItems(QListWidget* self);
void QListWidget_setSortingEnabled(QListWidget* self, bool enable);
bool QListWidget_isSortingEnabled(const QListWidget* self);
void QListWidget_editItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_openPersistentEditor(QListWidget* self, QListWidgetItem* item);
void QListWidget_closePersistentEditor(QListWidget* self, QListWidgetItem* item);
bool QListWidget_isPersistentEditorOpen(const QListWidget* self, QListWidgetItem* item);
QWidget* QListWidget_itemWidget(const QListWidget* self, QListWidgetItem* item);
void QListWidget_setItemWidget(QListWidget* self, QListWidgetItem* item, QWidget* widget);
void QListWidget_removeItemWidget(QListWidget* self, QListWidgetItem* item);
bool QListWidget_isItemSelected(const QListWidget* self, QListWidgetItem* item);
void QListWidget_setItemSelected(QListWidget* self, QListWidgetItem* item, bool select);
struct miqt_array /* of QListWidgetItem* */  QListWidget_selectedItems(const QListWidget* self);
struct miqt_array /* of QListWidgetItem* */  QListWidget_findItems(const QListWidget* self, struct miqt_string text, int flags);
bool QListWidget_isItemHidden(const QListWidget* self, QListWidgetItem* item);
void QListWidget_setItemHidden(QListWidget* self, QListWidgetItem* item, bool hide);
void QListWidget_dropEvent(QListWidget* self, QDropEvent* event);
void QListWidget_scrollToItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_clear(QListWidget* self);
void QListWidget_itemPressed(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemPressed(QListWidget* self, intptr_t slot);
void QListWidget_itemClicked(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemClicked(QListWidget* self, intptr_t slot);
void QListWidget_itemDoubleClicked(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemDoubleClicked(QListWidget* self, intptr_t slot);
void QListWidget_itemActivated(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemActivated(QListWidget* self, intptr_t slot);
void QListWidget_itemEntered(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemEntered(QListWidget* self, intptr_t slot);
void QListWidget_itemChanged(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentItemChanged(QListWidget* self, QListWidgetItem* current, QListWidgetItem* previous);
void QListWidget_connect_currentItemChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentTextChanged(QListWidget* self, struct miqt_string currentText);
void QListWidget_connect_currentTextChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentRowChanged(QListWidget* self, int currentRow);
void QListWidget_connect_currentRowChanged(QListWidget* self, intptr_t slot);
void QListWidget_itemSelectionChanged(QListWidget* self);
void QListWidget_connect_itemSelectionChanged(QListWidget* self, intptr_t slot);
bool QListWidget_event(QListWidget* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QListWidget_mimeTypes(const QListWidget* self);
QMimeData* QListWidget_mimeData(const QListWidget* self, struct miqt_array /* of QListWidgetItem* */  items);
bool QListWidget_dropMimeData(QListWidget* self, int index, QMimeData* data, int action);
int QListWidget_supportedDropActions(const QListWidget* self);
struct miqt_string QListWidget_tr2(const char* s, const char* c);
struct miqt_string QListWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QListWidget_trUtf82(const char* s, const char* c);
struct miqt_string QListWidget_trUtf83(const char* s, const char* c, int n);
void QListWidget_sortItems1(QListWidget* self, int order);
void QListWidget_scrollToItem2(QListWidget* self, QListWidgetItem* item, int hint);
QMetaObject* QListWidget_virtualbase_metaObject(const void* self);
void* QListWidget_virtualbase_metacast(void* self, const char* param1);
int QListWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QListWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
void QListWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QListWidget_virtualbase_event(void* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QListWidget_virtualbase_mimeTypes(const void* self);
QMimeData* QListWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QListWidgetItem* */  items);
bool QListWidget_virtualbase_dropMimeData(void* self, int index, QMimeData* data, int action);
int QListWidget_virtualbase_supportedDropActions(const void* self);
QRect* QListWidget_virtualbase_visualRect(const void* self, QModelIndex* index);
void QListWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
QModelIndex* QListWidget_virtualbase_indexAt(const void* self, QPoint* p);
void QListWidget_virtualbase_doItemsLayout(void* self);
void QListWidget_virtualbase_reset(void* self);
void QListWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);
void QListWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QListWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QListWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
void QListWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
void QListWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QListWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QListWidget_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QListWidget_virtualbase_timerEvent(void* self, QTimerEvent* e);
void QListWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e);
void QListWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
void QListWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
void QListWidget_virtualbase_startDrag(void* self, int supportedActions);
QStyleOptionViewItem* QListWidget_virtualbase_viewOptions(const void* self);
void QListWidget_virtualbase_paintEvent(void* self, QPaintEvent* e);
int QListWidget_virtualbase_horizontalOffset(const void* self);
int QListWidget_virtualbase_verticalOffset(const void* self);
QModelIndex* QListWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
void QListWidget_virtualbase_setSelection(void* self, QRect* rect, int command);
QRegion* QListWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QListWidget_virtualbase_selectedIndexes(const void* self);
void QListWidget_virtualbase_updateGeometries(void* self);
bool QListWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
void QListWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
void QListWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
QSize* QListWidget_virtualbase_viewportSizeHint(const void* self);
void QListWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);
int QListWidget_virtualbase_sizeHintForRow(const void* self, int row);
int QListWidget_virtualbase_sizeHintForColumn(const void* self, int column);
QVariant* QListWidget_virtualbase_inputMethodQuery(const void* self, int query);
void QListWidget_virtualbase_selectAll(void* self);
void QListWidget_virtualbase_updateEditorData(void* self);
void QListWidget_virtualbase_updateEditorGeometries(void* self);
void QListWidget_virtualbase_verticalScrollbarAction(void* self, int action);
void QListWidget_virtualbase_horizontalScrollbarAction(void* self, int action);
void QListWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);
void QListWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
void QListWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
void QListWidget_virtualbase_commitData(void* self, QWidget* editor);
void QListWidget_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QListWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
int QListWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QListWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QListWidget_virtualbase_viewportEvent(void* self, QEvent* event);
void QListWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QListWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QListWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QListWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QListWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QListWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QListWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QListWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QListWidget_virtualbase_minimumSizeHint(const void* self);
QSize* QListWidget_virtualbase_sizeHint(const void* self);
void QListWidget_virtualbase_setupViewport(void* self, QWidget* viewport);
void QListWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QListWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QListWidget_virtualbase_devType(const void* self);
void QListWidget_virtualbase_setVisible(void* self, bool visible);
int QListWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QListWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QListWidget_virtualbase_paintEngine(const void* self);
void QListWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QListWidget_virtualbase_enterEvent(void* self, QEvent* event);
void QListWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QListWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QListWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QListWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QListWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QListWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QListWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QListWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QListWidget_virtualbase_metric(const void* self, int param1);
void QListWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QListWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QListWidget_virtualbase_sharedPainter(const void* self);
void QListWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QListWidget_virtualbase_customEvent(void* self, QEvent* event);
void QListWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QListWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QListWidgetItem* */  QListWidget_protectedbase_items(bool* _dynamic_cast_ok, const void* self, QMimeData* data);
QModelIndex* QListWidget_protectedbase_indexFromItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item);
QModelIndex* QListWidget_protectedbase_indexFromItemWithItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item);
QListWidgetItem* QListWidget_protectedbase_itemFromIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
void QListWidget_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height);
QSize* QListWidget_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self);
QRect* QListWidget_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
void QListWidget_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index);
void QListWidget_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QListWidget_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
void QListWidget_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QListWidget_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
int QListWidget_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
void QListWidget_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
void QListWidget_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
void QListWidget_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
QPoint* QListWidget_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
void QListWidget_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
int QListWidget_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
void QListWidget_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QListWidget_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QListWidget_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QListWidget_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QListWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QListWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QListWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QListWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QListWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QListWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QListWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QListWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QListWidget_staticMetaObject();
void QListWidget_delete(QListWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
