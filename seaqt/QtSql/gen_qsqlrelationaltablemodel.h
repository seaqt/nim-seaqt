#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLRELATIONALTABLEMODEL_H
#define SEAQT_QTSQL_GEN_QSQLRELATIONALTABLEMODEL_H

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
class QModelRoleDataSpan;
class QObject;
class QSize;
class QSqlDatabase;
class QSqlError;
class QSqlIndex;
class QSqlQueryModel;
class QSqlRecord;
class QSqlRelation;
class QSqlRelationalTableModel;
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
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QSqlDatabase QSqlDatabase;
typedef struct QSqlError QSqlError;
typedef struct QSqlIndex QSqlIndex;
typedef struct QSqlQueryModel QSqlQueryModel;
typedef struct QSqlRecord QSqlRecord;
typedef struct QSqlRelation QSqlRelation;
typedef struct QSqlRelationalTableModel QSqlRelationalTableModel;
typedef struct QSqlTableModel QSqlTableModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

QSqlRelation* QSqlRelation_new();
QSqlRelation* QSqlRelation_new_aTableName_indexCol_displayCol(struct seaqt_string aTableName, struct seaqt_string indexCol, struct seaqt_string displayCol);
QSqlRelation* QSqlRelation_new_from(QSqlRelation* from);

void QSqlRelation_swap(QSqlRelation* self, QSqlRelation* other);
struct seaqt_string QSqlRelation_tableName(const QSqlRelation* self);
struct seaqt_string QSqlRelation_indexColumn(const QSqlRelation* self);
struct seaqt_string QSqlRelation_displayColumn(const QSqlRelation* self);
bool QSqlRelation_isValid(const QSqlRelation* self);
void QSqlRelation_operatorAssign(QSqlRelation* self, QSqlRelation* from);

void QSqlRelation_delete(QSqlRelation* self);

typedef struct VirtualQSqlRelationalTableModel VirtualQSqlRelationalTableModel;
typedef struct QSqlRelationalTableModel_VTable{
	void (*destructor)(VirtualQSqlRelationalTableModel* self);
	QMetaObject* (*metaObject)(const VirtualQSqlRelationalTableModel* self);
	void* (*metacast)(VirtualQSqlRelationalTableModel* self, const char* param1);
	int (*metacall)(VirtualQSqlRelationalTableModel* self, int param1, int param2, void** param3);
	QVariant* (*data)(const VirtualQSqlRelationalTableModel* self, QModelIndex* item, int role);
	bool (*setData)(VirtualQSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role);
	bool (*removeColumns)(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);
	void (*clear)(VirtualQSqlRelationalTableModel* self);
	bool (*select)(VirtualQSqlRelationalTableModel* self);
	void (*setTable)(VirtualQSqlRelationalTableModel* self, struct seaqt_string tableName);
	void (*setRelation)(VirtualQSqlRelationalTableModel* self, int column, QSqlRelation* relation);
	QSqlTableModel* (*relationModel)(const VirtualQSqlRelationalTableModel* self, int column);
	void (*revertRow)(VirtualQSqlRelationalTableModel* self, int row);
	struct seaqt_string (*selectStatement)(const VirtualQSqlRelationalTableModel* self);
	bool (*updateRowInTable)(VirtualQSqlRelationalTableModel* self, int row, QSqlRecord* values);
	bool (*insertRowIntoTable)(VirtualQSqlRelationalTableModel* self, QSqlRecord* values);
	struct seaqt_string (*orderByClause)(const VirtualQSqlRelationalTableModel* self);
	int (*flags)(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
	bool (*clearItemData)(VirtualQSqlRelationalTableModel* self, QModelIndex* index);
	QVariant* (*headerData)(const VirtualQSqlRelationalTableModel* self, int section, int orientation, int role);
	void (*setEditStrategy)(VirtualQSqlRelationalTableModel* self, int strategy);
	void (*sort)(VirtualQSqlRelationalTableModel* self, int column, int order);
	void (*setSort)(VirtualQSqlRelationalTableModel* self, int column, int order);
	void (*setFilter)(VirtualQSqlRelationalTableModel* self, struct seaqt_string filter);
	int (*rowCount)(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
	bool (*removeRows)(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);
	bool (*insertRows)(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);
	bool (*selectRow)(VirtualQSqlRelationalTableModel* self, int row);
	bool (*submit)(VirtualQSqlRelationalTableModel* self);
	void (*revert)(VirtualQSqlRelationalTableModel* self);
	bool (*deleteRowFromTable)(VirtualQSqlRelationalTableModel* self, int row);
	QModelIndex* (*indexInQuery)(const VirtualQSqlRelationalTableModel* self, QModelIndex* item);
	int (*columnCount)(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
	bool (*setHeaderData)(VirtualQSqlRelationalTableModel* self, int section, int orientation, QVariant* value, int role);
	bool (*insertColumns)(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);
	void (*fetchMore)(VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQSqlRelationalTableModel* self);
	void (*queryChange)(VirtualQSqlRelationalTableModel* self);
	QModelIndex* (*index)(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* idx);
	bool (*dropMimeData)(VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQSqlRelationalTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQSqlRelationalTableModel* self);
	QMimeData* (*mimeData)(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQSqlRelationalTableModel* self);
	int (*supportedDragActions)(const VirtualQSqlRelationalTableModel* self);
	bool (*moveRows)(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	QModelIndex* (*buddy)(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQSqlRelationalTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
	void (*multiData)(const VirtualQSqlRelationalTableModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	void (*resetInternalData)(VirtualQSqlRelationalTableModel* self);
	bool (*event)(VirtualQSqlRelationalTableModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQSqlRelationalTableModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSqlRelationalTableModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSqlRelationalTableModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQSqlRelationalTableModel* self, QEvent* event);
	void (*connectNotify)(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);
}QSqlRelationalTableModel_VTable;

void* QSqlRelationalTableModel_vdata(VirtualQSqlRelationalTableModel* self);
VirtualQSqlRelationalTableModel* vdata_QSqlRelationalTableModel(void* vdata);

VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata);
VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new_parent(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata, QObject* parent);
VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new_parent_db(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata, QObject* parent, QSqlDatabase* db);

void QSqlRelationalTableModel_virtbase(QSqlRelationalTableModel* src, QSqlTableModel** outptr_QSqlTableModel);
QMetaObject* QSqlRelationalTableModel_metaObject(const QSqlRelationalTableModel* self);
void* QSqlRelationalTableModel_metacast(QSqlRelationalTableModel* self, const char* param1);
int QSqlRelationalTableModel_metacall(QSqlRelationalTableModel* self, int param1, int param2, void** param3);
struct seaqt_string QSqlRelationalTableModel_tr_s(const char* s);
QVariant* QSqlRelationalTableModel_data(const QSqlRelationalTableModel* self, QModelIndex* item, int role);
bool QSqlRelationalTableModel_setData(QSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role);
bool QSqlRelationalTableModel_removeColumns(QSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);
void QSqlRelationalTableModel_clear(QSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_select(QSqlRelationalTableModel* self);
void QSqlRelationalTableModel_setTable(QSqlRelationalTableModel* self, struct seaqt_string tableName);
void QSqlRelationalTableModel_setRelation(QSqlRelationalTableModel* self, int column, QSqlRelation* relation);
QSqlRelation* QSqlRelationalTableModel_relation(const QSqlRelationalTableModel* self, int column);
QSqlTableModel* QSqlRelationalTableModel_relationModel(const QSqlRelationalTableModel* self, int column);
void QSqlRelationalTableModel_setJoinMode(QSqlRelationalTableModel* self, int joinMode);
void QSqlRelationalTableModel_revertRow(QSqlRelationalTableModel* self, int row);
struct seaqt_string QSqlRelationalTableModel_selectStatement(const QSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_updateRowInTable(QSqlRelationalTableModel* self, int row, QSqlRecord* values);
bool QSqlRelationalTableModel_insertRowIntoTable(QSqlRelationalTableModel* self, QSqlRecord* values);
struct seaqt_string QSqlRelationalTableModel_orderByClause(const QSqlRelationalTableModel* self);
struct seaqt_string QSqlRelationalTableModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QSqlRelationalTableModel_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QSqlRelationalTableModel_virtualbase_metaObject(const VirtualQSqlRelationalTableModel* self);
void* QSqlRelationalTableModel_virtualbase_metacast(VirtualQSqlRelationalTableModel* self, const char* param1);
int QSqlRelationalTableModel_virtualbase_metacall(VirtualQSqlRelationalTableModel* self, int param1, int param2, void** param3);
QVariant* QSqlRelationalTableModel_virtualbase_data(const VirtualQSqlRelationalTableModel* self, QModelIndex* item, int role);
bool QSqlRelationalTableModel_virtualbase_setData(VirtualQSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role);
bool QSqlRelationalTableModel_virtualbase_removeColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);
void QSqlRelationalTableModel_virtualbase_clear(VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_virtualbase_select(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_virtualbase_setTable(VirtualQSqlRelationalTableModel* self, struct seaqt_string tableName);
void QSqlRelationalTableModel_virtualbase_setRelation(VirtualQSqlRelationalTableModel* self, int column, QSqlRelation* relation);
QSqlTableModel* QSqlRelationalTableModel_virtualbase_relationModel(const VirtualQSqlRelationalTableModel* self, int column);
void QSqlRelationalTableModel_virtualbase_revertRow(VirtualQSqlRelationalTableModel* self, int row);
struct seaqt_string QSqlRelationalTableModel_virtualbase_selectStatement(const VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_virtualbase_updateRowInTable(VirtualQSqlRelationalTableModel* self, int row, QSqlRecord* values);
bool QSqlRelationalTableModel_virtualbase_insertRowIntoTable(VirtualQSqlRelationalTableModel* self, QSqlRecord* values);
struct seaqt_string QSqlRelationalTableModel_virtualbase_orderByClause(const VirtualQSqlRelationalTableModel* self);
int QSqlRelationalTableModel_virtualbase_flags(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
bool QSqlRelationalTableModel_virtualbase_clearItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index);
QVariant* QSqlRelationalTableModel_virtualbase_headerData(const VirtualQSqlRelationalTableModel* self, int section, int orientation, int role);
void QSqlRelationalTableModel_virtualbase_setEditStrategy(VirtualQSqlRelationalTableModel* self, int strategy);
void QSqlRelationalTableModel_virtualbase_sort(VirtualQSqlRelationalTableModel* self, int column, int order);
void QSqlRelationalTableModel_virtualbase_setSort(VirtualQSqlRelationalTableModel* self, int column, int order);
void QSqlRelationalTableModel_virtualbase_setFilter(VirtualQSqlRelationalTableModel* self, struct seaqt_string filter);
int QSqlRelationalTableModel_virtualbase_rowCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
bool QSqlRelationalTableModel_virtualbase_removeRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);
bool QSqlRelationalTableModel_virtualbase_insertRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);
bool QSqlRelationalTableModel_virtualbase_selectRow(VirtualQSqlRelationalTableModel* self, int row);
bool QSqlRelationalTableModel_virtualbase_submit(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_virtualbase_revert(VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_virtualbase_deleteRowFromTable(VirtualQSqlRelationalTableModel* self, int row);
QModelIndex* QSqlRelationalTableModel_virtualbase_indexInQuery(const VirtualQSqlRelationalTableModel* self, QModelIndex* item);
int QSqlRelationalTableModel_virtualbase_columnCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
bool QSqlRelationalTableModel_virtualbase_setHeaderData(VirtualQSqlRelationalTableModel* self, int section, int orientation, QVariant* value, int role);
bool QSqlRelationalTableModel_virtualbase_insertColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);
void QSqlRelationalTableModel_virtualbase_fetchMore(VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
bool QSqlRelationalTableModel_virtualbase_canFetchMore(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QSqlRelationalTableModel_virtualbase_roleNames(const VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_virtualbase_queryChange(VirtualQSqlRelationalTableModel* self);
QModelIndex* QSqlRelationalTableModel_virtualbase_index(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSqlRelationalTableModel_virtualbase_sibling(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* idx);
bool QSqlRelationalTableModel_virtualbase_dropMimeData(VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
struct seaqt_map /* of int to QVariant* */  QSqlRelationalTableModel_virtualbase_itemData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
bool QSqlRelationalTableModel_virtualbase_setItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
struct seaqt_array /* of struct seaqt_string */  QSqlRelationalTableModel_virtualbase_mimeTypes(const VirtualQSqlRelationalTableModel* self);
QMimeData* QSqlRelationalTableModel_virtualbase_mimeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QSqlRelationalTableModel_virtualbase_canDropMimeData(const VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSqlRelationalTableModel_virtualbase_supportedDropActions(const VirtualQSqlRelationalTableModel* self);
int QSqlRelationalTableModel_virtualbase_supportedDragActions(const VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_virtualbase_moveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QSqlRelationalTableModel_virtualbase_moveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QModelIndex* QSqlRelationalTableModel_virtualbase_buddy(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_virtualbase_match(const VirtualQSqlRelationalTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSqlRelationalTableModel_virtualbase_span(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);
void QSqlRelationalTableModel_virtualbase_multiData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
void QSqlRelationalTableModel_virtualbase_resetInternalData(VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_virtualbase_event(VirtualQSqlRelationalTableModel* self, QEvent* event);
bool QSqlRelationalTableModel_virtualbase_eventFilter(VirtualQSqlRelationalTableModel* self, QObject* watched, QEvent* event);
void QSqlRelationalTableModel_virtualbase_timerEvent(VirtualQSqlRelationalTableModel* self, QTimerEvent* event);
void QSqlRelationalTableModel_virtualbase_childEvent(VirtualQSqlRelationalTableModel* self, QChildEvent* event);
void QSqlRelationalTableModel_virtualbase_customEvent(VirtualQSqlRelationalTableModel* self, QEvent* event);
void QSqlRelationalTableModel_virtualbase_connectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);
void QSqlRelationalTableModel_virtualbase_disconnectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);

void QSqlRelationalTableModel_protectedbase_setPrimaryKey(VirtualQSqlRelationalTableModel* self, QSqlIndex* key);
QSqlRecord* QSqlRelationalTableModel_protectedbase_primaryValues(const VirtualQSqlRelationalTableModel* self, int row);
void QSqlRelationalTableModel_protectedbase_beginInsertRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
void QSqlRelationalTableModel_protectedbase_endInsertRows(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_beginRemoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
void QSqlRelationalTableModel_protectedbase_endRemoveRows(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_beginInsertColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
void QSqlRelationalTableModel_protectedbase_endInsertColumns(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_beginRemoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
void QSqlRelationalTableModel_protectedbase_endRemoveColumns(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_beginResetModel(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_endResetModel(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_setLastError(VirtualQSqlRelationalTableModel* self, QSqlError* error);
QModelIndex* QSqlRelationalTableModel_protectedbase_createIndex_row_column(const VirtualQSqlRelationalTableModel* self, int row, int column);
void QSqlRelationalTableModel_protectedbase_encodeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QSqlRelationalTableModel_protectedbase_decodeData(VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
bool QSqlRelationalTableModel_protectedbase_beginMoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QSqlRelationalTableModel_protectedbase_endMoveRows(VirtualQSqlRelationalTableModel* self);
bool QSqlRelationalTableModel_protectedbase_beginMoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QSqlRelationalTableModel_protectedbase_endMoveColumns(VirtualQSqlRelationalTableModel* self);
void QSqlRelationalTableModel_protectedbase_changePersistentIndex(VirtualQSqlRelationalTableModel* self, QModelIndex* from, QModelIndex* to);
void QSqlRelationalTableModel_protectedbase_changePersistentIndexList(VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_protectedbase_persistentIndexList(const VirtualQSqlRelationalTableModel* self);
QObject* QSqlRelationalTableModel_protectedbase_sender(const VirtualQSqlRelationalTableModel* self);
int QSqlRelationalTableModel_protectedbase_senderSignalIndex(const VirtualQSqlRelationalTableModel* self);
int QSqlRelationalTableModel_protectedbase_receivers(const VirtualQSqlRelationalTableModel* self, const char* signal);
bool QSqlRelationalTableModel_protectedbase_isSignalConnected(const VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);

const QMetaObject* QSqlRelationalTableModel_staticMetaObject();
void QSqlRelationalTableModel_delete(QSqlRelationalTableModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
