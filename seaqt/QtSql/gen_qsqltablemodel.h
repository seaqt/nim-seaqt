#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLTABLEMODEL_H
#define SEAQT_QTSQL_GEN_QSQLTABLEMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QAbstractTableModel;
class QChildEvent;
class QDataStream;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QObject;
class QSize;
class QSqlDatabase;
class QSqlError;
class QSqlIndex;
class QSqlQuery;
class QSqlQueryModel;
class QSqlRecord;
class QSqlTableModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractTableModel QAbstractTableModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QSqlDatabase QSqlDatabase;
typedef struct QSqlError QSqlError;
typedef struct QSqlIndex QSqlIndex;
typedef struct QSqlQuery QSqlQuery;
typedef struct QSqlQueryModel QSqlQueryModel;
typedef struct QSqlRecord QSqlRecord;
typedef struct QSqlTableModel QSqlTableModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSqlTableModel VirtualQSqlTableModel;
typedef struct QSqlTableModel_VTable{
	void (*destructor)(VirtualQSqlTableModel* self);
	QMetaObject* (*metaObject)(const VirtualQSqlTableModel* self);
	void* (*metacast)(VirtualQSqlTableModel* self, const char* param1);
	int (*metacall)(VirtualQSqlTableModel* self, int param1, int param2, void** param3);
	void (*setTable)(VirtualQSqlTableModel* self, struct seaqt_string tableName);
	int (*flags)(const VirtualQSqlTableModel* self, QModelIndex* index);
	QVariant* (*data)(const VirtualQSqlTableModel* self, QModelIndex* idx, int role);
	bool (*setData)(VirtualQSqlTableModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQSqlTableModel* self, int section, int orientation, int role);
	void (*clear)(VirtualQSqlTableModel* self);
	void (*setEditStrategy)(VirtualQSqlTableModel* self, int strategy);
	void (*sort)(VirtualQSqlTableModel* self, int column, int order);
	void (*setSort)(VirtualQSqlTableModel* self, int column, int order);
	void (*setFilter)(VirtualQSqlTableModel* self, struct seaqt_string filter);
	int (*rowCount)(const VirtualQSqlTableModel* self, QModelIndex* parent);
	bool (*removeColumns)(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);
	bool (*insertRows)(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);
	void (*revertRow)(VirtualQSqlTableModel* self, int row);
	bool (*select)(VirtualQSqlTableModel* self);
	bool (*selectRow)(VirtualQSqlTableModel* self, int row);
	bool (*submit)(VirtualQSqlTableModel* self);
	void (*revert)(VirtualQSqlTableModel* self);
	bool (*updateRowInTable)(VirtualQSqlTableModel* self, int row, QSqlRecord* values);
	bool (*insertRowIntoTable)(VirtualQSqlTableModel* self, QSqlRecord* values);
	bool (*deleteRowFromTable)(VirtualQSqlTableModel* self, int row);
	struct seaqt_string (*orderByClause)(const VirtualQSqlTableModel* self);
	struct seaqt_string (*selectStatement)(const VirtualQSqlTableModel* self);
	QModelIndex* (*indexInQuery)(const VirtualQSqlTableModel* self, QModelIndex* item);
	int (*columnCount)(const VirtualQSqlTableModel* self, QModelIndex* parent);
	bool (*setHeaderData)(VirtualQSqlTableModel* self, int section, int orientation, QVariant* value, int role);
	bool (*insertColumns)(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);
	void (*fetchMore)(VirtualQSqlTableModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQSqlTableModel* self, QModelIndex* parent);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQSqlTableModel* self);
	void (*queryChange)(VirtualQSqlTableModel* self);
	QModelIndex* (*index)(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* idx);
	bool (*dropMimeData)(VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQSqlTableModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQSqlTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQSqlTableModel* self);
	QMimeData* (*mimeData)(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQSqlTableModel* self);
	int (*supportedDragActions)(const VirtualQSqlTableModel* self);
	bool (*moveRows)(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	QModelIndex* (*buddy)(const VirtualQSqlTableModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQSqlTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQSqlTableModel* self, QModelIndex* index);
	bool (*event)(VirtualQSqlTableModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQSqlTableModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSqlTableModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSqlTableModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQSqlTableModel* self, QEvent* event);
	void (*connectNotify)(VirtualQSqlTableModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSqlTableModel* self, QMetaMethod* signal);
}QSqlTableModel_VTable;

void* QSqlTableModel_vdata(VirtualQSqlTableModel* self);
VirtualQSqlTableModel* vdata_QSqlTableModel(void* vdata);

VirtualQSqlTableModel* QSqlTableModel_new(const QSqlTableModel_VTable* vtbl, size_t vdata);
VirtualQSqlTableModel* QSqlTableModel_new2(const QSqlTableModel_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQSqlTableModel* QSqlTableModel_new3(const QSqlTableModel_VTable* vtbl, size_t vdata, QObject* parent, QSqlDatabase* db);

void QSqlTableModel_virtbase(QSqlTableModel* src, QSqlQueryModel** outptr_QSqlQueryModel);
QMetaObject* QSqlTableModel_metaObject(const QSqlTableModel* self);
void* QSqlTableModel_metacast(QSqlTableModel* self, const char* param1);
int QSqlTableModel_metacall(QSqlTableModel* self, int param1, int param2, void** param3);
struct seaqt_string QSqlTableModel_tr(const char* s);
struct seaqt_string QSqlTableModel_trUtf8(const char* s);
void QSqlTableModel_setTable(QSqlTableModel* self, struct seaqt_string tableName);
struct seaqt_string QSqlTableModel_tableName(const QSqlTableModel* self);
int QSqlTableModel_flags(const QSqlTableModel* self, QModelIndex* index);
QSqlRecord* QSqlTableModel_record(const QSqlTableModel* self);
QSqlRecord* QSqlTableModel_recordWithRow(const QSqlTableModel* self, int row);
QVariant* QSqlTableModel_data(const QSqlTableModel* self, QModelIndex* idx, int role);
bool QSqlTableModel_setData(QSqlTableModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSqlTableModel_headerData(const QSqlTableModel* self, int section, int orientation, int role);
bool QSqlTableModel_isDirty(const QSqlTableModel* self);
bool QSqlTableModel_isDirtyWithIndex(const QSqlTableModel* self, QModelIndex* index);
void QSqlTableModel_clear(QSqlTableModel* self);
void QSqlTableModel_setEditStrategy(QSqlTableModel* self, int strategy);
int QSqlTableModel_editStrategy(const QSqlTableModel* self);
QSqlIndex* QSqlTableModel_primaryKey(const QSqlTableModel* self);
QSqlDatabase* QSqlTableModel_database(const QSqlTableModel* self);
int QSqlTableModel_fieldIndex(const QSqlTableModel* self, struct seaqt_string fieldName);
void QSqlTableModel_sort(QSqlTableModel* self, int column, int order);
void QSqlTableModel_setSort(QSqlTableModel* self, int column, int order);
struct seaqt_string QSqlTableModel_filter(const QSqlTableModel* self);
void QSqlTableModel_setFilter(QSqlTableModel* self, struct seaqt_string filter);
int QSqlTableModel_rowCount(const QSqlTableModel* self, QModelIndex* parent);
bool QSqlTableModel_removeColumns(QSqlTableModel* self, int column, int count, QModelIndex* parent);
bool QSqlTableModel_removeRows(QSqlTableModel* self, int row, int count, QModelIndex* parent);
bool QSqlTableModel_insertRows(QSqlTableModel* self, int row, int count, QModelIndex* parent);
bool QSqlTableModel_insertRecord(QSqlTableModel* self, int row, QSqlRecord* record);
bool QSqlTableModel_setRecord(QSqlTableModel* self, int row, QSqlRecord* record);
void QSqlTableModel_revertRow(QSqlTableModel* self, int row);
bool QSqlTableModel_select(QSqlTableModel* self);
bool QSqlTableModel_selectRow(QSqlTableModel* self, int row);
bool QSqlTableModel_submit(QSqlTableModel* self);
void QSqlTableModel_revert(QSqlTableModel* self);
bool QSqlTableModel_submitAll(QSqlTableModel* self);
void QSqlTableModel_revertAll(QSqlTableModel* self);
void QSqlTableModel_primeInsert(QSqlTableModel* self, int row, QSqlRecord* record);
void QSqlTableModel_connect_primeInsert(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int, QSqlRecord*), void (*release)(intptr_t));
void QSqlTableModel_beforeInsert(QSqlTableModel* self, QSqlRecord* record);
void QSqlTableModel_connect_beforeInsert(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, QSqlRecord*), void (*release)(intptr_t));
void QSqlTableModel_beforeUpdate(QSqlTableModel* self, int row, QSqlRecord* record);
void QSqlTableModel_connect_beforeUpdate(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int, QSqlRecord*), void (*release)(intptr_t));
void QSqlTableModel_beforeDelete(QSqlTableModel* self, int row);
void QSqlTableModel_connect_beforeDelete(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
bool QSqlTableModel_updateRowInTable(QSqlTableModel* self, int row, QSqlRecord* values);
bool QSqlTableModel_insertRowIntoTable(QSqlTableModel* self, QSqlRecord* values);
bool QSqlTableModel_deleteRowFromTable(QSqlTableModel* self, int row);
struct seaqt_string QSqlTableModel_orderByClause(const QSqlTableModel* self);
struct seaqt_string QSqlTableModel_selectStatement(const QSqlTableModel* self);
QModelIndex* QSqlTableModel_indexInQuery(const QSqlTableModel* self, QModelIndex* item);
struct seaqt_string QSqlTableModel_tr2(const char* s, const char* c);
struct seaqt_string QSqlTableModel_tr3(const char* s, const char* c, int n);
struct seaqt_string QSqlTableModel_trUtf82(const char* s, const char* c);
struct seaqt_string QSqlTableModel_trUtf83(const char* s, const char* c, int n);

QMetaObject* QSqlTableModel_virtualbase_metaObject(const VirtualQSqlTableModel* self);
void* QSqlTableModel_virtualbase_metacast(VirtualQSqlTableModel* self, const char* param1);
int QSqlTableModel_virtualbase_metacall(VirtualQSqlTableModel* self, int param1, int param2, void** param3);
void QSqlTableModel_virtualbase_setTable(VirtualQSqlTableModel* self, struct seaqt_string tableName);
int QSqlTableModel_virtualbase_flags(const VirtualQSqlTableModel* self, QModelIndex* index);
QVariant* QSqlTableModel_virtualbase_data(const VirtualQSqlTableModel* self, QModelIndex* idx, int role);
bool QSqlTableModel_virtualbase_setData(VirtualQSqlTableModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSqlTableModel_virtualbase_headerData(const VirtualQSqlTableModel* self, int section, int orientation, int role);
void QSqlTableModel_virtualbase_clear(VirtualQSqlTableModel* self);
void QSqlTableModel_virtualbase_setEditStrategy(VirtualQSqlTableModel* self, int strategy);
void QSqlTableModel_virtualbase_sort(VirtualQSqlTableModel* self, int column, int order);
void QSqlTableModel_virtualbase_setSort(VirtualQSqlTableModel* self, int column, int order);
void QSqlTableModel_virtualbase_setFilter(VirtualQSqlTableModel* self, struct seaqt_string filter);
int QSqlTableModel_virtualbase_rowCount(const VirtualQSqlTableModel* self, QModelIndex* parent);
bool QSqlTableModel_virtualbase_removeColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);
bool QSqlTableModel_virtualbase_removeRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);
bool QSqlTableModel_virtualbase_insertRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);
void QSqlTableModel_virtualbase_revertRow(VirtualQSqlTableModel* self, int row);
bool QSqlTableModel_virtualbase_select(VirtualQSqlTableModel* self);
bool QSqlTableModel_virtualbase_selectRow(VirtualQSqlTableModel* self, int row);
bool QSqlTableModel_virtualbase_submit(VirtualQSqlTableModel* self);
void QSqlTableModel_virtualbase_revert(VirtualQSqlTableModel* self);
bool QSqlTableModel_virtualbase_updateRowInTable(VirtualQSqlTableModel* self, int row, QSqlRecord* values);
bool QSqlTableModel_virtualbase_insertRowIntoTable(VirtualQSqlTableModel* self, QSqlRecord* values);
bool QSqlTableModel_virtualbase_deleteRowFromTable(VirtualQSqlTableModel* self, int row);
struct seaqt_string QSqlTableModel_virtualbase_orderByClause(const VirtualQSqlTableModel* self);
struct seaqt_string QSqlTableModel_virtualbase_selectStatement(const VirtualQSqlTableModel* self);
QModelIndex* QSqlTableModel_virtualbase_indexInQuery(const VirtualQSqlTableModel* self, QModelIndex* item);
int QSqlTableModel_virtualbase_columnCount(const VirtualQSqlTableModel* self, QModelIndex* parent);
bool QSqlTableModel_virtualbase_setHeaderData(VirtualQSqlTableModel* self, int section, int orientation, QVariant* value, int role);
bool QSqlTableModel_virtualbase_insertColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);
void QSqlTableModel_virtualbase_fetchMore(VirtualQSqlTableModel* self, QModelIndex* parent);
bool QSqlTableModel_virtualbase_canFetchMore(const VirtualQSqlTableModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QSqlTableModel_virtualbase_roleNames(const VirtualQSqlTableModel* self);
void QSqlTableModel_virtualbase_queryChange(VirtualQSqlTableModel* self);
QModelIndex* QSqlTableModel_virtualbase_index(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSqlTableModel_virtualbase_sibling(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* idx);
bool QSqlTableModel_virtualbase_dropMimeData(VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct seaqt_map /* of int to QVariant* */  QSqlTableModel_virtualbase_itemData(const VirtualQSqlTableModel* self, QModelIndex* index);
bool QSqlTableModel_virtualbase_setItemData(VirtualQSqlTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
struct seaqt_array /* of struct seaqt_string */  QSqlTableModel_virtualbase_mimeTypes(const VirtualQSqlTableModel* self);
QMimeData* QSqlTableModel_virtualbase_mimeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QSqlTableModel_virtualbase_canDropMimeData(const VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSqlTableModel_virtualbase_supportedDropActions(const VirtualQSqlTableModel* self);
int QSqlTableModel_virtualbase_supportedDragActions(const VirtualQSqlTableModel* self);
bool QSqlTableModel_virtualbase_moveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QSqlTableModel_virtualbase_moveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QModelIndex* QSqlTableModel_virtualbase_buddy(const VirtualQSqlTableModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QSqlTableModel_virtualbase_match(const VirtualQSqlTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSqlTableModel_virtualbase_span(const VirtualQSqlTableModel* self, QModelIndex* index);
bool QSqlTableModel_virtualbase_event(VirtualQSqlTableModel* self, QEvent* event);
bool QSqlTableModel_virtualbase_eventFilter(VirtualQSqlTableModel* self, QObject* watched, QEvent* event);
void QSqlTableModel_virtualbase_timerEvent(VirtualQSqlTableModel* self, QTimerEvent* event);
void QSqlTableModel_virtualbase_childEvent(VirtualQSqlTableModel* self, QChildEvent* event);
void QSqlTableModel_virtualbase_customEvent(VirtualQSqlTableModel* self, QEvent* event);
void QSqlTableModel_virtualbase_connectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal);
void QSqlTableModel_virtualbase_disconnectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal);

void QSqlTableModel_protectedbase_setPrimaryKey(VirtualQSqlTableModel* self, QSqlIndex* key);
void QSqlTableModel_protectedbase_setQuery(VirtualQSqlTableModel* self, QSqlQuery* query);
QSqlRecord* QSqlTableModel_protectedbase_primaryValues(const VirtualQSqlTableModel* self, int row);
void QSqlTableModel_protectedbase_beginInsertRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
void QSqlTableModel_protectedbase_endInsertRows(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_beginRemoveRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
void QSqlTableModel_protectedbase_endRemoveRows(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_beginInsertColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
void QSqlTableModel_protectedbase_endInsertColumns(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_beginRemoveColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
void QSqlTableModel_protectedbase_endRemoveColumns(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_beginResetModel(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_endResetModel(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_setLastError(VirtualQSqlTableModel* self, QSqlError* error);
void QSqlTableModel_protectedbase_resetInternalData(VirtualQSqlTableModel* self);
QModelIndex* QSqlTableModel_protectedbase_createIndex(const VirtualQSqlTableModel* self, int row, int column);
void QSqlTableModel_protectedbase_encodeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QSqlTableModel_protectedbase_decodeData(VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
bool QSqlTableModel_protectedbase_beginMoveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QSqlTableModel_protectedbase_endMoveRows(VirtualQSqlTableModel* self);
bool QSqlTableModel_protectedbase_beginMoveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QSqlTableModel_protectedbase_endMoveColumns(VirtualQSqlTableModel* self);
void QSqlTableModel_protectedbase_changePersistentIndex(VirtualQSqlTableModel* self, QModelIndex* from, QModelIndex* to);
void QSqlTableModel_protectedbase_changePersistentIndexList(VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QSqlTableModel_protectedbase_persistentIndexList(const VirtualQSqlTableModel* self);
QObject* QSqlTableModel_protectedbase_sender(const VirtualQSqlTableModel* self);
int QSqlTableModel_protectedbase_senderSignalIndex(const VirtualQSqlTableModel* self);
int QSqlTableModel_protectedbase_receivers(const VirtualQSqlTableModel* self, const char* signal);
bool QSqlTableModel_protectedbase_isSignalConnected(const VirtualQSqlTableModel* self, QMetaMethod* signal);

const QMetaObject* QSqlTableModel_staticMetaObject();
void QSqlTableModel_delete(QSqlTableModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
