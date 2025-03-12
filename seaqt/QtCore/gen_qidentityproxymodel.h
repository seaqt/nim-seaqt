#pragma once
#ifndef SEAQT_QTCORE_GEN_QIDENTITYPROXYMODEL_H
#define SEAQT_QTCORE_GEN_QIDENTITYPROXYMODEL_H

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
class QIdentityProxyModel;
class QItemSelection;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
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
typedef struct QIdentityProxyModel QIdentityProxyModel;
typedef struct QItemSelection QItemSelection;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQIdentityProxyModel VirtualQIdentityProxyModel;
typedef struct QIdentityProxyModel_VTable{
	void (*destructor)(VirtualQIdentityProxyModel* self);
	QMetaObject* (*metaObject)(const VirtualQIdentityProxyModel* self);
	void* (*metacast)(VirtualQIdentityProxyModel* self, const char* param1);
	int (*metacall)(VirtualQIdentityProxyModel* self, int param1, int param2, void** param3);
	int (*columnCount)(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
	QModelIndex* (*index)(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*mapFromSource)(const VirtualQIdentityProxyModel* self, QModelIndex* sourceIndex);
	QModelIndex* (*mapToSource)(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*parent)(const VirtualQIdentityProxyModel* self, QModelIndex* child);
	int (*rowCount)(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(const VirtualQIdentityProxyModel* self, int section, int orientation, int role);
	bool (*dropMimeData)(VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* idx);
	QItemSelection* (*mapSelectionFromSource)(const VirtualQIdentityProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionToSource)(const VirtualQIdentityProxyModel* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	void (*setSourceModel)(VirtualQIdentityProxyModel* self, QAbstractItemModel* sourceModel);
	bool (*insertColumns)(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*insertRows)(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*submit)(VirtualQIdentityProxyModel* self);
	void (*revert)(VirtualQIdentityProxyModel* self);
	QVariant* (*data)(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQIdentityProxyModel* self, QModelIndex* index);
	int (*flags)(const VirtualQIdentityProxyModel* self, QModelIndex* index);
	bool (*setData)(VirtualQIdentityProxyModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*setItemData)(VirtualQIdentityProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*setHeaderData)(VirtualQIdentityProxyModel* self, int section, int orientation, QVariant* value, int role);
	QModelIndex* (*buddy)(const VirtualQIdentityProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(VirtualQIdentityProxyModel* self, QModelIndex* parent);
	void (*sort)(VirtualQIdentityProxyModel* self, int column, int order);
	QSize* (*span)(const VirtualQIdentityProxyModel* self, QModelIndex* index);
	bool (*hasChildren)(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
	QMimeData* (*mimeData)(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQIdentityProxyModel* self);
	int (*supportedDragActions)(const VirtualQIdentityProxyModel* self);
	int (*supportedDropActions)(const VirtualQIdentityProxyModel* self);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQIdentityProxyModel* self);
	bool (*event)(VirtualQIdentityProxyModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQIdentityProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQIdentityProxyModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQIdentityProxyModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQIdentityProxyModel* self, QEvent* event);
	void (*connectNotify)(VirtualQIdentityProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQIdentityProxyModel* self, QMetaMethod* signal);
}QIdentityProxyModel_VTable;

const QIdentityProxyModel_VTable* QIdentityProxyModel_vtbl(const VirtualQIdentityProxyModel* self);
void* QIdentityProxyModel_vdata(const VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_setVdata(VirtualQIdentityProxyModel* self, void* vdata);

VirtualQIdentityProxyModel* QIdentityProxyModel_new(const QIdentityProxyModel_VTable* vtbl, void* vdata);
VirtualQIdentityProxyModel* QIdentityProxyModel_new2(const QIdentityProxyModel_VTable* vtbl, void* vdata, QObject* parent);

void QIdentityProxyModel_virtbase(QIdentityProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel);
QMetaObject* QIdentityProxyModel_metaObject(const QIdentityProxyModel* self);
void* QIdentityProxyModel_metacast(QIdentityProxyModel* self, const char* param1);
int QIdentityProxyModel_metacall(QIdentityProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QIdentityProxyModel_tr(const char* s);
struct miqt_string QIdentityProxyModel_trUtf8(const char* s);
int QIdentityProxyModel_columnCount(const QIdentityProxyModel* self, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_index(const QIdentityProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_mapFromSource(const QIdentityProxyModel* self, QModelIndex* sourceIndex);
QModelIndex* QIdentityProxyModel_mapToSource(const QIdentityProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QIdentityProxyModel_parent(const QIdentityProxyModel* self, QModelIndex* child);
int QIdentityProxyModel_rowCount(const QIdentityProxyModel* self, QModelIndex* parent);
QVariant* QIdentityProxyModel_headerData(const QIdentityProxyModel* self, int section, int orientation, int role);
bool QIdentityProxyModel_dropMimeData(QIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_sibling(const QIdentityProxyModel* self, int row, int column, QModelIndex* idx);
QItemSelection* QIdentityProxyModel_mapSelectionFromSource(const QIdentityProxyModel* self, QItemSelection* selection);
QItemSelection* QIdentityProxyModel_mapSelectionToSource(const QIdentityProxyModel* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_match(const QIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QIdentityProxyModel_setSourceModel(QIdentityProxyModel* self, QAbstractItemModel* sourceModel);
bool QIdentityProxyModel_insertColumns(QIdentityProxyModel* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_insertRows(QIdentityProxyModel* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_removeColumns(QIdentityProxyModel* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_removeRows(QIdentityProxyModel* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_moveRows(QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QIdentityProxyModel_moveColumns(QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_string QIdentityProxyModel_tr2(const char* s, const char* c);
struct miqt_string QIdentityProxyModel_tr3(const char* s, const char* c, int n);
struct miqt_string QIdentityProxyModel_trUtf82(const char* s, const char* c);
struct miqt_string QIdentityProxyModel_trUtf83(const char* s, const char* c, int n);

QMetaObject* QIdentityProxyModel_virtualbase_metaObject(const VirtualQIdentityProxyModel* self);
void* QIdentityProxyModel_virtualbase_metacast(VirtualQIdentityProxyModel* self, const char* param1);
int QIdentityProxyModel_virtualbase_metacall(VirtualQIdentityProxyModel* self, int param1, int param2, void** param3);
int QIdentityProxyModel_virtualbase_columnCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_index(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_mapFromSource(const VirtualQIdentityProxyModel* self, QModelIndex* sourceIndex);
QModelIndex* QIdentityProxyModel_virtualbase_mapToSource(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QIdentityProxyModel_virtualbase_parent(const VirtualQIdentityProxyModel* self, QModelIndex* child);
int QIdentityProxyModel_virtualbase_rowCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
QVariant* QIdentityProxyModel_virtualbase_headerData(const VirtualQIdentityProxyModel* self, int section, int orientation, int role);
bool QIdentityProxyModel_virtualbase_dropMimeData(VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_sibling(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* idx);
QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionFromSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection);
QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionToSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_virtualbase_match(const VirtualQIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QIdentityProxyModel_virtualbase_setSourceModel(VirtualQIdentityProxyModel* self, QAbstractItemModel* sourceModel);
bool QIdentityProxyModel_virtualbase_insertColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_insertRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_removeColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_removeRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_moveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QIdentityProxyModel_virtualbase_moveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
bool QIdentityProxyModel_virtualbase_submit(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_virtualbase_revert(VirtualQIdentityProxyModel* self);
QVariant* QIdentityProxyModel_virtualbase_data(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex, int role);
struct miqt_map /* of int to QVariant* */  QIdentityProxyModel_virtualbase_itemData(const VirtualQIdentityProxyModel* self, QModelIndex* index);
int QIdentityProxyModel_virtualbase_flags(const VirtualQIdentityProxyModel* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_setData(VirtualQIdentityProxyModel* self, QModelIndex* index, QVariant* value, int role);
bool QIdentityProxyModel_virtualbase_setItemData(VirtualQIdentityProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QIdentityProxyModel_virtualbase_setHeaderData(VirtualQIdentityProxyModel* self, int section, int orientation, QVariant* value, int role);
QModelIndex* QIdentityProxyModel_virtualbase_buddy(const VirtualQIdentityProxyModel* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_canFetchMore(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
void QIdentityProxyModel_virtualbase_fetchMore(VirtualQIdentityProxyModel* self, QModelIndex* parent);
void QIdentityProxyModel_virtualbase_sort(VirtualQIdentityProxyModel* self, int column, int order);
QSize* QIdentityProxyModel_virtualbase_span(const VirtualQIdentityProxyModel* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_hasChildren(const VirtualQIdentityProxyModel* self, QModelIndex* parent);
QMimeData* QIdentityProxyModel_virtualbase_mimeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QIdentityProxyModel_virtualbase_canDropMimeData(const VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QIdentityProxyModel_virtualbase_mimeTypes(const VirtualQIdentityProxyModel* self);
int QIdentityProxyModel_virtualbase_supportedDragActions(const VirtualQIdentityProxyModel* self);
int QIdentityProxyModel_virtualbase_supportedDropActions(const VirtualQIdentityProxyModel* self);
struct miqt_map /* of int to struct miqt_string */  QIdentityProxyModel_virtualbase_roleNames(const VirtualQIdentityProxyModel* self);
bool QIdentityProxyModel_virtualbase_event(VirtualQIdentityProxyModel* self, QEvent* event);
bool QIdentityProxyModel_virtualbase_eventFilter(VirtualQIdentityProxyModel* self, QObject* watched, QEvent* event);
void QIdentityProxyModel_virtualbase_timerEvent(VirtualQIdentityProxyModel* self, QTimerEvent* event);
void QIdentityProxyModel_virtualbase_childEvent(VirtualQIdentityProxyModel* self, QChildEvent* event);
void QIdentityProxyModel_virtualbase_customEvent(VirtualQIdentityProxyModel* self, QEvent* event);
void QIdentityProxyModel_virtualbase_connectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal);
void QIdentityProxyModel_virtualbase_disconnectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal);

void QIdentityProxyModel_protectedbase_resetInternalData(VirtualQIdentityProxyModel* self);
QModelIndex* QIdentityProxyModel_protectedbase_createIndex(const VirtualQIdentityProxyModel* self, int row, int column);
void QIdentityProxyModel_protectedbase_encodeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QIdentityProxyModel_protectedbase_decodeData(VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QIdentityProxyModel_protectedbase_beginInsertRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endInsertRows(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_beginRemoveRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endRemoveRows(VirtualQIdentityProxyModel* self);
bool QIdentityProxyModel_protectedbase_beginMoveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QIdentityProxyModel_protectedbase_endMoveRows(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_beginInsertColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endInsertColumns(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_beginRemoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endRemoveColumns(VirtualQIdentityProxyModel* self);
bool QIdentityProxyModel_protectedbase_beginMoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QIdentityProxyModel_protectedbase_endMoveColumns(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_beginResetModel(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_endResetModel(VirtualQIdentityProxyModel* self);
void QIdentityProxyModel_protectedbase_changePersistentIndex(VirtualQIdentityProxyModel* self, QModelIndex* from, QModelIndex* to);
void QIdentityProxyModel_protectedbase_changePersistentIndexList(VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_protectedbase_persistentIndexList(const VirtualQIdentityProxyModel* self);
QObject* QIdentityProxyModel_protectedbase_sender(const VirtualQIdentityProxyModel* self);
int QIdentityProxyModel_protectedbase_senderSignalIndex(const VirtualQIdentityProxyModel* self);
int QIdentityProxyModel_protectedbase_receivers(const VirtualQIdentityProxyModel* self, const char* signal);
bool QIdentityProxyModel_protectedbase_isSignalConnected(const VirtualQIdentityProxyModel* self, QMetaMethod* signal);

const QMetaObject* QIdentityProxyModel_staticMetaObject();
void QIdentityProxyModel_delete(QIdentityProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
