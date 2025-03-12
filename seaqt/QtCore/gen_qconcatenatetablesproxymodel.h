#pragma once
#ifndef SEAQT_QTCORE_GEN_QCONCATENATETABLESPROXYMODEL_H
#define SEAQT_QTCORE_GEN_QCONCATENATETABLESPROXYMODEL_H

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
class QChildEvent;
class QConcatenateTablesProxyModel;
class QDataStream;
class QEvent;
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
typedef struct QChildEvent QChildEvent;
typedef struct QConcatenateTablesProxyModel QConcatenateTablesProxyModel;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
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

typedef struct VirtualQConcatenateTablesProxyModel VirtualQConcatenateTablesProxyModel;
typedef struct QConcatenateTablesProxyModel_VTable{
	void (*destructor)(VirtualQConcatenateTablesProxyModel* self);
	QMetaObject* (*metaObject)(const VirtualQConcatenateTablesProxyModel* self);
	void* (*metacast)(VirtualQConcatenateTablesProxyModel* self, const char* param1);
	int (*metacall)(VirtualQConcatenateTablesProxyModel* self, int param1, int param2, void** param3);
	QVariant* (*data)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);
	bool (*setItemData)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	int (*flags)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
	QModelIndex* (*index)(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
	int (*rowCount)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(const VirtualQConcatenateTablesProxyModel* self, int section, int orientation, int role);
	int (*columnCount)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQConcatenateTablesProxyModel* self);
	QMimeData* (*mimeData)(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QSize* (*span)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
	QModelIndex* (*sibling)(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* idx);
	bool (*hasChildren)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
	bool (*setHeaderData)(VirtualQConcatenateTablesProxyModel* self, int section, int orientation, QVariant* value, int role);
	bool (*clearItemData)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
	int (*supportedDropActions)(const VirtualQConcatenateTablesProxyModel* self);
	int (*supportedDragActions)(const VirtualQConcatenateTablesProxyModel* self);
	bool (*insertRows)(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
	void (*sort)(VirtualQConcatenateTablesProxyModel* self, int column, int order);
	QModelIndex* (*buddy)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQConcatenateTablesProxyModel* self);
	void (*multiData)(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(VirtualQConcatenateTablesProxyModel* self);
	void (*revert)(VirtualQConcatenateTablesProxyModel* self);
	void (*resetInternalData)(VirtualQConcatenateTablesProxyModel* self);
	bool (*event)(VirtualQConcatenateTablesProxyModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQConcatenateTablesProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQConcatenateTablesProxyModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQConcatenateTablesProxyModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQConcatenateTablesProxyModel* self, QEvent* event);
	void (*connectNotify)(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);
}QConcatenateTablesProxyModel_VTable;

const QConcatenateTablesProxyModel_VTable* QConcatenateTablesProxyModel_vtbl(const VirtualQConcatenateTablesProxyModel* self);
void* QConcatenateTablesProxyModel_vdata(const VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_setVdata(VirtualQConcatenateTablesProxyModel* self, void* vdata);

VirtualQConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata);
VirtualQConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new2(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata, QObject* parent);

void QConcatenateTablesProxyModel_virtbase(QConcatenateTablesProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QConcatenateTablesProxyModel_metaObject(const QConcatenateTablesProxyModel* self);
void* QConcatenateTablesProxyModel_metacast(QConcatenateTablesProxyModel* self, const char* param1);
int QConcatenateTablesProxyModel_metacall(QConcatenateTablesProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QConcatenateTablesProxyModel_tr(const char* s);
struct miqt_array /* of QAbstractItemModel* */  QConcatenateTablesProxyModel_sourceModels(const QConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_addSourceModel(QConcatenateTablesProxyModel* self, QAbstractItemModel* sourceModel);
void QConcatenateTablesProxyModel_removeSourceModel(QConcatenateTablesProxyModel* self, QAbstractItemModel* sourceModel);
QModelIndex* QConcatenateTablesProxyModel_mapFromSource(const QConcatenateTablesProxyModel* self, QModelIndex* sourceIndex);
QModelIndex* QConcatenateTablesProxyModel_mapToSource(const QConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);
QVariant* QConcatenateTablesProxyModel_data(const QConcatenateTablesProxyModel* self, QModelIndex* index, int role);
bool QConcatenateTablesProxyModel_setData(QConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_itemData(const QConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);
bool QConcatenateTablesProxyModel_setItemData(QConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
int QConcatenateTablesProxyModel_flags(const QConcatenateTablesProxyModel* self, QModelIndex* index);
QModelIndex* QConcatenateTablesProxyModel_index(const QConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QConcatenateTablesProxyModel_parent(const QConcatenateTablesProxyModel* self, QModelIndex* index);
int QConcatenateTablesProxyModel_rowCount(const QConcatenateTablesProxyModel* self, QModelIndex* parent);
QVariant* QConcatenateTablesProxyModel_headerData(const QConcatenateTablesProxyModel* self, int section, int orientation, int role);
int QConcatenateTablesProxyModel_columnCount(const QConcatenateTablesProxyModel* self, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_mimeTypes(const QConcatenateTablesProxyModel* self);
QMimeData* QConcatenateTablesProxyModel_mimeData(const QConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QConcatenateTablesProxyModel_canDropMimeData(const QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QConcatenateTablesProxyModel_dropMimeData(QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QSize* QConcatenateTablesProxyModel_span(const QConcatenateTablesProxyModel* self, QModelIndex* index);
struct miqt_string QConcatenateTablesProxyModel_tr2(const char* s, const char* c);
struct miqt_string QConcatenateTablesProxyModel_tr3(const char* s, const char* c, int n);

QMetaObject* QConcatenateTablesProxyModel_virtualbase_metaObject(const VirtualQConcatenateTablesProxyModel* self);
void* QConcatenateTablesProxyModel_virtualbase_metacast(VirtualQConcatenateTablesProxyModel* self, const char* param1);
int QConcatenateTablesProxyModel_virtualbase_metacall(VirtualQConcatenateTablesProxyModel* self, int param1, int param2, void** param3);
QVariant* QConcatenateTablesProxyModel_virtualbase_data(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, int role);
bool QConcatenateTablesProxyModel_virtualbase_setData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_virtualbase_itemData(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);
bool QConcatenateTablesProxyModel_virtualbase_setItemData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
int QConcatenateTablesProxyModel_virtualbase_flags(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_index(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_parent(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
int QConcatenateTablesProxyModel_virtualbase_rowCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
QVariant* QConcatenateTablesProxyModel_virtualbase_headerData(const VirtualQConcatenateTablesProxyModel* self, int section, int orientation, int role);
int QConcatenateTablesProxyModel_virtualbase_columnCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_mimeTypes(const VirtualQConcatenateTablesProxyModel* self);
QMimeData* QConcatenateTablesProxyModel_virtualbase_mimeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QConcatenateTablesProxyModel_virtualbase_canDropMimeData(const VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_dropMimeData(VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QSize* QConcatenateTablesProxyModel_virtualbase_span(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_sibling(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* idx);
bool QConcatenateTablesProxyModel_virtualbase_hasChildren(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_setHeaderData(VirtualQConcatenateTablesProxyModel* self, int section, int orientation, QVariant* value, int role);
bool QConcatenateTablesProxyModel_virtualbase_clearItemData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
int QConcatenateTablesProxyModel_virtualbase_supportedDropActions(const VirtualQConcatenateTablesProxyModel* self);
int QConcatenateTablesProxyModel_virtualbase_supportedDragActions(const VirtualQConcatenateTablesProxyModel* self);
bool QConcatenateTablesProxyModel_virtualbase_insertRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_insertColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_removeRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_removeColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_moveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QConcatenateTablesProxyModel_virtualbase_moveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QConcatenateTablesProxyModel_virtualbase_fetchMore(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_canFetchMore(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);
void QConcatenateTablesProxyModel_virtualbase_sort(VirtualQConcatenateTablesProxyModel* self, int column, int order);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_buddy(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_virtualbase_match(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
struct miqt_map /* of int to struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_roleNames(const VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_virtualbase_multiData(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QConcatenateTablesProxyModel_virtualbase_submit(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_virtualbase_revert(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_virtualbase_resetInternalData(VirtualQConcatenateTablesProxyModel* self);
bool QConcatenateTablesProxyModel_virtualbase_event(VirtualQConcatenateTablesProxyModel* self, QEvent* event);
bool QConcatenateTablesProxyModel_virtualbase_eventFilter(VirtualQConcatenateTablesProxyModel* self, QObject* watched, QEvent* event);
void QConcatenateTablesProxyModel_virtualbase_timerEvent(VirtualQConcatenateTablesProxyModel* self, QTimerEvent* event);
void QConcatenateTablesProxyModel_virtualbase_childEvent(VirtualQConcatenateTablesProxyModel* self, QChildEvent* event);
void QConcatenateTablesProxyModel_virtualbase_customEvent(VirtualQConcatenateTablesProxyModel* self, QEvent* event);
void QConcatenateTablesProxyModel_virtualbase_connectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);
void QConcatenateTablesProxyModel_virtualbase_disconnectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);

QModelIndex* QConcatenateTablesProxyModel_protectedbase_createIndex(const VirtualQConcatenateTablesProxyModel* self, int row, int column);
void QConcatenateTablesProxyModel_protectedbase_encodeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QConcatenateTablesProxyModel_protectedbase_decodeData(VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QConcatenateTablesProxyModel_protectedbase_beginInsertRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endInsertRows(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_beginRemoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endRemoveRows(VirtualQConcatenateTablesProxyModel* self);
bool QConcatenateTablesProxyModel_protectedbase_beginMoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QConcatenateTablesProxyModel_protectedbase_endMoveRows(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_beginInsertColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endInsertColumns(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endRemoveColumns(VirtualQConcatenateTablesProxyModel* self);
bool QConcatenateTablesProxyModel_protectedbase_beginMoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QConcatenateTablesProxyModel_protectedbase_endMoveColumns(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_beginResetModel(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_endResetModel(VirtualQConcatenateTablesProxyModel* self);
void QConcatenateTablesProxyModel_protectedbase_changePersistentIndex(VirtualQConcatenateTablesProxyModel* self, QModelIndex* from, QModelIndex* to);
void QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_protectedbase_persistentIndexList(const VirtualQConcatenateTablesProxyModel* self);
QObject* QConcatenateTablesProxyModel_protectedbase_sender(const VirtualQConcatenateTablesProxyModel* self);
int QConcatenateTablesProxyModel_protectedbase_senderSignalIndex(const VirtualQConcatenateTablesProxyModel* self);
int QConcatenateTablesProxyModel_protectedbase_receivers(const VirtualQConcatenateTablesProxyModel* self, const char* signal);
bool QConcatenateTablesProxyModel_protectedbase_isSignalConnected(const VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);

const QMetaObject* QConcatenateTablesProxyModel_staticMetaObject();
void QConcatenateTablesProxyModel_delete(QConcatenateTablesProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
