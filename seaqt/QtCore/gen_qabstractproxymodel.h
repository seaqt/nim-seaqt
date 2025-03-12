#pragma once
#ifndef SEAQT_QTCORE_GEN_QABSTRACTPROXYMODEL_H
#define SEAQT_QTCORE_GEN_QABSTRACTPROXYMODEL_H

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
class QModelRoleDataSpan;
class QObject;
class QSize;
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
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQAbstractProxyModel VirtualQAbstractProxyModel;
typedef struct QAbstractProxyModel_VTable{
	void (*destructor)(VirtualQAbstractProxyModel* self);
	QMetaObject* (*metaObject)(const VirtualQAbstractProxyModel* self);
	void* (*metacast)(VirtualQAbstractProxyModel* self, const char* param1);
	int (*metacall)(VirtualQAbstractProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(VirtualQAbstractProxyModel* self, QAbstractItemModel* sourceModel);
	QModelIndex* (*mapToSource)(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*mapFromSource)(const VirtualQAbstractProxyModel* self, QModelIndex* sourceIndex);
	QItemSelection* (*mapSelectionToSource)(const VirtualQAbstractProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionFromSource)(const VirtualQAbstractProxyModel* self, QItemSelection* selection);
	bool (*submit)(VirtualQAbstractProxyModel* self);
	void (*revert)(VirtualQAbstractProxyModel* self);
	QVariant* (*data)(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
	QVariant* (*headerData)(const VirtualQAbstractProxyModel* self, int section, int orientation, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQAbstractProxyModel* self, QModelIndex* index);
	int (*flags)(const VirtualQAbstractProxyModel* self, QModelIndex* index);
	bool (*setData)(VirtualQAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*setItemData)(VirtualQAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*setHeaderData)(VirtualQAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
	bool (*clearItemData)(VirtualQAbstractProxyModel* self, QModelIndex* index);
	QModelIndex* (*buddy)(const VirtualQAbstractProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(VirtualQAbstractProxyModel* self, QModelIndex* parent);
	void (*sort)(VirtualQAbstractProxyModel* self, int column, int order);
	QSize* (*span)(const VirtualQAbstractProxyModel* self, QModelIndex* index);
	bool (*hasChildren)(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* idx);
	QMimeData* (*mimeData)(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQAbstractProxyModel* self);
	int (*supportedDragActions)(const VirtualQAbstractProxyModel* self);
	int (*supportedDropActions)(const VirtualQAbstractProxyModel* self);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQAbstractProxyModel* self);
	QModelIndex* (*index)(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQAbstractProxyModel* self, QModelIndex* child);
	int (*rowCount)(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
	bool (*insertRows)(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	void (*multiData)(const VirtualQAbstractProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	void (*resetInternalData)(VirtualQAbstractProxyModel* self);
	bool (*event)(VirtualQAbstractProxyModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQAbstractProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAbstractProxyModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAbstractProxyModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQAbstractProxyModel* self, QEvent* event);
	void (*connectNotify)(VirtualQAbstractProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAbstractProxyModel* self, QMetaMethod* signal);
}QAbstractProxyModel_VTable;

const QAbstractProxyModel_VTable* QAbstractProxyModel_vtbl(const VirtualQAbstractProxyModel* self);
void* QAbstractProxyModel_vdata(const VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_setVdata(VirtualQAbstractProxyModel* self, void* vdata);

VirtualQAbstractProxyModel* QAbstractProxyModel_new(const QAbstractProxyModel_VTable* vtbl, void* vdata);
VirtualQAbstractProxyModel* QAbstractProxyModel_new2(const QAbstractProxyModel_VTable* vtbl, void* vdata, QObject* parent);

void QAbstractProxyModel_virtbase(QAbstractProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QAbstractProxyModel_metaObject(const QAbstractProxyModel* self);
void* QAbstractProxyModel_metacast(QAbstractProxyModel* self, const char* param1);
int QAbstractProxyModel_metacall(QAbstractProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QAbstractProxyModel_tr(const char* s);
void QAbstractProxyModel_setSourceModel(QAbstractProxyModel* self, QAbstractItemModel* sourceModel);
QAbstractItemModel* QAbstractProxyModel_sourceModel(const QAbstractProxyModel* self);
QModelIndex* QAbstractProxyModel_mapToSource(const QAbstractProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QAbstractProxyModel_mapFromSource(const QAbstractProxyModel* self, QModelIndex* sourceIndex);
QItemSelection* QAbstractProxyModel_mapSelectionToSource(const QAbstractProxyModel* self, QItemSelection* selection);
QItemSelection* QAbstractProxyModel_mapSelectionFromSource(const QAbstractProxyModel* self, QItemSelection* selection);
bool QAbstractProxyModel_submit(QAbstractProxyModel* self);
void QAbstractProxyModel_revert(QAbstractProxyModel* self);
QVariant* QAbstractProxyModel_data(const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
QVariant* QAbstractProxyModel_headerData(const QAbstractProxyModel* self, int section, int orientation, int role);
struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_itemData(const QAbstractProxyModel* self, QModelIndex* index);
int QAbstractProxyModel_flags(const QAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_setData(QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
bool QAbstractProxyModel_setItemData(QAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QAbstractProxyModel_setHeaderData(QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
bool QAbstractProxyModel_clearItemData(QAbstractProxyModel* self, QModelIndex* index);
QModelIndex* QAbstractProxyModel_buddy(const QAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_canFetchMore(const QAbstractProxyModel* self, QModelIndex* parent);
void QAbstractProxyModel_fetchMore(QAbstractProxyModel* self, QModelIndex* parent);
void QAbstractProxyModel_sort(QAbstractProxyModel* self, int column, int order);
QSize* QAbstractProxyModel_span(const QAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_hasChildren(const QAbstractProxyModel* self, QModelIndex* parent);
QModelIndex* QAbstractProxyModel_sibling(const QAbstractProxyModel* self, int row, int column, QModelIndex* idx);
QMimeData* QAbstractProxyModel_mimeData(const QAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QAbstractProxyModel_canDropMimeData(const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QAbstractProxyModel_dropMimeData(QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_mimeTypes(const QAbstractProxyModel* self);
int QAbstractProxyModel_supportedDragActions(const QAbstractProxyModel* self);
int QAbstractProxyModel_supportedDropActions(const QAbstractProxyModel* self);
struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_roleNames(const QAbstractProxyModel* self);
struct miqt_string QAbstractProxyModel_tr2(const char* s, const char* c);
struct miqt_string QAbstractProxyModel_tr3(const char* s, const char* c, int n);

QMetaObject* QAbstractProxyModel_virtualbase_metaObject(const VirtualQAbstractProxyModel* self);
void* QAbstractProxyModel_virtualbase_metacast(VirtualQAbstractProxyModel* self, const char* param1);
int QAbstractProxyModel_virtualbase_metacall(VirtualQAbstractProxyModel* self, int param1, int param2, void** param3);
void QAbstractProxyModel_virtualbase_setSourceModel(VirtualQAbstractProxyModel* self, QAbstractItemModel* sourceModel);
QModelIndex* QAbstractProxyModel_virtualbase_mapToSource(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QAbstractProxyModel_virtualbase_mapFromSource(const VirtualQAbstractProxyModel* self, QModelIndex* sourceIndex);
QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionToSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection);
QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionFromSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection);
bool QAbstractProxyModel_virtualbase_submit(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_virtualbase_revert(VirtualQAbstractProxyModel* self);
QVariant* QAbstractProxyModel_virtualbase_data(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
QVariant* QAbstractProxyModel_virtualbase_headerData(const VirtualQAbstractProxyModel* self, int section, int orientation, int role);
struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_virtualbase_itemData(const VirtualQAbstractProxyModel* self, QModelIndex* index);
int QAbstractProxyModel_virtualbase_flags(const VirtualQAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_setData(VirtualQAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
bool QAbstractProxyModel_virtualbase_setItemData(VirtualQAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QAbstractProxyModel_virtualbase_setHeaderData(VirtualQAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
bool QAbstractProxyModel_virtualbase_clearItemData(VirtualQAbstractProxyModel* self, QModelIndex* index);
QModelIndex* QAbstractProxyModel_virtualbase_buddy(const VirtualQAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_canFetchMore(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
void QAbstractProxyModel_virtualbase_fetchMore(VirtualQAbstractProxyModel* self, QModelIndex* parent);
void QAbstractProxyModel_virtualbase_sort(VirtualQAbstractProxyModel* self, int column, int order);
QSize* QAbstractProxyModel_virtualbase_span(const VirtualQAbstractProxyModel* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_hasChildren(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
QModelIndex* QAbstractProxyModel_virtualbase_sibling(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* idx);
QMimeData* QAbstractProxyModel_virtualbase_mimeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QAbstractProxyModel_virtualbase_canDropMimeData(const VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_dropMimeData(VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_virtualbase_mimeTypes(const VirtualQAbstractProxyModel* self);
int QAbstractProxyModel_virtualbase_supportedDragActions(const VirtualQAbstractProxyModel* self);
int QAbstractProxyModel_virtualbase_supportedDropActions(const VirtualQAbstractProxyModel* self);
struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_virtualbase_roleNames(const VirtualQAbstractProxyModel* self);
QModelIndex* QAbstractProxyModel_virtualbase_index(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QAbstractProxyModel_virtualbase_parent(const VirtualQAbstractProxyModel* self, QModelIndex* child);
int QAbstractProxyModel_virtualbase_rowCount(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
int QAbstractProxyModel_virtualbase_columnCount(const VirtualQAbstractProxyModel* self, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_insertRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_insertColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_removeRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_removeColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_moveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QAbstractProxyModel_virtualbase_moveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_virtualbase_match(const VirtualQAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QAbstractProxyModel_virtualbase_multiData(const VirtualQAbstractProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
void QAbstractProxyModel_virtualbase_resetInternalData(VirtualQAbstractProxyModel* self);
bool QAbstractProxyModel_virtualbase_event(VirtualQAbstractProxyModel* self, QEvent* event);
bool QAbstractProxyModel_virtualbase_eventFilter(VirtualQAbstractProxyModel* self, QObject* watched, QEvent* event);
void QAbstractProxyModel_virtualbase_timerEvent(VirtualQAbstractProxyModel* self, QTimerEvent* event);
void QAbstractProxyModel_virtualbase_childEvent(VirtualQAbstractProxyModel* self, QChildEvent* event);
void QAbstractProxyModel_virtualbase_customEvent(VirtualQAbstractProxyModel* self, QEvent* event);
void QAbstractProxyModel_virtualbase_connectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal);
void QAbstractProxyModel_virtualbase_disconnectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal);

QModelIndex* QAbstractProxyModel_protectedbase_createSourceIndex(const VirtualQAbstractProxyModel* self, int row, int col, void* internalPtr);
QModelIndex* QAbstractProxyModel_protectedbase_createIndex(const VirtualQAbstractProxyModel* self, int row, int column);
void QAbstractProxyModel_protectedbase_encodeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QAbstractProxyModel_protectedbase_decodeData(VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QAbstractProxyModel_protectedbase_beginInsertRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endInsertRows(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_beginRemoveRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endRemoveRows(VirtualQAbstractProxyModel* self);
bool QAbstractProxyModel_protectedbase_beginMoveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QAbstractProxyModel_protectedbase_endMoveRows(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_beginInsertColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endInsertColumns(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_beginRemoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endRemoveColumns(VirtualQAbstractProxyModel* self);
bool QAbstractProxyModel_protectedbase_beginMoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QAbstractProxyModel_protectedbase_endMoveColumns(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_beginResetModel(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_endResetModel(VirtualQAbstractProxyModel* self);
void QAbstractProxyModel_protectedbase_changePersistentIndex(VirtualQAbstractProxyModel* self, QModelIndex* from, QModelIndex* to);
void QAbstractProxyModel_protectedbase_changePersistentIndexList(VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_protectedbase_persistentIndexList(const VirtualQAbstractProxyModel* self);
QObject* QAbstractProxyModel_protectedbase_sender(const VirtualQAbstractProxyModel* self);
int QAbstractProxyModel_protectedbase_senderSignalIndex(const VirtualQAbstractProxyModel* self);
int QAbstractProxyModel_protectedbase_receivers(const VirtualQAbstractProxyModel* self, const char* signal);
bool QAbstractProxyModel_protectedbase_isSignalConnected(const VirtualQAbstractProxyModel* self, QMetaMethod* signal);

const QMetaObject* QAbstractProxyModel_staticMetaObject();
void QAbstractProxyModel_delete(QAbstractProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
