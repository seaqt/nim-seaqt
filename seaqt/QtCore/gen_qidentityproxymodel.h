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

struct QIdentityProxyModel_VTable {
	void (*destructor)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self);
	QMetaObject* (*metaObject)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self);
	void* (*metacast)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, const char* param1);
	int (*metacall)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int param1, int param2, void** param3);
	int (*columnCount)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* parent);
	QModelIndex* (*index)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*mapFromSource)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* sourceIndex);
	QModelIndex* (*mapToSource)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*parent)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* child);
	int (*rowCount)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, int section, int orientation, int role);
	bool (*dropMimeData)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, int row, int column, QModelIndex* idx);
	QItemSelection* (*mapSelectionFromSource)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionToSource)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	void (*setSourceModel)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QAbstractItemModel* sourceModel);
	bool (*insertColumns)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*insertRows)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*submit)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self);
	void (*revert)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self);
	QVariant* (*data)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* proxyIndex, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* index);
	int (*flags)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* index);
	bool (*setData)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*setItemData)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*setHeaderData)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int section, int orientation, QVariant* value, int role);
	QModelIndex* (*buddy)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QModelIndex* parent);
	void (*sort)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, int column, int order);
	QSize* (*span)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* index);
	bool (*hasChildren)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QModelIndex* parent);
	QMimeData* (*mimeData)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self);
	int (*supportedDragActions)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self);
	int (*supportedDropActions)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QIdentityProxyModel_VTable* vtbl, const QIdentityProxyModel* self);
	bool (*event)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QEvent* event);
	bool (*eventFilter)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QTimerEvent* event);
	void (*childEvent)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QChildEvent* event);
	void (*customEvent)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QEvent* event);
	void (*connectNotify)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QIdentityProxyModel_VTable* vtbl, QIdentityProxyModel* self, QMetaMethod* signal);
};
QIdentityProxyModel* QIdentityProxyModel_new(struct QIdentityProxyModel_VTable* vtbl);
QIdentityProxyModel* QIdentityProxyModel_new2(struct QIdentityProxyModel_VTable* vtbl, QObject* parent);
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
QMetaObject* QIdentityProxyModel_virtualbase_metaObject(const void* self);
void* QIdentityProxyModel_virtualbase_metacast(void* self, const char* param1);
int QIdentityProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QIdentityProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_mapFromSource(const void* self, QModelIndex* sourceIndex);
QModelIndex* QIdentityProxyModel_virtualbase_mapToSource(const void* self, QModelIndex* proxyIndex);
QModelIndex* QIdentityProxyModel_virtualbase_parent(const void* self, QModelIndex* child);
int QIdentityProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
QVariant* QIdentityProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
bool QIdentityProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QModelIndex* QIdentityProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* selection);
QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QIdentityProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* sourceModel);
bool QIdentityProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QIdentityProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QIdentityProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
bool QIdentityProxyModel_virtualbase_submit(void* self);
void QIdentityProxyModel_virtualbase_revert(void* self);
QVariant* QIdentityProxyModel_virtualbase_data(const void* self, QModelIndex* proxyIndex, int role);
struct miqt_map /* of int to QVariant* */  QIdentityProxyModel_virtualbase_itemData(const void* self, QModelIndex* index);
int QIdentityProxyModel_virtualbase_flags(const void* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
bool QIdentityProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QIdentityProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
QModelIndex* QIdentityProxyModel_virtualbase_buddy(const void* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
void QIdentityProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
void QIdentityProxyModel_virtualbase_sort(void* self, int column, int order);
QSize* QIdentityProxyModel_virtualbase_span(const void* self, QModelIndex* index);
bool QIdentityProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
QMimeData* QIdentityProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QIdentityProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QIdentityProxyModel_virtualbase_mimeTypes(const void* self);
int QIdentityProxyModel_virtualbase_supportedDragActions(const void* self);
int QIdentityProxyModel_virtualbase_supportedDropActions(const void* self);
struct miqt_map /* of int to struct miqt_string */  QIdentityProxyModel_virtualbase_roleNames(const void* self);
bool QIdentityProxyModel_virtualbase_event(void* self, QEvent* event);
bool QIdentityProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QIdentityProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QIdentityProxyModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QIdentityProxyModel_virtualbase_customEvent(void* self, QEvent* event);
void QIdentityProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QIdentityProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QIdentityProxyModel_protectedbase_resetInternalData(void* self);
QModelIndex* QIdentityProxyModel_protectedbase_createIndex(const void* self, int row, int column);
void QIdentityProxyModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QIdentityProxyModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QIdentityProxyModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endInsertRows(void* self);
void QIdentityProxyModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endRemoveRows(void* self);
bool QIdentityProxyModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QIdentityProxyModel_protectedbase_endMoveRows(void* self);
void QIdentityProxyModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endInsertColumns(void* self);
void QIdentityProxyModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last);
void QIdentityProxyModel_protectedbase_endRemoveColumns(void* self);
bool QIdentityProxyModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QIdentityProxyModel_protectedbase_endMoveColumns(void* self);
void QIdentityProxyModel_protectedbase_beginResetModel(void* self);
void QIdentityProxyModel_protectedbase_endResetModel(void* self);
void QIdentityProxyModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to);
void QIdentityProxyModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_protectedbase_persistentIndexList(const void* self);
QObject* QIdentityProxyModel_protectedbase_sender(const void* self);
int QIdentityProxyModel_protectedbase_senderSignalIndex(const void* self);
int QIdentityProxyModel_protectedbase_receivers(const void* self, const char* signal);
bool QIdentityProxyModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QIdentityProxyModel_staticMetaObject();
void QIdentityProxyModel_delete(QIdentityProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
