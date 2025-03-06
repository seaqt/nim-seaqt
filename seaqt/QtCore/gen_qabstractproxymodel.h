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
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QAbstractProxyModel_VTable {
	void (*destructor)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self);
	QMetaObject* (*metaObject)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self);
	void* (*metacast)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, const char* param1);
	int (*metacall)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QAbstractItemModel* sourceModel);
	QModelIndex* (*mapToSource)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*mapFromSource)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* sourceIndex);
	QItemSelection* (*mapSelectionToSource)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionFromSource)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QItemSelection* selection);
	bool (*submit)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self);
	void (*revert)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self);
	QVariant* (*data)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role);
	QVariant* (*headerData)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, int section, int orientation, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* index);
	int (*flags)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* index);
	bool (*setData)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*setItemData)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*setHeaderData)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);
	QModelIndex* (*buddy)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QModelIndex* parent);
	void (*sort)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int column, int order);
	QSize* (*span)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* index);
	bool (*hasChildren)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, int row, int column, QModelIndex* idx);
	QMimeData* (*mimeData)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self);
	int (*supportedDragActions)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self);
	int (*supportedDropActions)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self);
	QModelIndex* (*index)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* child);
	int (*rowCount)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* parent);
	int (*columnCount)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* parent);
	bool (*insertRows)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QAbstractProxyModel_VTable* vtbl, const QAbstractProxyModel* self);
	bool (*event)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QEvent* event);
	void (*connectNotify)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractProxyModel_VTable* vtbl, QAbstractProxyModel* self, QMetaMethod* signal);
};
QAbstractProxyModel* QAbstractProxyModel_new(struct QAbstractProxyModel_VTable* vtbl);
QAbstractProxyModel* QAbstractProxyModel_new2(struct QAbstractProxyModel_VTable* vtbl, QObject* parent);
void QAbstractProxyModel_virtbase(QAbstractProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QAbstractProxyModel_metaObject(const QAbstractProxyModel* self);
void* QAbstractProxyModel_metacast(QAbstractProxyModel* self, const char* param1);
int QAbstractProxyModel_metacall(QAbstractProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QAbstractProxyModel_tr(const char* s);
struct miqt_string QAbstractProxyModel_trUtf8(const char* s);
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
struct miqt_string QAbstractProxyModel_tr2(const char* s, const char* c);
struct miqt_string QAbstractProxyModel_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractProxyModel_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractProxyModel_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractProxyModel_virtualbase_metaObject(const void* self);
void* QAbstractProxyModel_virtualbase_metacast(void* self, const char* param1);
int QAbstractProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* sourceModel);
QModelIndex* QAbstractProxyModel_virtualbase_mapToSource(const void* self, QModelIndex* proxyIndex);
QModelIndex* QAbstractProxyModel_virtualbase_mapFromSource(const void* self, QModelIndex* sourceIndex);
QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* selection);
QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* selection);
bool QAbstractProxyModel_virtualbase_submit(void* self);
void QAbstractProxyModel_virtualbase_revert(void* self);
QVariant* QAbstractProxyModel_virtualbase_data(const void* self, QModelIndex* proxyIndex, int role);
QVariant* QAbstractProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_virtualbase_itemData(const void* self, QModelIndex* index);
int QAbstractProxyModel_virtualbase_flags(const void* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
bool QAbstractProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QAbstractProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
QModelIndex* QAbstractProxyModel_virtualbase_buddy(const void* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
void QAbstractProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
void QAbstractProxyModel_virtualbase_sort(void* self, int column, int order);
QSize* QAbstractProxyModel_virtualbase_span(const void* self, QModelIndex* index);
bool QAbstractProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
QModelIndex* QAbstractProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
QMimeData* QAbstractProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QAbstractProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_virtualbase_mimeTypes(const void* self);
int QAbstractProxyModel_virtualbase_supportedDragActions(const void* self);
int QAbstractProxyModel_virtualbase_supportedDropActions(const void* self);
QModelIndex* QAbstractProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QAbstractProxyModel_virtualbase_parent(const void* self, QModelIndex* child);
int QAbstractProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
int QAbstractProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QAbstractProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QAbstractProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_virtualbase_roleNames(const void* self);
bool QAbstractProxyModel_virtualbase_event(void* self, QEvent* event);
bool QAbstractProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractProxyModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractProxyModel_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAbstractProxyModel_protectedbase_resetInternalData(void* self);
QModelIndex* QAbstractProxyModel_protectedbase_createIndex(const void* self, int row, int column);
void QAbstractProxyModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QAbstractProxyModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QAbstractProxyModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endInsertRows(void* self);
void QAbstractProxyModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endRemoveRows(void* self);
bool QAbstractProxyModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QAbstractProxyModel_protectedbase_endMoveRows(void* self);
void QAbstractProxyModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endInsertColumns(void* self);
void QAbstractProxyModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last);
void QAbstractProxyModel_protectedbase_endRemoveColumns(void* self);
bool QAbstractProxyModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QAbstractProxyModel_protectedbase_endMoveColumns(void* self);
void QAbstractProxyModel_protectedbase_beginResetModel(void* self);
void QAbstractProxyModel_protectedbase_endResetModel(void* self);
void QAbstractProxyModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to);
void QAbstractProxyModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_protectedbase_persistentIndexList(const void* self);
QObject* QAbstractProxyModel_protectedbase_sender(const void* self);
int QAbstractProxyModel_protectedbase_senderSignalIndex(const void* self);
int QAbstractProxyModel_protectedbase_receivers(const void* self, const char* signal);
bool QAbstractProxyModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAbstractProxyModel_staticMetaObject();
void QAbstractProxyModel_delete(QAbstractProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
