#pragma once
#ifndef SEAQT_QTSQL_GEN_QSQLQUERYMODEL_H
#define SEAQT_QTSQL_GEN_QSQLQUERYMODEL_H

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
class QSqlQuery;
class QSqlQueryModel;
class QSqlRecord;
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
typedef struct QSqlQuery QSqlQuery;
typedef struct QSqlQueryModel QSqlQueryModel;
typedef struct QSqlRecord QSqlRecord;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQSqlQueryModel VirtualQSqlQueryModel;
typedef struct QSqlQueryModel_VTable{
	void (*destructor)(VirtualQSqlQueryModel* self);
	QMetaObject* (*metaObject)(const VirtualQSqlQueryModel* self);
	void* (*metacast)(VirtualQSqlQueryModel* self, const char* param1);
	int (*metacall)(VirtualQSqlQueryModel* self, int param1, int param2, void** param3);
	int (*rowCount)(const VirtualQSqlQueryModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQSqlQueryModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQSqlQueryModel* self, QModelIndex* item, int role);
	QVariant* (*headerData)(const VirtualQSqlQueryModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQSqlQueryModel* self, int section, int orientation, QVariant* value, int role);
	bool (*insertColumns)(VirtualQSqlQueryModel* self, int column, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQSqlQueryModel* self, int column, int count, QModelIndex* parent);
	void (*clear)(VirtualQSqlQueryModel* self);
	void (*fetchMore)(VirtualQSqlQueryModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQSqlQueryModel* self, QModelIndex* parent);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQSqlQueryModel* self);
	void (*queryChange)(VirtualQSqlQueryModel* self);
	QModelIndex* (*indexInQuery)(const VirtualQSqlQueryModel* self, QModelIndex* item);
	QModelIndex* (*index)(const VirtualQSqlQueryModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQSqlQueryModel* self, int row, int column, QModelIndex* idx);
	bool (*dropMimeData)(VirtualQSqlQueryModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*flags)(const VirtualQSqlQueryModel* self, QModelIndex* index);
	bool (*setData)(VirtualQSqlQueryModel* self, QModelIndex* index, QVariant* value, int role);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQSqlQueryModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQSqlQueryModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQSqlQueryModel* self);
	QMimeData* (*mimeData)(const VirtualQSqlQueryModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQSqlQueryModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQSqlQueryModel* self);
	int (*supportedDragActions)(const VirtualQSqlQueryModel* self);
	bool (*insertRows)(VirtualQSqlQueryModel* self, int row, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQSqlQueryModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*sort)(VirtualQSqlQueryModel* self, int column, int order);
	QModelIndex* (*buddy)(const VirtualQSqlQueryModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQSqlQueryModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQSqlQueryModel* self, QModelIndex* index);
	bool (*submit)(VirtualQSqlQueryModel* self);
	void (*revert)(VirtualQSqlQueryModel* self);
	bool (*event)(VirtualQSqlQueryModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQSqlQueryModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQSqlQueryModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQSqlQueryModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQSqlQueryModel* self, QEvent* event);
	void (*connectNotify)(VirtualQSqlQueryModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQSqlQueryModel* self, QMetaMethod* signal);
}QSqlQueryModel_VTable;

void* QSqlQueryModel_vdata(VirtualQSqlQueryModel* self);
VirtualQSqlQueryModel* vdata_QSqlQueryModel(void* vdata);

VirtualQSqlQueryModel* QSqlQueryModel_new(const QSqlQueryModel_VTable* vtbl, size_t vdata);
VirtualQSqlQueryModel* QSqlQueryModel_new_parent(const QSqlQueryModel_VTable* vtbl, size_t vdata, QObject* parent);

void QSqlQueryModel_virtbase(QSqlQueryModel* src, QAbstractTableModel** outptr_QAbstractTableModel);
QMetaObject* QSqlQueryModel_metaObject(const QSqlQueryModel* self);
void* QSqlQueryModel_metacast(QSqlQueryModel* self, const char* param1);
int QSqlQueryModel_metacall(QSqlQueryModel* self, int param1, int param2, void** param3);
struct seaqt_string QSqlQueryModel_tr_s(const char* s);
struct seaqt_string QSqlQueryModel_trUtf8_s(const char* s);
int QSqlQueryModel_rowCount(const QSqlQueryModel* self, QModelIndex* parent);
int QSqlQueryModel_columnCount(const QSqlQueryModel* self, QModelIndex* parent);
QSqlRecord* QSqlQueryModel_record_row(const QSqlQueryModel* self, int row);
QSqlRecord* QSqlQueryModel_record(const QSqlQueryModel* self);
QVariant* QSqlQueryModel_data(const QSqlQueryModel* self, QModelIndex* item, int role);
QVariant* QSqlQueryModel_headerData(const QSqlQueryModel* self, int section, int orientation, int role);
bool QSqlQueryModel_setHeaderData(QSqlQueryModel* self, int section, int orientation, QVariant* value, int role);
bool QSqlQueryModel_insertColumns(QSqlQueryModel* self, int column, int count, QModelIndex* parent);
bool QSqlQueryModel_removeColumns(QSqlQueryModel* self, int column, int count, QModelIndex* parent);
void QSqlQueryModel_setQuery_QSqlQuery(QSqlQueryModel* self, QSqlQuery* query);
void QSqlQueryModel_setQuery_QString(QSqlQueryModel* self, struct seaqt_string query);
QSqlQuery* QSqlQueryModel_query(const QSqlQueryModel* self);
void QSqlQueryModel_clear(QSqlQueryModel* self);
QSqlError* QSqlQueryModel_lastError(const QSqlQueryModel* self);
void QSqlQueryModel_fetchMore(QSqlQueryModel* self, QModelIndex* parent);
bool QSqlQueryModel_canFetchMore(const QSqlQueryModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QSqlQueryModel_roleNames(const QSqlQueryModel* self);
void QSqlQueryModel_queryChange(QSqlQueryModel* self);
QModelIndex* QSqlQueryModel_indexInQuery(const QSqlQueryModel* self, QModelIndex* item);
struct seaqt_string QSqlQueryModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QSqlQueryModel_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QSqlQueryModel_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QSqlQueryModel_trUtf8_s_c_n(const char* s, const char* c, int n);
void QSqlQueryModel_setQuery_QString_QSqlDatabase(QSqlQueryModel* self, struct seaqt_string query, QSqlDatabase* db);

QMetaObject* QSqlQueryModel_virtualbase_metaObject(const VirtualQSqlQueryModel* self);
void* QSqlQueryModel_virtualbase_metacast(VirtualQSqlQueryModel* self, const char* param1);
int QSqlQueryModel_virtualbase_metacall(VirtualQSqlQueryModel* self, int param1, int param2, void** param3);
int QSqlQueryModel_virtualbase_rowCount(const VirtualQSqlQueryModel* self, QModelIndex* parent);
int QSqlQueryModel_virtualbase_columnCount(const VirtualQSqlQueryModel* self, QModelIndex* parent);
QVariant* QSqlQueryModel_virtualbase_data(const VirtualQSqlQueryModel* self, QModelIndex* item, int role);
QVariant* QSqlQueryModel_virtualbase_headerData(const VirtualQSqlQueryModel* self, int section, int orientation, int role);
bool QSqlQueryModel_virtualbase_setHeaderData(VirtualQSqlQueryModel* self, int section, int orientation, QVariant* value, int role);
bool QSqlQueryModel_virtualbase_insertColumns(VirtualQSqlQueryModel* self, int column, int count, QModelIndex* parent);
bool QSqlQueryModel_virtualbase_removeColumns(VirtualQSqlQueryModel* self, int column, int count, QModelIndex* parent);
void QSqlQueryModel_virtualbase_clear(VirtualQSqlQueryModel* self);
void QSqlQueryModel_virtualbase_fetchMore(VirtualQSqlQueryModel* self, QModelIndex* parent);
bool QSqlQueryModel_virtualbase_canFetchMore(const VirtualQSqlQueryModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QSqlQueryModel_virtualbase_roleNames(const VirtualQSqlQueryModel* self);
void QSqlQueryModel_virtualbase_queryChange(VirtualQSqlQueryModel* self);
QModelIndex* QSqlQueryModel_virtualbase_indexInQuery(const VirtualQSqlQueryModel* self, QModelIndex* item);
QModelIndex* QSqlQueryModel_virtualbase_index(const VirtualQSqlQueryModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSqlQueryModel_virtualbase_sibling(const VirtualQSqlQueryModel* self, int row, int column, QModelIndex* idx);
bool QSqlQueryModel_virtualbase_dropMimeData(VirtualQSqlQueryModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSqlQueryModel_virtualbase_flags(const VirtualQSqlQueryModel* self, QModelIndex* index);
bool QSqlQueryModel_virtualbase_setData(VirtualQSqlQueryModel* self, QModelIndex* index, QVariant* value, int role);
struct seaqt_map /* of int to QVariant* */  QSqlQueryModel_virtualbase_itemData(const VirtualQSqlQueryModel* self, QModelIndex* index);
bool QSqlQueryModel_virtualbase_setItemData(VirtualQSqlQueryModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
struct seaqt_array /* of struct seaqt_string */  QSqlQueryModel_virtualbase_mimeTypes(const VirtualQSqlQueryModel* self);
QMimeData* QSqlQueryModel_virtualbase_mimeData(const VirtualQSqlQueryModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QSqlQueryModel_virtualbase_canDropMimeData(const VirtualQSqlQueryModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSqlQueryModel_virtualbase_supportedDropActions(const VirtualQSqlQueryModel* self);
int QSqlQueryModel_virtualbase_supportedDragActions(const VirtualQSqlQueryModel* self);
bool QSqlQueryModel_virtualbase_insertRows(VirtualQSqlQueryModel* self, int row, int count, QModelIndex* parent);
bool QSqlQueryModel_virtualbase_removeRows(VirtualQSqlQueryModel* self, int row, int count, QModelIndex* parent);
bool QSqlQueryModel_virtualbase_moveRows(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QSqlQueryModel_virtualbase_moveColumns(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QSqlQueryModel_virtualbase_sort(VirtualQSqlQueryModel* self, int column, int order);
QModelIndex* QSqlQueryModel_virtualbase_buddy(const VirtualQSqlQueryModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QSqlQueryModel_virtualbase_match(const VirtualQSqlQueryModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSqlQueryModel_virtualbase_span(const VirtualQSqlQueryModel* self, QModelIndex* index);
bool QSqlQueryModel_virtualbase_submit(VirtualQSqlQueryModel* self);
void QSqlQueryModel_virtualbase_revert(VirtualQSqlQueryModel* self);
bool QSqlQueryModel_virtualbase_event(VirtualQSqlQueryModel* self, QEvent* event);
bool QSqlQueryModel_virtualbase_eventFilter(VirtualQSqlQueryModel* self, QObject* watched, QEvent* event);
void QSqlQueryModel_virtualbase_timerEvent(VirtualQSqlQueryModel* self, QTimerEvent* event);
void QSqlQueryModel_virtualbase_childEvent(VirtualQSqlQueryModel* self, QChildEvent* event);
void QSqlQueryModel_virtualbase_customEvent(VirtualQSqlQueryModel* self, QEvent* event);
void QSqlQueryModel_virtualbase_connectNotify(VirtualQSqlQueryModel* self, QMetaMethod* signal);
void QSqlQueryModel_virtualbase_disconnectNotify(VirtualQSqlQueryModel* self, QMetaMethod* signal);

void QSqlQueryModel_protectedbase_beginInsertRows(VirtualQSqlQueryModel* self, QModelIndex* parent, int first, int last);
void QSqlQueryModel_protectedbase_endInsertRows(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_beginRemoveRows(VirtualQSqlQueryModel* self, QModelIndex* parent, int first, int last);
void QSqlQueryModel_protectedbase_endRemoveRows(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_beginInsertColumns(VirtualQSqlQueryModel* self, QModelIndex* parent, int first, int last);
void QSqlQueryModel_protectedbase_endInsertColumns(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_beginRemoveColumns(VirtualQSqlQueryModel* self, QModelIndex* parent, int first, int last);
void QSqlQueryModel_protectedbase_endRemoveColumns(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_beginResetModel(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_endResetModel(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_setLastError(VirtualQSqlQueryModel* self, QSqlError* error);
void QSqlQueryModel_protectedbase_resetInternalData(VirtualQSqlQueryModel* self);
QModelIndex* QSqlQueryModel_protectedbase_createIndex_row_column(const VirtualQSqlQueryModel* self, int row, int column);
void QSqlQueryModel_protectedbase_encodeData(const VirtualQSqlQueryModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QSqlQueryModel_protectedbase_decodeData(VirtualQSqlQueryModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
bool QSqlQueryModel_protectedbase_beginMoveRows(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QSqlQueryModel_protectedbase_endMoveRows(VirtualQSqlQueryModel* self);
bool QSqlQueryModel_protectedbase_beginMoveColumns(VirtualQSqlQueryModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QSqlQueryModel_protectedbase_endMoveColumns(VirtualQSqlQueryModel* self);
void QSqlQueryModel_protectedbase_changePersistentIndex(VirtualQSqlQueryModel* self, QModelIndex* from, QModelIndex* to);
void QSqlQueryModel_protectedbase_changePersistentIndexList(VirtualQSqlQueryModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QSqlQueryModel_protectedbase_persistentIndexList(const VirtualQSqlQueryModel* self);
QObject* QSqlQueryModel_protectedbase_sender(const VirtualQSqlQueryModel* self);
int QSqlQueryModel_protectedbase_senderSignalIndex(const VirtualQSqlQueryModel* self);
int QSqlQueryModel_protectedbase_receivers(const VirtualQSqlQueryModel* self, const char* signal);
bool QSqlQueryModel_protectedbase_isSignalConnected(const VirtualQSqlQueryModel* self, QMetaMethod* signal);

const QMetaObject* QSqlQueryModel_staticMetaObject();
void QSqlQueryModel_delete(QSqlQueryModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
