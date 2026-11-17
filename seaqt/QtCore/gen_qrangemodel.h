#pragma once
#ifndef SEAQT_QTCORE_GEN_QRANGEMODEL_H
#define SEAQT_QTCORE_GEN_QRANGEMODEL_H

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
class QDataStream;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QModelRoleDataSpan;
class QObject;
class QRangeModel;
class QSize;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QRangeModel QRangeModel;
typedef struct QSize QSize;
typedef struct QVariant QVariant;
#endif

void QRangeModel_virtbase(QRangeModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QRangeModel_metaObject(const QRangeModel* self);
void* QRangeModel_metacast(QRangeModel* self, const char* param1);
int QRangeModel_metacall(QRangeModel* self, int param1, int param2, void** param3);
struct seaqt_string QRangeModel_tr_s(const char* s);
QModelIndex* QRangeModel_index_row_column(const QRangeModel* self, int row, int column);
QModelIndex* QRangeModel_parent(const QRangeModel* self, QModelIndex* child);
QModelIndex* QRangeModel_sibling(const QRangeModel* self, int row, int column, QModelIndex* index);
int QRangeModel_rowCount(const QRangeModel* self);
int QRangeModel_columnCount(const QRangeModel* self);
int QRangeModel_flags(const QRangeModel* self, QModelIndex* index);
QVariant* QRangeModel_headerData(const QRangeModel* self, int section, int orientation, int role);
bool QRangeModel_setHeaderData(QRangeModel* self, int section, int orientation, QVariant* data, int role);
QVariant* QRangeModel_data(const QRangeModel* self, QModelIndex* index, int role);
bool QRangeModel_setData(QRangeModel* self, QModelIndex* index, QVariant* data, int role);
struct seaqt_map /* of int to QVariant* */  QRangeModel_itemData(const QRangeModel* self, QModelIndex* index);
bool QRangeModel_setItemData(QRangeModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  data);
bool QRangeModel_clearItemData(QRangeModel* self, QModelIndex* index);
bool QRangeModel_insertColumns_column_count(QRangeModel* self, int column, int count);
bool QRangeModel_removeColumns_column_count(QRangeModel* self, int column, int count);
bool QRangeModel_moveColumns(QRangeModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destParent, int destColumn);
bool QRangeModel_insertRows_row_count(QRangeModel* self, int row, int count);
bool QRangeModel_removeRows_row_count(QRangeModel* self, int row, int count);
bool QRangeModel_moveRows(QRangeModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destParent, int destRow);
struct seaqt_map /* of int to struct seaqt_string */  QRangeModel_roleNames(const QRangeModel* self);
void QRangeModel_setRoleNames(QRangeModel* self, struct seaqt_map /* of int to struct seaqt_string */  names);
void QRangeModel_resetRoleNames(QRangeModel* self);
bool QRangeModel_canFetchMore(const QRangeModel* self, QModelIndex* parent);
void QRangeModel_fetchMore(QRangeModel* self, QModelIndex* parent);
bool QRangeModel_hasChildren(const QRangeModel* self);
QModelIndex* QRangeModel_buddy(const QRangeModel* self, QModelIndex* index);
bool QRangeModel_canDropMimeData(const QRangeModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QRangeModel_dropMimeData(QRangeModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QMimeData* QRangeModel_mimeData(const QRangeModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
struct seaqt_array /* of struct seaqt_string */  QRangeModel_mimeTypes(const QRangeModel* self);
struct seaqt_array /* of QModelIndex* */  QRangeModel_match(const QRangeModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
void QRangeModel_multiData(const QRangeModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
void QRangeModel_sort(QRangeModel* self, int column, int order);
QSize* QRangeModel_span(const QRangeModel* self, QModelIndex* index);
int QRangeModel_supportedDragActions(const QRangeModel* self);
int QRangeModel_supportedDropActions(const QRangeModel* self);
int QRangeModel_autoConnectPolicy(const QRangeModel* self);
void QRangeModel_setAutoConnectPolicy(QRangeModel* self, int policy);
void QRangeModel_roleNamesChanged(QRangeModel* self);
void QRangeModel_connect_roleNamesChanged(QRangeModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QRangeModel_autoConnectPolicyChanged(QRangeModel* self, int policy);
void QRangeModel_connect_autoConnectPolicyChanged(QRangeModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QRangeModel_resetInternalData(QRangeModel* self);
bool QRangeModel_event(QRangeModel* self, QEvent* param1);
bool QRangeModel_eventFilter(QRangeModel* self, QObject* param1, QEvent* param2);
struct seaqt_string QRangeModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QRangeModel_tr_s_c_n(const char* s, const char* c, int n);
QModelIndex* QRangeModel_index_row_column_parent(const QRangeModel* self, int row, int column, QModelIndex* parent);
int QRangeModel_rowCount_parent(const QRangeModel* self, QModelIndex* parent);
int QRangeModel_columnCount_parent(const QRangeModel* self, QModelIndex* parent);
bool QRangeModel_insertColumns_column_count_parent(QRangeModel* self, int column, int count, QModelIndex* parent);
bool QRangeModel_removeColumns_column_count_parent(QRangeModel* self, int column, int count, QModelIndex* parent);
bool QRangeModel_insertRows_row_count_parent(QRangeModel* self, int row, int count, QModelIndex* parent);
bool QRangeModel_removeRows_row_count_parent(QRangeModel* self, int row, int count, QModelIndex* parent);
bool QRangeModel_hasChildren_parent(const QRangeModel* self, QModelIndex* parent);

const QMetaObject* QRangeModel_staticMetaObject();
void QRangeModel_delete(QRangeModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
