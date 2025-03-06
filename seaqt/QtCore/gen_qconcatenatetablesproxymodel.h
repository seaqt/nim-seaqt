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

struct QConcatenateTablesProxyModel_VTable {
	void (*destructor)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self);
	QMetaObject* (*metaObject)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self);
	void* (*metacast)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, const char* param1);
	int (*metacall)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int param1, int param2, void** param3);
	QVariant* (*data)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index, int role);
	bool (*setData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);
	bool (*setItemData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	int (*flags)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index);
	QModelIndex* (*index)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index);
	int (*rowCount)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, int section, int orientation, int role);
	int (*columnCount)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self);
	QMimeData* (*mimeData)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QSize* (*span)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index);
	QModelIndex* (*sibling)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, int row, int column, QModelIndex* idx);
	bool (*hasChildren)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* parent);
	bool (*setHeaderData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int section, int orientation, QVariant* value, int role);
	bool (*clearItemData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* index);
	int (*supportedDropActions)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self);
	int (*supportedDragActions)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self);
	bool (*insertRows)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QModelIndex* parent);
	bool (*canFetchMore)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* parent);
	void (*sort)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, int column, int order);
	QModelIndex* (*buddy)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self);
	void (*multiData)(struct QConcatenateTablesProxyModel_VTable* vtbl, const QConcatenateTablesProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self);
	void (*revert)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self);
	void (*resetInternalData)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self);
	bool (*event)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QEvent* event);
	bool (*eventFilter)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QTimerEvent* event);
	void (*childEvent)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QChildEvent* event);
	void (*customEvent)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QEvent* event);
	void (*connectNotify)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QConcatenateTablesProxyModel_VTable* vtbl, QConcatenateTablesProxyModel* self, QMetaMethod* signal);
};
QConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new(struct QConcatenateTablesProxyModel_VTable* vtbl);
QConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new2(struct QConcatenateTablesProxyModel_VTable* vtbl, QObject* parent);
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
QMetaObject* QConcatenateTablesProxyModel_virtualbase_metaObject(const void* self);
void* QConcatenateTablesProxyModel_virtualbase_metacast(void* self, const char* param1);
int QConcatenateTablesProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QVariant* QConcatenateTablesProxyModel_virtualbase_data(const void* self, QModelIndex* index, int role);
bool QConcatenateTablesProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_virtualbase_itemData(const void* self, QModelIndex* proxyIndex);
bool QConcatenateTablesProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
int QConcatenateTablesProxyModel_virtualbase_flags(const void* self, QModelIndex* index);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_parent(const void* self, QModelIndex* index);
int QConcatenateTablesProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
QVariant* QConcatenateTablesProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
int QConcatenateTablesProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_mimeTypes(const void* self);
QMimeData* QConcatenateTablesProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QConcatenateTablesProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QSize* QConcatenateTablesProxyModel_virtualbase_span(const void* self, QModelIndex* index);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
bool QConcatenateTablesProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
bool QConcatenateTablesProxyModel_virtualbase_clearItemData(void* self, QModelIndex* index);
int QConcatenateTablesProxyModel_virtualbase_supportedDropActions(const void* self);
int QConcatenateTablesProxyModel_virtualbase_supportedDragActions(const void* self);
bool QConcatenateTablesProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QConcatenateTablesProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QConcatenateTablesProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
bool QConcatenateTablesProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
void QConcatenateTablesProxyModel_virtualbase_sort(void* self, int column, int order);
QModelIndex* QConcatenateTablesProxyModel_virtualbase_buddy(const void* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
struct miqt_map /* of int to struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_roleNames(const void* self);
void QConcatenateTablesProxyModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QConcatenateTablesProxyModel_virtualbase_submit(void* self);
void QConcatenateTablesProxyModel_virtualbase_revert(void* self);
void QConcatenateTablesProxyModel_virtualbase_resetInternalData(void* self);
bool QConcatenateTablesProxyModel_virtualbase_event(void* self, QEvent* event);
bool QConcatenateTablesProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QConcatenateTablesProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QConcatenateTablesProxyModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QConcatenateTablesProxyModel_virtualbase_customEvent(void* self, QEvent* event);
void QConcatenateTablesProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QConcatenateTablesProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QModelIndex* QConcatenateTablesProxyModel_protectedbase_createIndex(bool* _dynamic_cast_ok, const void* self, int row, int column);
void QConcatenateTablesProxyModel_protectedbase_encodeData(bool* _dynamic_cast_ok, const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QConcatenateTablesProxyModel_protectedbase_decodeData(bool* _dynamic_cast_ok, void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QConcatenateTablesProxyModel_protectedbase_beginInsertRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endInsertRows(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_beginRemoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endRemoveRows(bool* _dynamic_cast_ok, void* self);
bool QConcatenateTablesProxyModel_protectedbase_beginMoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QConcatenateTablesProxyModel_protectedbase_endMoveRows(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_beginInsertColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endInsertColumns(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QConcatenateTablesProxyModel_protectedbase_endRemoveColumns(bool* _dynamic_cast_ok, void* self);
bool QConcatenateTablesProxyModel_protectedbase_beginMoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QConcatenateTablesProxyModel_protectedbase_endMoveColumns(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_beginResetModel(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_endResetModel(bool* _dynamic_cast_ok, void* self);
void QConcatenateTablesProxyModel_protectedbase_changePersistentIndex(bool* _dynamic_cast_ok, void* self, QModelIndex* from, QModelIndex* to);
void QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(bool* _dynamic_cast_ok, void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_protectedbase_persistentIndexList(bool* _dynamic_cast_ok, const void* self);
QObject* QConcatenateTablesProxyModel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QConcatenateTablesProxyModel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QConcatenateTablesProxyModel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QConcatenateTablesProxyModel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QConcatenateTablesProxyModel_staticMetaObject();
void QConcatenateTablesProxyModel_delete(QConcatenateTablesProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
