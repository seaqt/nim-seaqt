#pragma once
#ifndef SEAQT_QTGUI_GEN_QSTANDARDITEMMODEL_H
#define SEAQT_QTGUI_GEN_QSTANDARDITEMMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QBrush;
class QChildEvent;
class QDataStream;
class QEvent;
class QFont;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QObject;
class QSize;
class QStandardItem;
class QStandardItemModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QStandardItem QStandardItem;
typedef struct QStandardItemModel QStandardItemModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQStandardItem VirtualQStandardItem;
typedef struct QStandardItem_VTable{
	void (*destructor)(VirtualQStandardItem* self);
	QVariant* (*data)(const VirtualQStandardItem* self, int role);
	void (*setData)(VirtualQStandardItem* self, QVariant* value, int role);
	QStandardItem* (*clone)(const VirtualQStandardItem* self);
	int (*type)(const VirtualQStandardItem* self);
	void (*read)(VirtualQStandardItem* self, QDataStream* in);
	void (*write)(const VirtualQStandardItem* self, QDataStream* out);
	bool (*operatorLesser)(const VirtualQStandardItem* self, QStandardItem* other);
}QStandardItem_VTable;

const QStandardItem_VTable* QStandardItem_vtbl(const VirtualQStandardItem* self);
void* QStandardItem_vdata(const VirtualQStandardItem* self);
void QStandardItem_setVdata(VirtualQStandardItem* self, void* vdata);

VirtualQStandardItem* QStandardItem_new(const QStandardItem_VTable* vtbl, void* vdata);
VirtualQStandardItem* QStandardItem_new2(const QStandardItem_VTable* vtbl, void* vdata, struct miqt_string text);
VirtualQStandardItem* QStandardItem_new3(const QStandardItem_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text);
VirtualQStandardItem* QStandardItem_new4(const QStandardItem_VTable* vtbl, void* vdata, int rows);
VirtualQStandardItem* QStandardItem_new5(const QStandardItem_VTable* vtbl, void* vdata, int rows, int columns);

QVariant* QStandardItem_data(const QStandardItem* self, int role);
void QStandardItem_setData(QStandardItem* self, QVariant* value, int role);
void QStandardItem_clearData(QStandardItem* self);
struct miqt_string QStandardItem_text(const QStandardItem* self);
void QStandardItem_setText(QStandardItem* self, struct miqt_string text);
QIcon* QStandardItem_icon(const QStandardItem* self);
void QStandardItem_setIcon(QStandardItem* self, QIcon* icon);
struct miqt_string QStandardItem_toolTip(const QStandardItem* self);
void QStandardItem_setToolTip(QStandardItem* self, struct miqt_string toolTip);
struct miqt_string QStandardItem_statusTip(const QStandardItem* self);
void QStandardItem_setStatusTip(QStandardItem* self, struct miqt_string statusTip);
struct miqt_string QStandardItem_whatsThis(const QStandardItem* self);
void QStandardItem_setWhatsThis(QStandardItem* self, struct miqt_string whatsThis);
QSize* QStandardItem_sizeHint(const QStandardItem* self);
void QStandardItem_setSizeHint(QStandardItem* self, QSize* sizeHint);
QFont* QStandardItem_font(const QStandardItem* self);
void QStandardItem_setFont(QStandardItem* self, QFont* font);
int QStandardItem_textAlignment(const QStandardItem* self);
void QStandardItem_setTextAlignment(QStandardItem* self, int textAlignment);
QBrush* QStandardItem_background(const QStandardItem* self);
void QStandardItem_setBackground(QStandardItem* self, QBrush* brush);
QBrush* QStandardItem_foreground(const QStandardItem* self);
void QStandardItem_setForeground(QStandardItem* self, QBrush* brush);
int QStandardItem_checkState(const QStandardItem* self);
void QStandardItem_setCheckState(QStandardItem* self, int checkState);
struct miqt_string QStandardItem_accessibleText(const QStandardItem* self);
void QStandardItem_setAccessibleText(QStandardItem* self, struct miqt_string accessibleText);
struct miqt_string QStandardItem_accessibleDescription(const QStandardItem* self);
void QStandardItem_setAccessibleDescription(QStandardItem* self, struct miqt_string accessibleDescription);
int QStandardItem_flags(const QStandardItem* self);
void QStandardItem_setFlags(QStandardItem* self, int flags);
bool QStandardItem_isEnabled(const QStandardItem* self);
void QStandardItem_setEnabled(QStandardItem* self, bool enabled);
bool QStandardItem_isEditable(const QStandardItem* self);
void QStandardItem_setEditable(QStandardItem* self, bool editable);
bool QStandardItem_isSelectable(const QStandardItem* self);
void QStandardItem_setSelectable(QStandardItem* self, bool selectable);
bool QStandardItem_isCheckable(const QStandardItem* self);
void QStandardItem_setCheckable(QStandardItem* self, bool checkable);
bool QStandardItem_isAutoTristate(const QStandardItem* self);
void QStandardItem_setAutoTristate(QStandardItem* self, bool tristate);
bool QStandardItem_isUserTristate(const QStandardItem* self);
void QStandardItem_setUserTristate(QStandardItem* self, bool tristate);
bool QStandardItem_isTristate(const QStandardItem* self);
void QStandardItem_setTristate(QStandardItem* self, bool tristate);
bool QStandardItem_isDragEnabled(const QStandardItem* self);
void QStandardItem_setDragEnabled(QStandardItem* self, bool dragEnabled);
bool QStandardItem_isDropEnabled(const QStandardItem* self);
void QStandardItem_setDropEnabled(QStandardItem* self, bool dropEnabled);
QStandardItem* QStandardItem_parent(const QStandardItem* self);
int QStandardItem_row(const QStandardItem* self);
int QStandardItem_column(const QStandardItem* self);
QModelIndex* QStandardItem_index(const QStandardItem* self);
QStandardItemModel* QStandardItem_model(const QStandardItem* self);
int QStandardItem_rowCount(const QStandardItem* self);
void QStandardItem_setRowCount(QStandardItem* self, int rows);
int QStandardItem_columnCount(const QStandardItem* self);
void QStandardItem_setColumnCount(QStandardItem* self, int columns);
bool QStandardItem_hasChildren(const QStandardItem* self);
QStandardItem* QStandardItem_child(const QStandardItem* self, int row);
void QStandardItem_setChild(QStandardItem* self, int row, int column, QStandardItem* item);
void QStandardItem_setChild2(QStandardItem* self, int row, QStandardItem* item);
void QStandardItem_insertRow(QStandardItem* self, int row, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_insertColumn(QStandardItem* self, int column, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_insertRows(QStandardItem* self, int row, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_insertRows2(QStandardItem* self, int row, int count);
void QStandardItem_insertColumns(QStandardItem* self, int column, int count);
void QStandardItem_removeRow(QStandardItem* self, int row);
void QStandardItem_removeColumn(QStandardItem* self, int column);
void QStandardItem_removeRows(QStandardItem* self, int row, int count);
void QStandardItem_removeColumns(QStandardItem* self, int column, int count);
void QStandardItem_appendRow(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_appendRows(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_appendColumn(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items);
void QStandardItem_insertRow2(QStandardItem* self, int row, QStandardItem* item);
void QStandardItem_appendRowWithItem(QStandardItem* self, QStandardItem* item);
QStandardItem* QStandardItem_takeChild(QStandardItem* self, int row);
struct miqt_array /* of QStandardItem* */  QStandardItem_takeRow(QStandardItem* self, int row);
struct miqt_array /* of QStandardItem* */  QStandardItem_takeColumn(QStandardItem* self, int column);
void QStandardItem_sortChildren(QStandardItem* self, int column);
QStandardItem* QStandardItem_clone(const QStandardItem* self);
int QStandardItem_type(const QStandardItem* self);
void QStandardItem_read(QStandardItem* self, QDataStream* in);
void QStandardItem_write(const QStandardItem* self, QDataStream* out);
bool QStandardItem_operatorLesser(const QStandardItem* self, QStandardItem* other);
QStandardItem* QStandardItem_child2(const QStandardItem* self, int row, int column);
QStandardItem* QStandardItem_takeChild2(QStandardItem* self, int row, int column);
void QStandardItem_sortChildren2(QStandardItem* self, int column, int order);

QVariant* QStandardItem_virtualbase_data(const VirtualQStandardItem* self, int role);
void QStandardItem_virtualbase_setData(VirtualQStandardItem* self, QVariant* value, int role);
QStandardItem* QStandardItem_virtualbase_clone(const VirtualQStandardItem* self);
int QStandardItem_virtualbase_type(const VirtualQStandardItem* self);
void QStandardItem_virtualbase_read(VirtualQStandardItem* self, QDataStream* in);
void QStandardItem_virtualbase_write(const VirtualQStandardItem* self, QDataStream* out);
bool QStandardItem_virtualbase_operatorLesser(const VirtualQStandardItem* self, QStandardItem* other);

void QStandardItem_protectedbase_emitDataChanged(VirtualQStandardItem* self);

void QStandardItem_delete(QStandardItem* self);

typedef struct VirtualQStandardItemModel VirtualQStandardItemModel;
typedef struct QStandardItemModel_VTable{
	void (*destructor)(VirtualQStandardItemModel* self);
	QMetaObject* (*metaObject)(const VirtualQStandardItemModel* self);
	void* (*metacast)(VirtualQStandardItemModel* self, const char* param1);
	int (*metacall)(VirtualQStandardItemModel* self, int param1, int param2, void** param3);
	QModelIndex* (*index)(const VirtualQStandardItemModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQStandardItemModel* self, QModelIndex* child);
	int (*rowCount)(const VirtualQStandardItemModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQStandardItemModel* self, QModelIndex* parent);
	bool (*hasChildren)(const VirtualQStandardItemModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQStandardItemModel* self, int row, int column, QModelIndex* idx);
	QVariant* (*data)(const VirtualQStandardItemModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQStandardItemModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQStandardItemModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQStandardItemModel* self, int section, int orientation, QVariant* value, int role);
	bool (*insertRows)(VirtualQStandardItemModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQStandardItemModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQStandardItemModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQStandardItemModel* self, int column, int count, QModelIndex* parent);
	int (*flags)(const VirtualQStandardItemModel* self, QModelIndex* index);
	int (*supportedDropActions)(const VirtualQStandardItemModel* self);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQStandardItemModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQStandardItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	void (*sort)(VirtualQStandardItemModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQStandardItemModel* self);
	QMimeData* (*mimeData)(const VirtualQStandardItemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(VirtualQStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*canDropMimeData)(const VirtualQStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(const VirtualQStandardItemModel* self);
	bool (*moveRows)(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQStandardItemModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQStandardItemModel* self, QModelIndex* parent);
	QModelIndex* (*buddy)(const VirtualQStandardItemModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQStandardItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQStandardItemModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQStandardItemModel* self);
	bool (*submit)(VirtualQStandardItemModel* self);
	void (*revert)(VirtualQStandardItemModel* self);
	bool (*event)(VirtualQStandardItemModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQStandardItemModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStandardItemModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStandardItemModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQStandardItemModel* self, QEvent* event);
	void (*connectNotify)(VirtualQStandardItemModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStandardItemModel* self, QMetaMethod* signal);
}QStandardItemModel_VTable;

const QStandardItemModel_VTable* QStandardItemModel_vtbl(const VirtualQStandardItemModel* self);
void* QStandardItemModel_vdata(const VirtualQStandardItemModel* self);
void QStandardItemModel_setVdata(VirtualQStandardItemModel* self, void* vdata);

VirtualQStandardItemModel* QStandardItemModel_new(const QStandardItemModel_VTable* vtbl, void* vdata);
VirtualQStandardItemModel* QStandardItemModel_new2(const QStandardItemModel_VTable* vtbl, void* vdata, int rows, int columns);
VirtualQStandardItemModel* QStandardItemModel_new3(const QStandardItemModel_VTable* vtbl, void* vdata, QObject* parent);
VirtualQStandardItemModel* QStandardItemModel_new4(const QStandardItemModel_VTable* vtbl, void* vdata, int rows, int columns, QObject* parent);

void QStandardItemModel_virtbase(QStandardItemModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QStandardItemModel_metaObject(const QStandardItemModel* self);
void* QStandardItemModel_metacast(QStandardItemModel* self, const char* param1);
int QStandardItemModel_metacall(QStandardItemModel* self, int param1, int param2, void** param3);
struct miqt_string QStandardItemModel_tr(const char* s);
struct miqt_string QStandardItemModel_trUtf8(const char* s);
void QStandardItemModel_setItemRoleNames(QStandardItemModel* self, struct miqt_map /* of int to struct miqt_string */  roleNames);
QModelIndex* QStandardItemModel_index(const QStandardItemModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QStandardItemModel_parent(const QStandardItemModel* self, QModelIndex* child);
int QStandardItemModel_rowCount(const QStandardItemModel* self, QModelIndex* parent);
int QStandardItemModel_columnCount(const QStandardItemModel* self, QModelIndex* parent);
bool QStandardItemModel_hasChildren(const QStandardItemModel* self, QModelIndex* parent);
QModelIndex* QStandardItemModel_sibling(const QStandardItemModel* self, int row, int column, QModelIndex* idx);
QVariant* QStandardItemModel_data(const QStandardItemModel* self, QModelIndex* index, int role);
bool QStandardItemModel_setData(QStandardItemModel* self, QModelIndex* index, QVariant* value, int role);
bool QStandardItemModel_clearItemData(QStandardItemModel* self, QModelIndex* index);
QVariant* QStandardItemModel_headerData(const QStandardItemModel* self, int section, int orientation, int role);
bool QStandardItemModel_setHeaderData(QStandardItemModel* self, int section, int orientation, QVariant* value, int role);
bool QStandardItemModel_insertRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
bool QStandardItemModel_insertColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
bool QStandardItemModel_removeRows(QStandardItemModel* self, int row, int count, QModelIndex* parent);
bool QStandardItemModel_removeColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent);
int QStandardItemModel_flags(const QStandardItemModel* self, QModelIndex* index);
int QStandardItemModel_supportedDropActions(const QStandardItemModel* self);
struct miqt_map /* of int to QVariant* */  QStandardItemModel_itemData(const QStandardItemModel* self, QModelIndex* index);
bool QStandardItemModel_setItemData(QStandardItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStandardItemModel_clear(QStandardItemModel* self);
void QStandardItemModel_sort(QStandardItemModel* self, int column, int order);
QStandardItem* QStandardItemModel_itemFromIndex(const QStandardItemModel* self, QModelIndex* index);
QModelIndex* QStandardItemModel_indexFromItem(const QStandardItemModel* self, QStandardItem* item);
QStandardItem* QStandardItemModel_item(const QStandardItemModel* self, int row);
void QStandardItemModel_setItem(QStandardItemModel* self, int row, int column, QStandardItem* item);
void QStandardItemModel_setItem2(QStandardItemModel* self, int row, QStandardItem* item);
QStandardItem* QStandardItemModel_invisibleRootItem(const QStandardItemModel* self);
QStandardItem* QStandardItemModel_horizontalHeaderItem(const QStandardItemModel* self, int column);
void QStandardItemModel_setHorizontalHeaderItem(QStandardItemModel* self, int column, QStandardItem* item);
QStandardItem* QStandardItemModel_verticalHeaderItem(const QStandardItemModel* self, int row);
void QStandardItemModel_setVerticalHeaderItem(QStandardItemModel* self, int row, QStandardItem* item);
void QStandardItemModel_setHorizontalHeaderLabels(QStandardItemModel* self, struct miqt_array /* of struct miqt_string */  labels);
void QStandardItemModel_setVerticalHeaderLabels(QStandardItemModel* self, struct miqt_array /* of struct miqt_string */  labels);
void QStandardItemModel_setRowCount(QStandardItemModel* self, int rows);
void QStandardItemModel_setColumnCount(QStandardItemModel* self, int columns);
void QStandardItemModel_appendRow(QStandardItemModel* self, struct miqt_array /* of QStandardItem* */  items);
void QStandardItemModel_appendColumn(QStandardItemModel* self, struct miqt_array /* of QStandardItem* */  items);
void QStandardItemModel_appendRowWithItem(QStandardItemModel* self, QStandardItem* item);
void QStandardItemModel_insertRow(QStandardItemModel* self, int row, struct miqt_array /* of QStandardItem* */  items);
void QStandardItemModel_insertColumn(QStandardItemModel* self, int column, struct miqt_array /* of QStandardItem* */  items);
void QStandardItemModel_insertRow2(QStandardItemModel* self, int row, QStandardItem* item);
bool QStandardItemModel_insertRowWithRow(QStandardItemModel* self, int row);
bool QStandardItemModel_insertColumnWithColumn(QStandardItemModel* self, int column);
QStandardItem* QStandardItemModel_takeItem(QStandardItemModel* self, int row);
struct miqt_array /* of QStandardItem* */  QStandardItemModel_takeRow(QStandardItemModel* self, int row);
struct miqt_array /* of QStandardItem* */  QStandardItemModel_takeColumn(QStandardItemModel* self, int column);
QStandardItem* QStandardItemModel_takeHorizontalHeaderItem(QStandardItemModel* self, int column);
QStandardItem* QStandardItemModel_takeVerticalHeaderItem(QStandardItemModel* self, int row);
QStandardItem* QStandardItemModel_itemPrototype(const QStandardItemModel* self);
void QStandardItemModel_setItemPrototype(QStandardItemModel* self, QStandardItem* item);
struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems(const QStandardItemModel* self, struct miqt_string text);
int QStandardItemModel_sortRole(const QStandardItemModel* self);
void QStandardItemModel_setSortRole(QStandardItemModel* self, int role);
struct miqt_array /* of struct miqt_string */  QStandardItemModel_mimeTypes(const QStandardItemModel* self);
QMimeData* QStandardItemModel_mimeData(const QStandardItemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QStandardItemModel_dropMimeData(QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
void QStandardItemModel_itemChanged(QStandardItemModel* self, QStandardItem* item);
void QStandardItemModel_connect_itemChanged(VirtualQStandardItemModel* self, intptr_t slot, void (*callback)(intptr_t, QStandardItem*), void (*release)(intptr_t));
struct miqt_string QStandardItemModel_tr2(const char* s, const char* c);
struct miqt_string QStandardItemModel_tr3(const char* s, const char* c, int n);
struct miqt_string QStandardItemModel_trUtf82(const char* s, const char* c);
struct miqt_string QStandardItemModel_trUtf83(const char* s, const char* c, int n);
QStandardItem* QStandardItemModel_item2(const QStandardItemModel* self, int row, int column);
bool QStandardItemModel_insertRow22(QStandardItemModel* self, int row, QModelIndex* parent);
bool QStandardItemModel_insertColumn2(QStandardItemModel* self, int column, QModelIndex* parent);
QStandardItem* QStandardItemModel_takeItem2(QStandardItemModel* self, int row, int column);
struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems2(const QStandardItemModel* self, struct miqt_string text, int flags);
struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems3(const QStandardItemModel* self, struct miqt_string text, int flags, int column);

QMetaObject* QStandardItemModel_virtualbase_metaObject(const VirtualQStandardItemModel* self);
void* QStandardItemModel_virtualbase_metacast(VirtualQStandardItemModel* self, const char* param1);
int QStandardItemModel_virtualbase_metacall(VirtualQStandardItemModel* self, int param1, int param2, void** param3);
QModelIndex* QStandardItemModel_virtualbase_index(const VirtualQStandardItemModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QStandardItemModel_virtualbase_parent(const VirtualQStandardItemModel* self, QModelIndex* child);
int QStandardItemModel_virtualbase_rowCount(const VirtualQStandardItemModel* self, QModelIndex* parent);
int QStandardItemModel_virtualbase_columnCount(const VirtualQStandardItemModel* self, QModelIndex* parent);
bool QStandardItemModel_virtualbase_hasChildren(const VirtualQStandardItemModel* self, QModelIndex* parent);
QModelIndex* QStandardItemModel_virtualbase_sibling(const VirtualQStandardItemModel* self, int row, int column, QModelIndex* idx);
QVariant* QStandardItemModel_virtualbase_data(const VirtualQStandardItemModel* self, QModelIndex* index, int role);
bool QStandardItemModel_virtualbase_setData(VirtualQStandardItemModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QStandardItemModel_virtualbase_headerData(const VirtualQStandardItemModel* self, int section, int orientation, int role);
bool QStandardItemModel_virtualbase_setHeaderData(VirtualQStandardItemModel* self, int section, int orientation, QVariant* value, int role);
bool QStandardItemModel_virtualbase_insertRows(VirtualQStandardItemModel* self, int row, int count, QModelIndex* parent);
bool QStandardItemModel_virtualbase_insertColumns(VirtualQStandardItemModel* self, int column, int count, QModelIndex* parent);
bool QStandardItemModel_virtualbase_removeRows(VirtualQStandardItemModel* self, int row, int count, QModelIndex* parent);
bool QStandardItemModel_virtualbase_removeColumns(VirtualQStandardItemModel* self, int column, int count, QModelIndex* parent);
int QStandardItemModel_virtualbase_flags(const VirtualQStandardItemModel* self, QModelIndex* index);
int QStandardItemModel_virtualbase_supportedDropActions(const VirtualQStandardItemModel* self);
struct miqt_map /* of int to QVariant* */  QStandardItemModel_virtualbase_itemData(const VirtualQStandardItemModel* self, QModelIndex* index);
bool QStandardItemModel_virtualbase_setItemData(VirtualQStandardItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStandardItemModel_virtualbase_sort(VirtualQStandardItemModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QStandardItemModel_virtualbase_mimeTypes(const VirtualQStandardItemModel* self);
QMimeData* QStandardItemModel_virtualbase_mimeData(const VirtualQStandardItemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QStandardItemModel_virtualbase_dropMimeData(VirtualQStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QStandardItemModel_virtualbase_canDropMimeData(const VirtualQStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QStandardItemModel_virtualbase_supportedDragActions(const VirtualQStandardItemModel* self);
bool QStandardItemModel_virtualbase_moveRows(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QStandardItemModel_virtualbase_moveColumns(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QStandardItemModel_virtualbase_fetchMore(VirtualQStandardItemModel* self, QModelIndex* parent);
bool QStandardItemModel_virtualbase_canFetchMore(const VirtualQStandardItemModel* self, QModelIndex* parent);
QModelIndex* QStandardItemModel_virtualbase_buddy(const VirtualQStandardItemModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QStandardItemModel_virtualbase_match(const VirtualQStandardItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QStandardItemModel_virtualbase_span(const VirtualQStandardItemModel* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QStandardItemModel_virtualbase_roleNames(const VirtualQStandardItemModel* self);
bool QStandardItemModel_virtualbase_submit(VirtualQStandardItemModel* self);
void QStandardItemModel_virtualbase_revert(VirtualQStandardItemModel* self);
bool QStandardItemModel_virtualbase_event(VirtualQStandardItemModel* self, QEvent* event);
bool QStandardItemModel_virtualbase_eventFilter(VirtualQStandardItemModel* self, QObject* watched, QEvent* event);
void QStandardItemModel_virtualbase_timerEvent(VirtualQStandardItemModel* self, QTimerEvent* event);
void QStandardItemModel_virtualbase_childEvent(VirtualQStandardItemModel* self, QChildEvent* event);
void QStandardItemModel_virtualbase_customEvent(VirtualQStandardItemModel* self, QEvent* event);
void QStandardItemModel_virtualbase_connectNotify(VirtualQStandardItemModel* self, QMetaMethod* signal);
void QStandardItemModel_virtualbase_disconnectNotify(VirtualQStandardItemModel* self, QMetaMethod* signal);

void QStandardItemModel_protectedbase_resetInternalData(VirtualQStandardItemModel* self);
QModelIndex* QStandardItemModel_protectedbase_createIndex(const VirtualQStandardItemModel* self, int row, int column);
void QStandardItemModel_protectedbase_encodeData(const VirtualQStandardItemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QStandardItemModel_protectedbase_decodeData(VirtualQStandardItemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QStandardItemModel_protectedbase_beginInsertRows(VirtualQStandardItemModel* self, QModelIndex* parent, int first, int last);
void QStandardItemModel_protectedbase_endInsertRows(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_beginRemoveRows(VirtualQStandardItemModel* self, QModelIndex* parent, int first, int last);
void QStandardItemModel_protectedbase_endRemoveRows(VirtualQStandardItemModel* self);
bool QStandardItemModel_protectedbase_beginMoveRows(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QStandardItemModel_protectedbase_endMoveRows(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_beginInsertColumns(VirtualQStandardItemModel* self, QModelIndex* parent, int first, int last);
void QStandardItemModel_protectedbase_endInsertColumns(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_beginRemoveColumns(VirtualQStandardItemModel* self, QModelIndex* parent, int first, int last);
void QStandardItemModel_protectedbase_endRemoveColumns(VirtualQStandardItemModel* self);
bool QStandardItemModel_protectedbase_beginMoveColumns(VirtualQStandardItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QStandardItemModel_protectedbase_endMoveColumns(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_beginResetModel(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_endResetModel(VirtualQStandardItemModel* self);
void QStandardItemModel_protectedbase_changePersistentIndex(VirtualQStandardItemModel* self, QModelIndex* from, QModelIndex* to);
void QStandardItemModel_protectedbase_changePersistentIndexList(VirtualQStandardItemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QStandardItemModel_protectedbase_persistentIndexList(const VirtualQStandardItemModel* self);
QObject* QStandardItemModel_protectedbase_sender(const VirtualQStandardItemModel* self);
int QStandardItemModel_protectedbase_senderSignalIndex(const VirtualQStandardItemModel* self);
int QStandardItemModel_protectedbase_receivers(const VirtualQStandardItemModel* self, const char* signal);
bool QStandardItemModel_protectedbase_isSignalConnected(const VirtualQStandardItemModel* self, QMetaMethod* signal);

const QMetaObject* QStandardItemModel_staticMetaObject();
void QStandardItemModel_delete(QStandardItemModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
