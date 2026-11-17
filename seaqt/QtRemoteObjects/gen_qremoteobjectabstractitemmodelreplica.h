#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTABSTRACTITEMMODELREPLICA_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QREMOTEOBJECTABSTRACTITEMMODELREPLICA_H

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
class QAbstractItemModelReplica;
class QDataStream;
class QItemSelectionModel;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QModelRoleDataSpan;
class QObject;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemModelReplica QAbstractItemModelReplica;
typedef struct QDataStream QDataStream;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QVariant QVariant;
#endif

void QAbstractItemModelReplica_virtbase(QAbstractItemModelReplica* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QAbstractItemModelReplica_metaObject(const QAbstractItemModelReplica* self);
void* QAbstractItemModelReplica_metacast(QAbstractItemModelReplica* self, const char* param1);
int QAbstractItemModelReplica_metacall(QAbstractItemModelReplica* self, int param1, int param2, void** param3);
struct seaqt_string QAbstractItemModelReplica_tr_s(const char* s);
QItemSelectionModel* QAbstractItemModelReplica_selectionModel(const QAbstractItemModelReplica* self);
QVariant* QAbstractItemModelReplica_data_index(const QAbstractItemModelReplica* self, QModelIndex* index);
void QAbstractItemModelReplica_multiData(const QAbstractItemModelReplica* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QAbstractItemModelReplica_setData(QAbstractItemModelReplica* self, QModelIndex* index, QVariant* value, int role);
QModelIndex* QAbstractItemModelReplica_parent(const QAbstractItemModelReplica* self, QModelIndex* index);
QModelIndex* QAbstractItemModelReplica_index(const QAbstractItemModelReplica* self, int row, int column, QModelIndex* parent);
bool QAbstractItemModelReplica_hasChildren(const QAbstractItemModelReplica* self, QModelIndex* parent);
int QAbstractItemModelReplica_rowCount(const QAbstractItemModelReplica* self, QModelIndex* parent);
int QAbstractItemModelReplica_columnCount(const QAbstractItemModelReplica* self, QModelIndex* parent);
QVariant* QAbstractItemModelReplica_headerData(const QAbstractItemModelReplica* self, int section, int orientation, int role);
int QAbstractItemModelReplica_flags(const QAbstractItemModelReplica* self, QModelIndex* index);
struct seaqt_array /* of int */  QAbstractItemModelReplica_availableRoles(const QAbstractItemModelReplica* self);
struct seaqt_map /* of int to struct seaqt_string */  QAbstractItemModelReplica_roleNames(const QAbstractItemModelReplica* self);
bool QAbstractItemModelReplica_isInitialized(const QAbstractItemModelReplica* self);
bool QAbstractItemModelReplica_hasData(const QAbstractItemModelReplica* self, QModelIndex* index, int role);
size_t QAbstractItemModelReplica_rootCacheSize(const QAbstractItemModelReplica* self);
void QAbstractItemModelReplica_setRootCacheSize(QAbstractItemModelReplica* self, size_t rootCacheSize);
void QAbstractItemModelReplica_initialized(QAbstractItemModelReplica* self);
void QAbstractItemModelReplica_connect_initialized(QAbstractItemModelReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QAbstractItemModelReplica_tr_s_c(const char* s, const char* c);
struct seaqt_string QAbstractItemModelReplica_tr_s_c_n(const char* s, const char* c, int n);
QVariant* QAbstractItemModelReplica_data_index_role(const QAbstractItemModelReplica* self, QModelIndex* index, int role);

const QMetaObject* QAbstractItemModelReplica_staticMetaObject();
void QAbstractItemModelReplica_delete(QAbstractItemModelReplica* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
