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

struct QTransposeProxyModel_VTable {
	void (*destructor)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self);
	QMetaObject* (*metaObject)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self);
	void* (*metacast)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, const char* param1);
	int (*metacall)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QAbstractItemModel* newSourceModel);
	int (*rowCount)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* parent);
	int (*columnCount)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* parent);
	QVariant* (*headerData)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);
	bool (*setItemData)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	QSize* (*span)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* index);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* index);
	QModelIndex* (*mapFromSource)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* sourceIndex);
	QModelIndex* (*mapToSource)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*parent)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* index);
	QModelIndex* (*index)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, int row, int column, QModelIndex* parent);
	bool (*insertRows)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeRows)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*insertColumns)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*moveColumns)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*sort)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, int column, int order);
	QItemSelection* (*mapSelectionToSource)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QItemSelection* selection);
	QItemSelection* (*mapSelectionFromSource)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QItemSelection* selection);
	bool (*submit)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self);
	void (*revert)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self);
	QVariant* (*data)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* proxyIndex, int role);
	int (*flags)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* index);
	bool (*setData)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);
	QModelIndex* (*buddy)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* index);
	bool (*canFetchMore)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* parent);
	void (*fetchMore)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QModelIndex* parent);
	bool (*hasChildren)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, int row, int column, QModelIndex* idx);
	QMimeData* (*mimeData)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self);
	int (*supportedDragActions)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self);
	int (*supportedDropActions)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QTransposeProxyModel_VTable* vtbl, const QTransposeProxyModel* self);
	bool (*event)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QEvent* event);
	bool (*eventFilter)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QTimerEvent* event);
	void (*childEvent)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QChildEvent* event);
	void (*customEvent)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QEvent* event);
	void (*connectNotify)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTransposeProxyModel_VTable* vtbl, QTransposeProxyModel* self, QMetaMethod* signal);
};
QTransposeProxyModel* QTransposeProxyModel_new(struct QTransposeProxyModel_VTable* vtbl);
QTransposeProxyModel* QTransposeProxyModel_new2(struct QTransposeProxyModel_VTable* vtbl, QObject* parent);
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
QMetaObject* QTransposeProxyModel_virtualbase_metaObject(const void* self);
void* QTransposeProxyModel_virtualbase_metacast(void* self, const char* param1);
int QTransposeProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QTransposeProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* newSourceModel);
int QTransposeProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
int QTransposeProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
QVariant* QTransposeProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
bool QTransposeProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
bool QTransposeProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
QSize* QTransposeProxyModel_virtualbase_span(const void* self, QModelIndex* index);
struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_virtualbase_itemData(const void* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_virtualbase_mapFromSource(const void* self, QModelIndex* sourceIndex);
QModelIndex* QTransposeProxyModel_virtualbase_mapToSource(const void* self, QModelIndex* proxyIndex);
QModelIndex* QTransposeProxyModel_virtualbase_parent(const void* self, QModelIndex* index);
QModelIndex* QTransposeProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QTransposeProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QTransposeProxyModel_virtualbase_sort(void* self, int column, int order);
QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* selection);
QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* selection);
bool QTransposeProxyModel_virtualbase_submit(void* self);
void QTransposeProxyModel_virtualbase_revert(void* self);
QVariant* QTransposeProxyModel_virtualbase_data(const void* self, QModelIndex* proxyIndex, int role);
int QTransposeProxyModel_virtualbase_flags(const void* self, QModelIndex* index);
bool QTransposeProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
QModelIndex* QTransposeProxyModel_virtualbase_buddy(const void* self, QModelIndex* index);
bool QTransposeProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
void QTransposeProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
QModelIndex* QTransposeProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
QMimeData* QTransposeProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QTransposeProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QTransposeProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct miqt_array /* of struct miqt_string */  QTransposeProxyModel_virtualbase_mimeTypes(const void* self);
int QTransposeProxyModel_virtualbase_supportedDragActions(const void* self);
int QTransposeProxyModel_virtualbase_supportedDropActions(const void* self);
struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
struct miqt_map /* of int to struct miqt_string */  QTransposeProxyModel_virtualbase_roleNames(const void* self);
bool QTransposeProxyModel_virtualbase_event(void* self, QEvent* event);
bool QTransposeProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTransposeProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTransposeProxyModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QTransposeProxyModel_virtualbase_customEvent(void* self, QEvent* event);
void QTransposeProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTransposeProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTransposeProxyModel_protectedbase_resetInternalData(bool* _dynamic_cast_ok, void* self);
QModelIndex* QTransposeProxyModel_protectedbase_createIndex(bool* _dynamic_cast_ok, const void* self, int row, int column);
void QTransposeProxyModel_protectedbase_encodeData(bool* _dynamic_cast_ok, const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QTransposeProxyModel_protectedbase_decodeData(bool* _dynamic_cast_ok, void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QTransposeProxyModel_protectedbase_beginInsertRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endInsertRows(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_beginRemoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endRemoveRows(bool* _dynamic_cast_ok, void* self);
bool QTransposeProxyModel_protectedbase_beginMoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QTransposeProxyModel_protectedbase_endMoveRows(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_beginInsertColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endInsertColumns(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_beginRemoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QTransposeProxyModel_protectedbase_endRemoveColumns(bool* _dynamic_cast_ok, void* self);
bool QTransposeProxyModel_protectedbase_beginMoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QTransposeProxyModel_protectedbase_endMoveColumns(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_beginResetModel(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_endResetModel(bool* _dynamic_cast_ok, void* self);
void QTransposeProxyModel_protectedbase_changePersistentIndex(bool* _dynamic_cast_ok, void* self, QModelIndex* from, QModelIndex* to);
void QTransposeProxyModel_protectedbase_changePersistentIndexList(bool* _dynamic_cast_ok, void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_protectedbase_persistentIndexList(bool* _dynamic_cast_ok, const void* self);
QObject* QTransposeProxyModel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTransposeProxyModel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTransposeProxyModel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTransposeProxyModel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTransposeProxyModel_staticMetaObject();
void QTransposeProxyModel_delete(QTransposeProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
