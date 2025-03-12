#pragma once
#ifndef SEAQT_QTCORE_GEN_QSORTFILTERPROXYMODEL_H
#define SEAQT_QTCORE_GEN_QSORTFILTERPROXYMODEL_H

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
class QAbstractProxyModel;
class QChildEvent;
class QDataStream;
class QEvent;
class QItemSelection;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QObject;
class QRegExp;
class QRegularExpression;
class QSize;
class QSortFilterProxyModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractProxyModel QAbstractProxyModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QRegExp QRegExp;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSize QSize;
typedef struct QSortFilterProxyModel QSortFilterProxyModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSortFilterProxyModel VirtualQSortFilterProxyModel;
typedef struct QSortFilterProxyModel_VTable{
	void (*destructor)(VirtualQSortFilterProxyModel* self);
	QMetaObject* (*metaObject)(const VirtualQSortFilterProxyModel* self);
	void* (*metacast)(VirtualQSortFilterProxyModel* self, const char* param1);
	int (*metacall)(VirtualQSortFilterProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(VirtualQSortFilterProxyModel* self, QAbstractItemModel* sourceModel);
	QModelIndex* (*mapToSource)(const VirtualQSortFilterProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*mapFromSource)(const VirtualQSortFilterProxyModel* self, QModelIndex* sourceIndex);
	QItemSelection* (*mapSelectionToSource)(const VirtualQSortFilterProxyModel* self, QItemSelection* proxySelection);
	QItemSelection* (*mapSelectionFromSource)(const VirtualQSortFilterProxyModel* self, QItemSelection* sourceSelection);
	bool (*filterAcceptsRow)(const VirtualQSortFilterProxyModel* self, int source_row, QModelIndex* source_parent);
	bool (*filterAcceptsColumn)(const VirtualQSortFilterProxyModel* self, int source_column, QModelIndex* source_parent);
	bool (*lessThan)(const VirtualQSortFilterProxyModel* self, QModelIndex* source_left, QModelIndex* source_right);
	QModelIndex* (*index)(const VirtualQSortFilterProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQSortFilterProxyModel* self, QModelIndex* child);
	QModelIndex* (*sibling)(const VirtualQSortFilterProxyModel* self, int row, int column, QModelIndex* idx);
	int (*rowCount)(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
	bool (*hasChildren)(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQSortFilterProxyModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQSortFilterProxyModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role);
	QMimeData* (*mimeData)(const VirtualQSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(VirtualQSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*insertRows)(VirtualQSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
	void (*fetchMore)(VirtualQSortFilterProxyModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
	int (*flags)(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
	QModelIndex* (*buddy)(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
	void (*sort)(VirtualQSortFilterProxyModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQSortFilterProxyModel* self);
	int (*supportedDropActions)(const VirtualQSortFilterProxyModel* self);
	bool (*submit)(VirtualQSortFilterProxyModel* self);
	void (*revert)(VirtualQSortFilterProxyModel* self);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQSortFilterProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*canDropMimeData)(const VirtualQSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(const VirtualQSortFilterProxyModel* self);
	bool (*moveRows)(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQSortFilterProxyModel* self);
	bool (*event)(VirtualQSortFilterProxyModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQSortFilterProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSortFilterProxyModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSortFilterProxyModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQSortFilterProxyModel* self, QEvent* event);
	void (*connectNotify)(VirtualQSortFilterProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSortFilterProxyModel* self, QMetaMethod* signal);
}QSortFilterProxyModel_VTable;

const QSortFilterProxyModel_VTable* QSortFilterProxyModel_vtbl(const VirtualQSortFilterProxyModel* self);
void* QSortFilterProxyModel_vdata(const VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_setVdata(VirtualQSortFilterProxyModel* self, void* vdata);

VirtualQSortFilterProxyModel* QSortFilterProxyModel_new(const QSortFilterProxyModel_VTable* vtbl, void* vdata);
VirtualQSortFilterProxyModel* QSortFilterProxyModel_new2(const QSortFilterProxyModel_VTable* vtbl, void* vdata, QObject* parent);

void QSortFilterProxyModel_virtbase(QSortFilterProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel);
QMetaObject* QSortFilterProxyModel_metaObject(const QSortFilterProxyModel* self);
void* QSortFilterProxyModel_metacast(QSortFilterProxyModel* self, const char* param1);
int QSortFilterProxyModel_metacall(QSortFilterProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QSortFilterProxyModel_tr(const char* s);
struct miqt_string QSortFilterProxyModel_trUtf8(const char* s);
void QSortFilterProxyModel_setSourceModel(QSortFilterProxyModel* self, QAbstractItemModel* sourceModel);
QModelIndex* QSortFilterProxyModel_mapToSource(const QSortFilterProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QSortFilterProxyModel_mapFromSource(const QSortFilterProxyModel* self, QModelIndex* sourceIndex);
QItemSelection* QSortFilterProxyModel_mapSelectionToSource(const QSortFilterProxyModel* self, QItemSelection* proxySelection);
QItemSelection* QSortFilterProxyModel_mapSelectionFromSource(const QSortFilterProxyModel* self, QItemSelection* sourceSelection);
QRegExp* QSortFilterProxyModel_filterRegExp(const QSortFilterProxyModel* self);
QRegularExpression* QSortFilterProxyModel_filterRegularExpression(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_filterKeyColumn(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterKeyColumn(QSortFilterProxyModel* self, int column);
int QSortFilterProxyModel_filterCaseSensitivity(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterCaseSensitivity(QSortFilterProxyModel* self, int cs);
int QSortFilterProxyModel_sortCaseSensitivity(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortCaseSensitivity(QSortFilterProxyModel* self, int cs);
bool QSortFilterProxyModel_isSortLocaleAware(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortLocaleAware(QSortFilterProxyModel* self, bool on);
int QSortFilterProxyModel_sortColumn(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_sortOrder(const QSortFilterProxyModel* self);
bool QSortFilterProxyModel_dynamicSortFilter(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setDynamicSortFilter(QSortFilterProxyModel* self, bool enable);
int QSortFilterProxyModel_sortRole(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortRole(QSortFilterProxyModel* self, int role);
int QSortFilterProxyModel_filterRole(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterRole(QSortFilterProxyModel* self, int role);
bool QSortFilterProxyModel_isRecursiveFilteringEnabled(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setRecursiveFilteringEnabled(QSortFilterProxyModel* self, bool recursive);
void QSortFilterProxyModel_setFilterRegExp(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_setFilterRegExpWithRegExp(QSortFilterProxyModel* self, QRegExp* regExp);
void QSortFilterProxyModel_setFilterRegularExpression(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(QSortFilterProxyModel* self, QRegularExpression* regularExpression);
void QSortFilterProxyModel_setFilterWildcard(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_setFilterFixedString(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_clear(QSortFilterProxyModel* self);
void QSortFilterProxyModel_invalidate(QSortFilterProxyModel* self);
bool QSortFilterProxyModel_filterAcceptsRow(const QSortFilterProxyModel* self, int source_row, QModelIndex* source_parent);
bool QSortFilterProxyModel_filterAcceptsColumn(const QSortFilterProxyModel* self, int source_column, QModelIndex* source_parent);
bool QSortFilterProxyModel_lessThan(const QSortFilterProxyModel* self, QModelIndex* source_left, QModelIndex* source_right);
QModelIndex* QSortFilterProxyModel_index(const QSortFilterProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSortFilterProxyModel_parent(const QSortFilterProxyModel* self, QModelIndex* child);
QModelIndex* QSortFilterProxyModel_sibling(const QSortFilterProxyModel* self, int row, int column, QModelIndex* idx);
int QSortFilterProxyModel_rowCount(const QSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_columnCount(const QSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_hasChildren(const QSortFilterProxyModel* self, QModelIndex* parent);
QVariant* QSortFilterProxyModel_data(const QSortFilterProxyModel* self, QModelIndex* index, int role);
bool QSortFilterProxyModel_setData(QSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSortFilterProxyModel_headerData(const QSortFilterProxyModel* self, int section, int orientation, int role);
bool QSortFilterProxyModel_setHeaderData(QSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role);
QMimeData* QSortFilterProxyModel_mimeData(const QSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QSortFilterProxyModel_dropMimeData(QSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QSortFilterProxyModel_insertRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_insertColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
bool QSortFilterProxyModel_removeRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_removeColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
void QSortFilterProxyModel_fetchMore(QSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_canFetchMore(const QSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_flags(const QSortFilterProxyModel* self, QModelIndex* index);
QModelIndex* QSortFilterProxyModel_buddy(const QSortFilterProxyModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_match(const QSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSortFilterProxyModel_span(const QSortFilterProxyModel* self, QModelIndex* index);
void QSortFilterProxyModel_sort(QSortFilterProxyModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_mimeTypes(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_supportedDropActions(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_dynamicSortFilterChanged(QSortFilterProxyModel* self, bool dynamicSortFilter);
void QSortFilterProxyModel_connect_dynamicSortFilterChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QSortFilterProxyModel_filterCaseSensitivityChanged(QSortFilterProxyModel* self, int filterCaseSensitivity);
void QSortFilterProxyModel_connect_filterCaseSensitivityChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSortFilterProxyModel_sortCaseSensitivityChanged(QSortFilterProxyModel* self, int sortCaseSensitivity);
void QSortFilterProxyModel_connect_sortCaseSensitivityChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSortFilterProxyModel_sortLocaleAwareChanged(QSortFilterProxyModel* self, bool sortLocaleAware);
void QSortFilterProxyModel_connect_sortLocaleAwareChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QSortFilterProxyModel_sortRoleChanged(QSortFilterProxyModel* self, int sortRole);
void QSortFilterProxyModel_connect_sortRoleChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSortFilterProxyModel_filterRoleChanged(QSortFilterProxyModel* self, int filterRole);
void QSortFilterProxyModel_connect_filterRoleChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QSortFilterProxyModel_recursiveFilteringEnabledChanged(QSortFilterProxyModel* self, bool recursiveFilteringEnabled);
void QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(VirtualQSortFilterProxyModel* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
struct miqt_string QSortFilterProxyModel_tr2(const char* s, const char* c);
struct miqt_string QSortFilterProxyModel_tr3(const char* s, const char* c, int n);
struct miqt_string QSortFilterProxyModel_trUtf82(const char* s, const char* c);
struct miqt_string QSortFilterProxyModel_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSortFilterProxyModel_virtualbase_metaObject(const VirtualQSortFilterProxyModel* self);
void* QSortFilterProxyModel_virtualbase_metacast(VirtualQSortFilterProxyModel* self, const char* param1);
int QSortFilterProxyModel_virtualbase_metacall(VirtualQSortFilterProxyModel* self, int param1, int param2, void** param3);
void QSortFilterProxyModel_virtualbase_setSourceModel(VirtualQSortFilterProxyModel* self, QAbstractItemModel* sourceModel);
QModelIndex* QSortFilterProxyModel_virtualbase_mapToSource(const VirtualQSortFilterProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QSortFilterProxyModel_virtualbase_mapFromSource(const VirtualQSortFilterProxyModel* self, QModelIndex* sourceIndex);
QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionToSource(const VirtualQSortFilterProxyModel* self, QItemSelection* proxySelection);
QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionFromSource(const VirtualQSortFilterProxyModel* self, QItemSelection* sourceSelection);
bool QSortFilterProxyModel_virtualbase_filterAcceptsRow(const VirtualQSortFilterProxyModel* self, int source_row, QModelIndex* source_parent);
bool QSortFilterProxyModel_virtualbase_filterAcceptsColumn(const VirtualQSortFilterProxyModel* self, int source_column, QModelIndex* source_parent);
bool QSortFilterProxyModel_virtualbase_lessThan(const VirtualQSortFilterProxyModel* self, QModelIndex* source_left, QModelIndex* source_right);
QModelIndex* QSortFilterProxyModel_virtualbase_index(const VirtualQSortFilterProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSortFilterProxyModel_virtualbase_parent(const VirtualQSortFilterProxyModel* self, QModelIndex* child);
QModelIndex* QSortFilterProxyModel_virtualbase_sibling(const VirtualQSortFilterProxyModel* self, int row, int column, QModelIndex* idx);
int QSortFilterProxyModel_virtualbase_rowCount(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_columnCount(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_hasChildren(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
QVariant* QSortFilterProxyModel_virtualbase_data(const VirtualQSortFilterProxyModel* self, QModelIndex* index, int role);
bool QSortFilterProxyModel_virtualbase_setData(VirtualQSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSortFilterProxyModel_virtualbase_headerData(const VirtualQSortFilterProxyModel* self, int section, int orientation, int role);
bool QSortFilterProxyModel_virtualbase_setHeaderData(VirtualQSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role);
QMimeData* QSortFilterProxyModel_virtualbase_mimeData(const VirtualQSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QSortFilterProxyModel_virtualbase_dropMimeData(VirtualQSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_insertRows(VirtualQSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_insertColumns(VirtualQSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_removeRows(VirtualQSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_removeColumns(VirtualQSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
void QSortFilterProxyModel_virtualbase_fetchMore(VirtualQSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_canFetchMore(const VirtualQSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_flags(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
QModelIndex* QSortFilterProxyModel_virtualbase_buddy(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_virtualbase_match(const VirtualQSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSortFilterProxyModel_virtualbase_span(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
void QSortFilterProxyModel_virtualbase_sort(VirtualQSortFilterProxyModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_virtualbase_mimeTypes(const VirtualQSortFilterProxyModel* self);
int QSortFilterProxyModel_virtualbase_supportedDropActions(const VirtualQSortFilterProxyModel* self);
bool QSortFilterProxyModel_virtualbase_submit(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_virtualbase_revert(VirtualQSortFilterProxyModel* self);
struct miqt_map /* of int to QVariant* */  QSortFilterProxyModel_virtualbase_itemData(const VirtualQSortFilterProxyModel* self, QModelIndex* index);
bool QSortFilterProxyModel_virtualbase_setItemData(VirtualQSortFilterProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QSortFilterProxyModel_virtualbase_canDropMimeData(const VirtualQSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_supportedDragActions(const VirtualQSortFilterProxyModel* self);
bool QSortFilterProxyModel_virtualbase_moveRows(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QSortFilterProxyModel_virtualbase_moveColumns(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_map /* of int to struct miqt_string */  QSortFilterProxyModel_virtualbase_roleNames(const VirtualQSortFilterProxyModel* self);
bool QSortFilterProxyModel_virtualbase_event(VirtualQSortFilterProxyModel* self, QEvent* event);
bool QSortFilterProxyModel_virtualbase_eventFilter(VirtualQSortFilterProxyModel* self, QObject* watched, QEvent* event);
void QSortFilterProxyModel_virtualbase_timerEvent(VirtualQSortFilterProxyModel* self, QTimerEvent* event);
void QSortFilterProxyModel_virtualbase_childEvent(VirtualQSortFilterProxyModel* self, QChildEvent* event);
void QSortFilterProxyModel_virtualbase_customEvent(VirtualQSortFilterProxyModel* self, QEvent* event);
void QSortFilterProxyModel_virtualbase_connectNotify(VirtualQSortFilterProxyModel* self, QMetaMethod* signal);
void QSortFilterProxyModel_virtualbase_disconnectNotify(VirtualQSortFilterProxyModel* self, QMetaMethod* signal);

void QSortFilterProxyModel_protectedbase_filterChanged(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_invalidateFilter(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_resetInternalData(VirtualQSortFilterProxyModel* self);
QModelIndex* QSortFilterProxyModel_protectedbase_createIndex(const VirtualQSortFilterProxyModel* self, int row, int column);
void QSortFilterProxyModel_protectedbase_encodeData(const VirtualQSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QSortFilterProxyModel_protectedbase_decodeData(VirtualQSortFilterProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QSortFilterProxyModel_protectedbase_beginInsertRows(VirtualQSortFilterProxyModel* self, QModelIndex* parent, int first, int last);
void QSortFilterProxyModel_protectedbase_endInsertRows(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_beginRemoveRows(VirtualQSortFilterProxyModel* self, QModelIndex* parent, int first, int last);
void QSortFilterProxyModel_protectedbase_endRemoveRows(VirtualQSortFilterProxyModel* self);
bool QSortFilterProxyModel_protectedbase_beginMoveRows(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QSortFilterProxyModel_protectedbase_endMoveRows(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_beginInsertColumns(VirtualQSortFilterProxyModel* self, QModelIndex* parent, int first, int last);
void QSortFilterProxyModel_protectedbase_endInsertColumns(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_beginRemoveColumns(VirtualQSortFilterProxyModel* self, QModelIndex* parent, int first, int last);
void QSortFilterProxyModel_protectedbase_endRemoveColumns(VirtualQSortFilterProxyModel* self);
bool QSortFilterProxyModel_protectedbase_beginMoveColumns(VirtualQSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QSortFilterProxyModel_protectedbase_endMoveColumns(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_beginResetModel(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_endResetModel(VirtualQSortFilterProxyModel* self);
void QSortFilterProxyModel_protectedbase_changePersistentIndex(VirtualQSortFilterProxyModel* self, QModelIndex* from, QModelIndex* to);
void QSortFilterProxyModel_protectedbase_changePersistentIndexList(VirtualQSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_protectedbase_persistentIndexList(const VirtualQSortFilterProxyModel* self);
QObject* QSortFilterProxyModel_protectedbase_sender(const VirtualQSortFilterProxyModel* self);
int QSortFilterProxyModel_protectedbase_senderSignalIndex(const VirtualQSortFilterProxyModel* self);
int QSortFilterProxyModel_protectedbase_receivers(const VirtualQSortFilterProxyModel* self, const char* signal);
bool QSortFilterProxyModel_protectedbase_isSignalConnected(const VirtualQSortFilterProxyModel* self, QMetaMethod* signal);

const QMetaObject* QSortFilterProxyModel_staticMetaObject();
void QSortFilterProxyModel_delete(QSortFilterProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
