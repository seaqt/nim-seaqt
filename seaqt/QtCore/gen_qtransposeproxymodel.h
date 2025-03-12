#pragma once
#ifndef SEAQT_QTCORE_GEN_QTRANSPOSEPROXYMODEL_H
#define SEAQT_QTCORE_GEN_QTRANSPOSEPROXYMODEL_H

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
class QSize;
class QTimerEvent;
class QTransposeProxyModel;
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
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransposeProxyModel QTransposeProxyModel;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQTransposeProxyModel VirtualQTransposeProxyModel;
typedef struct QTransposeProxyModel_VTable{
	void (*destructor)(VirtualQTransposeProxyModel* self);
	QMetaObject* (*metaObject)(const VirtualQTransposeProxyModel* self);
	void* (*metacast)(VirtualQTransposeProxyModel* self, const char* param1);
	int (*metacall)(VirtualQTransposeProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(VirtualQTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
	int (*rowCount)(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(const VirtualQTransposeProxyModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
	bool (*setItemData)(VirtualQTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	QSize* (*span)(const VirtualQTransposeProxyModel* self, QModelIndex* index);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQTransposeProxyModel* self, QModelIndex* index);
	QModelIndex* (*mapFromSource)(const VirtualQTransposeProxyModel* self, QModelIndex* sourceIndex);
	QModelIndex* (*mapToSource)(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*parent)(const VirtualQTransposeProxyModel* self, QModelIndex* index);
	QModelIndex* (*index)(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent);
	bool (*insertRows)(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*insertColumns)(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveColumns)(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*sort)(VirtualQTransposeProxyModel* self, int column, int order);
	QItemSelection* (*mapSelectionToSource)(const VirtualQTransposeProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionFromSource)(const VirtualQTransposeProxyModel* self, QItemSelection* selection);
	bool (*submit)(VirtualQTransposeProxyModel* self);
	void (*revert)(VirtualQTransposeProxyModel* self);
	QVariant* (*data)(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex, int role);
	int (*flags)(const VirtualQTransposeProxyModel* self, QModelIndex* index);
	bool (*setData)(VirtualQTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);
	QModelIndex* (*buddy)(const VirtualQTransposeProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(VirtualQTransposeProxyModel* self, QModelIndex* parent);
	bool (*hasChildren)(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* idx);
	QMimeData* (*mimeData)(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQTransposeProxyModel* self);
	int (*supportedDragActions)(const VirtualQTransposeProxyModel* self);
	int (*supportedDropActions)(const VirtualQTransposeProxyModel* self);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQTransposeProxyModel* self);
	bool (*event)(VirtualQTransposeProxyModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQTransposeProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTransposeProxyModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTransposeProxyModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQTransposeProxyModel* self, QEvent* event);
	void (*connectNotify)(VirtualQTransposeProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTransposeProxyModel* self, QMetaMethod* signal);
}QTransposeProxyModel_VTable;

const QTransposeProxyModel_VTable* QTransposeProxyModel_vtbl(const VirtualQTransposeProxyModel* self);
void* QTransposeProxyModel_vdata(const VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_setVdata(VirtualQTransposeProxyModel* self, void* vdata);

VirtualQTransposeProxyModel* QTransposeProxyModel_new(const QTransposeProxyModel_VTable* vtbl, void* vdata);
VirtualQTransposeProxyModel* QTransposeProxyModel_new2(const QTransposeProxyModel_VTable* vtbl, void* vdata, QObject* parent);

void QTransposeProxyModel_virtbase(QTransposeProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel);
QMetaObject* QTransposeProxyModel_metaObject(const QTransposeProxyModel* self);
void* QTransposeProxyModel_metacast(QTransposeProxyModel* self, const char* param1);
int QTransposeProxyModel_metacall(QTransposeProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QTransposeProxyModel_tr(const char* s);
struct miqt_string QTransposeProxyModel_trUtf8(const char* s);
void QTransposeProxyModel_setSourceModel(QTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
int QTransposeProxyModel_rowCount(const QTransposeProxyModel* self, QModelIndex* parent);
int QTransposeProxyModel_columnCount(const QTransposeProxyModel* self, QModelIndex* parent);
QVariant* QTransposeProxyModel_headerData(const QTransposeProxyModel* self, int section, int orientation, int role);
bool QTransposeProxyModel_setHeaderData(QTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
bool QTransposeProxyModel_setItemData(QTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
QSize* QTransposeProxyModel_span(const QTransposeProxyModel* self, QModelIndex* index);
struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_itemData(const QTransposeProxyModel* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_mapFromSource(const QTransposeProxyModel* self, QModelIndex* sourceIndex);
QModelIndex* QTransposeProxyModel_mapToSource(const QTransposeProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QTransposeProxyModel_parent(const QTransposeProxyModel* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_index(const QTransposeProxyModel* self, int row, int column, QModelIndex* parent);
bool QTransposeProxyModel_insertRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_removeRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_moveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QTransposeProxyModel_insertColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_removeColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_moveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QTransposeProxyModel_sort(QTransposeProxyModel* self, int column, int order);
struct miqt_string QTransposeProxyModel_tr2(const char* s, const char* c);
struct miqt_string QTransposeProxyModel_tr3(const char* s, const char* c, int n);
struct miqt_string QTransposeProxyModel_trUtf82(const char* s, const char* c);
struct miqt_string QTransposeProxyModel_trUtf83(const char* s, const char* c, int n);

QMetaObject* QTransposeProxyModel_virtualbase_metaObject(const VirtualQTransposeProxyModel* self);
void* QTransposeProxyModel_virtualbase_metacast(VirtualQTransposeProxyModel* self, const char* param1);
int QTransposeProxyModel_virtualbase_metacall(VirtualQTransposeProxyModel* self, int param1, int param2, void** param3);
void QTransposeProxyModel_virtualbase_setSourceModel(VirtualQTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
int QTransposeProxyModel_virtualbase_rowCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
int QTransposeProxyModel_virtualbase_columnCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
QVariant* QTransposeProxyModel_virtualbase_headerData(const VirtualQTransposeProxyModel* self, int section, int orientation, int role);
bool QTransposeProxyModel_virtualbase_setHeaderData(VirtualQTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
bool QTransposeProxyModel_virtualbase_setItemData(VirtualQTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
QSize* QTransposeProxyModel_virtualbase_span(const VirtualQTransposeProxyModel* self, QModelIndex* index);
struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_virtualbase_itemData(const VirtualQTransposeProxyModel* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_virtualbase_mapFromSource(const VirtualQTransposeProxyModel* self, QModelIndex* sourceIndex);
QModelIndex* QTransposeProxyModel_virtualbase_mapToSource(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QTransposeProxyModel_virtualbase_parent(const VirtualQTransposeProxyModel* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_virtualbase_index(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_insertRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_removeRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_moveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QTransposeProxyModel_virtualbase_insertColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_removeColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_moveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QTransposeProxyModel_virtualbase_sort(VirtualQTransposeProxyModel* self, int column, int order);
QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionToSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection);
QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionFromSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection);
bool QTransposeProxyModel_virtualbase_submit(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_virtualbase_revert(VirtualQTransposeProxyModel* self);
QVariant* QTransposeProxyModel_virtualbase_data(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex, int role);
int QTransposeProxyModel_virtualbase_flags(const VirtualQTransposeProxyModel* self, QModelIndex* index);
bool QTransposeProxyModel_virtualbase_setData(VirtualQTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);
QModelIndex* QTransposeProxyModel_virtualbase_buddy(const VirtualQTransposeProxyModel* self, QModelIndex* index);
bool QTransposeProxyModel_virtualbase_canFetchMore(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
void QTransposeProxyModel_virtualbase_fetchMore(VirtualQTransposeProxyModel* self, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_hasChildren(const VirtualQTransposeProxyModel* self, QModelIndex* parent);
QModelIndex* QTransposeProxyModel_virtualbase_sibling(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* idx);
QMimeData* QTransposeProxyModel_virtualbase_mimeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QTransposeProxyModel_virtualbase_canDropMimeData(const VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_dropMimeData(VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QTransposeProxyModel_virtualbase_mimeTypes(const VirtualQTransposeProxyModel* self);
int QTransposeProxyModel_virtualbase_supportedDragActions(const VirtualQTransposeProxyModel* self);
int QTransposeProxyModel_virtualbase_supportedDropActions(const VirtualQTransposeProxyModel* self);
struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_virtualbase_match(const VirtualQTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
struct miqt_map /* of int to struct miqt_string */  QTransposeProxyModel_virtualbase_roleNames(const VirtualQTransposeProxyModel* self);
bool QTransposeProxyModel_virtualbase_event(VirtualQTransposeProxyModel* self, QEvent* event);
bool QTransposeProxyModel_virtualbase_eventFilter(VirtualQTransposeProxyModel* self, QObject* watched, QEvent* event);
void QTransposeProxyModel_virtualbase_timerEvent(VirtualQTransposeProxyModel* self, QTimerEvent* event);
void QTransposeProxyModel_virtualbase_childEvent(VirtualQTransposeProxyModel* self, QChildEvent* event);
void QTransposeProxyModel_virtualbase_customEvent(VirtualQTransposeProxyModel* self, QEvent* event);
void QTransposeProxyModel_virtualbase_connectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal);
void QTransposeProxyModel_virtualbase_disconnectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal);

void QTransposeProxyModel_protectedbase_resetInternalData(VirtualQTransposeProxyModel* self);
QModelIndex* QTransposeProxyModel_protectedbase_createIndex(const VirtualQTransposeProxyModel* self, int row, int column);
void QTransposeProxyModel_protectedbase_encodeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QTransposeProxyModel_protectedbase_decodeData(VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QTransposeProxyModel_protectedbase_beginInsertRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endInsertRows(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_beginRemoveRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endRemoveRows(VirtualQTransposeProxyModel* self);
bool QTransposeProxyModel_protectedbase_beginMoveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QTransposeProxyModel_protectedbase_endMoveRows(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_beginInsertColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endInsertColumns(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_beginRemoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endRemoveColumns(VirtualQTransposeProxyModel* self);
bool QTransposeProxyModel_protectedbase_beginMoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QTransposeProxyModel_protectedbase_endMoveColumns(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_beginResetModel(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_endResetModel(VirtualQTransposeProxyModel* self);
void QTransposeProxyModel_protectedbase_changePersistentIndex(VirtualQTransposeProxyModel* self, QModelIndex* from, QModelIndex* to);
void QTransposeProxyModel_protectedbase_changePersistentIndexList(VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_protectedbase_persistentIndexList(const VirtualQTransposeProxyModel* self);
QObject* QTransposeProxyModel_protectedbase_sender(const VirtualQTransposeProxyModel* self);
int QTransposeProxyModel_protectedbase_senderSignalIndex(const VirtualQTransposeProxyModel* self);
int QTransposeProxyModel_protectedbase_receivers(const VirtualQTransposeProxyModel* self, const char* signal);
bool QTransposeProxyModel_protectedbase_isSignalConnected(const VirtualQTransposeProxyModel* self, QMetaMethod* signal);

const QMetaObject* QTransposeProxyModel_staticMetaObject();
void QTransposeProxyModel_delete(QTransposeProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
