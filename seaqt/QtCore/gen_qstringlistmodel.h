#pragma once
#ifndef SEAQT_QTCORE_GEN_QSTRINGLISTMODEL_H
#define SEAQT_QTCORE_GEN_QSTRINGLISTMODEL_H

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
class QAbstractListModel;
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
class QStringListModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractListModel QAbstractListModel;
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
typedef struct QStringListModel QStringListModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQStringListModel VirtualQStringListModel;
typedef struct QStringListModel_VTable{
	void (*destructor)(VirtualQStringListModel* self);
	QMetaObject* (*metaObject)(const VirtualQStringListModel* self);
	void* (*metacast)(VirtualQStringListModel* self, const char* param1);
	int (*metacall)(VirtualQStringListModel* self, int param1, int param2, void** param3);
	int (*rowCount)(const VirtualQStringListModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQStringListModel* self, int row, int column, QModelIndex* idx);
	QVariant* (*data)(const VirtualQStringListModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQStringListModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*clearItemData)(VirtualQStringListModel* self, QModelIndex* index);
	int (*flags)(const VirtualQStringListModel* self, QModelIndex* index);
	bool (*insertRows)(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQStringListModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	void (*sort)(VirtualQStringListModel* self, int column, int order);
	int (*supportedDropActions)(const VirtualQStringListModel* self);
	QModelIndex* (*index)(const VirtualQStringListModel* self, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QVariant* (*headerData)(const VirtualQStringListModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQStringListModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQStringListModel* self);
	QMimeData* (*mimeData)(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(const VirtualQStringListModel* self);
	bool (*insertColumns)(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);
	bool (*moveColumns)(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQStringListModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQStringListModel* self, QModelIndex* parent);
	QModelIndex* (*buddy)(const VirtualQStringListModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQStringListModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQStringListModel* self);
	void (*multiData)(const VirtualQStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(VirtualQStringListModel* self);
	void (*revert)(VirtualQStringListModel* self);
	void (*resetInternalData)(VirtualQStringListModel* self);
	bool (*event)(VirtualQStringListModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQStringListModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQStringListModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQStringListModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQStringListModel* self, QEvent* event);
	void (*connectNotify)(VirtualQStringListModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQStringListModel* self, QMetaMethod* signal);
}QStringListModel_VTable;

const QStringListModel_VTable* QStringListModel_vtbl(const VirtualQStringListModel* self);
void* QStringListModel_vdata(const VirtualQStringListModel* self);
void QStringListModel_setVdata(VirtualQStringListModel* self, void* vdata);

VirtualQStringListModel* QStringListModel_new(const QStringListModel_VTable* vtbl, void* vdata);
VirtualQStringListModel* QStringListModel_new2(const QStringListModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings);
VirtualQStringListModel* QStringListModel_new3(const QStringListModel_VTable* vtbl, void* vdata, QObject* parent);
VirtualQStringListModel* QStringListModel_new4(const QStringListModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings, QObject* parent);

void QStringListModel_virtbase(QStringListModel* src, QAbstractListModel** outptr_QAbstractListModel);
QMetaObject* QStringListModel_metaObject(const QStringListModel* self);
void* QStringListModel_metacast(QStringListModel* self, const char* param1);
int QStringListModel_metacall(QStringListModel* self, int param1, int param2, void** param3);
struct miqt_string QStringListModel_tr(const char* s);
int QStringListModel_rowCount(const QStringListModel* self, QModelIndex* parent);
QModelIndex* QStringListModel_sibling(const QStringListModel* self, int row, int column, QModelIndex* idx);
QVariant* QStringListModel_data(const QStringListModel* self, QModelIndex* index, int role);
bool QStringListModel_setData(QStringListModel* self, QModelIndex* index, QVariant* value, int role);
bool QStringListModel_clearItemData(QStringListModel* self, QModelIndex* index);
int QStringListModel_flags(const QStringListModel* self, QModelIndex* index);
bool QStringListModel_insertRows(QStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_removeRows(QStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_moveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_map /* of int to QVariant* */  QStringListModel_itemData(const QStringListModel* self, QModelIndex* index);
bool QStringListModel_setItemData(QStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStringListModel_sort(QStringListModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QStringListModel_stringList(const QStringListModel* self);
void QStringListModel_setStringList(QStringListModel* self, struct miqt_array /* of struct miqt_string */  strings);
int QStringListModel_supportedDropActions(const QStringListModel* self);
struct miqt_string QStringListModel_tr2(const char* s, const char* c);
struct miqt_string QStringListModel_tr3(const char* s, const char* c, int n);

QMetaObject* QStringListModel_virtualbase_metaObject(const VirtualQStringListModel* self);
void* QStringListModel_virtualbase_metacast(VirtualQStringListModel* self, const char* param1);
int QStringListModel_virtualbase_metacall(VirtualQStringListModel* self, int param1, int param2, void** param3);
int QStringListModel_virtualbase_rowCount(const VirtualQStringListModel* self, QModelIndex* parent);
QModelIndex* QStringListModel_virtualbase_sibling(const VirtualQStringListModel* self, int row, int column, QModelIndex* idx);
QVariant* QStringListModel_virtualbase_data(const VirtualQStringListModel* self, QModelIndex* index, int role);
bool QStringListModel_virtualbase_setData(VirtualQStringListModel* self, QModelIndex* index, QVariant* value, int role);
bool QStringListModel_virtualbase_clearItemData(VirtualQStringListModel* self, QModelIndex* index);
int QStringListModel_virtualbase_flags(const VirtualQStringListModel* self, QModelIndex* index);
bool QStringListModel_virtualbase_insertRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_removeRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_moveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_map /* of int to QVariant* */  QStringListModel_virtualbase_itemData(const VirtualQStringListModel* self, QModelIndex* index);
bool QStringListModel_virtualbase_setItemData(VirtualQStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStringListModel_virtualbase_sort(VirtualQStringListModel* self, int column, int order);
int QStringListModel_virtualbase_supportedDropActions(const VirtualQStringListModel* self);
QModelIndex* QStringListModel_virtualbase_index(const VirtualQStringListModel* self, int row, int column, QModelIndex* parent);
bool QStringListModel_virtualbase_dropMimeData(VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QVariant* QStringListModel_virtualbase_headerData(const VirtualQStringListModel* self, int section, int orientation, int role);
bool QStringListModel_virtualbase_setHeaderData(VirtualQStringListModel* self, int section, int orientation, QVariant* value, int role);
struct miqt_array /* of struct miqt_string */  QStringListModel_virtualbase_mimeTypes(const VirtualQStringListModel* self);
QMimeData* QStringListModel_virtualbase_mimeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QStringListModel_virtualbase_canDropMimeData(const VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QStringListModel_virtualbase_supportedDragActions(const VirtualQStringListModel* self);
bool QStringListModel_virtualbase_insertColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_removeColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_moveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QStringListModel_virtualbase_fetchMore(VirtualQStringListModel* self, QModelIndex* parent);
bool QStringListModel_virtualbase_canFetchMore(const VirtualQStringListModel* self, QModelIndex* parent);
QModelIndex* QStringListModel_virtualbase_buddy(const VirtualQStringListModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QStringListModel_virtualbase_match(const VirtualQStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QStringListModel_virtualbase_span(const VirtualQStringListModel* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QStringListModel_virtualbase_roleNames(const VirtualQStringListModel* self);
void QStringListModel_virtualbase_multiData(const VirtualQStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QStringListModel_virtualbase_submit(VirtualQStringListModel* self);
void QStringListModel_virtualbase_revert(VirtualQStringListModel* self);
void QStringListModel_virtualbase_resetInternalData(VirtualQStringListModel* self);
bool QStringListModel_virtualbase_event(VirtualQStringListModel* self, QEvent* event);
bool QStringListModel_virtualbase_eventFilter(VirtualQStringListModel* self, QObject* watched, QEvent* event);
void QStringListModel_virtualbase_timerEvent(VirtualQStringListModel* self, QTimerEvent* event);
void QStringListModel_virtualbase_childEvent(VirtualQStringListModel* self, QChildEvent* event);
void QStringListModel_virtualbase_customEvent(VirtualQStringListModel* self, QEvent* event);
void QStringListModel_virtualbase_connectNotify(VirtualQStringListModel* self, QMetaMethod* signal);
void QStringListModel_virtualbase_disconnectNotify(VirtualQStringListModel* self, QMetaMethod* signal);

QModelIndex* QStringListModel_protectedbase_createIndex(const VirtualQStringListModel* self, int row, int column);
void QStringListModel_protectedbase_encodeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QStringListModel_protectedbase_decodeData(VirtualQStringListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QStringListModel_protectedbase_beginInsertRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endInsertRows(VirtualQStringListModel* self);
void QStringListModel_protectedbase_beginRemoveRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endRemoveRows(VirtualQStringListModel* self);
bool QStringListModel_protectedbase_beginMoveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QStringListModel_protectedbase_endMoveRows(VirtualQStringListModel* self);
void QStringListModel_protectedbase_beginInsertColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endInsertColumns(VirtualQStringListModel* self);
void QStringListModel_protectedbase_beginRemoveColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endRemoveColumns(VirtualQStringListModel* self);
bool QStringListModel_protectedbase_beginMoveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QStringListModel_protectedbase_endMoveColumns(VirtualQStringListModel* self);
void QStringListModel_protectedbase_beginResetModel(VirtualQStringListModel* self);
void QStringListModel_protectedbase_endResetModel(VirtualQStringListModel* self);
void QStringListModel_protectedbase_changePersistentIndex(VirtualQStringListModel* self, QModelIndex* from, QModelIndex* to);
void QStringListModel_protectedbase_changePersistentIndexList(VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QStringListModel_protectedbase_persistentIndexList(const VirtualQStringListModel* self);
QObject* QStringListModel_protectedbase_sender(const VirtualQStringListModel* self);
int QStringListModel_protectedbase_senderSignalIndex(const VirtualQStringListModel* self);
int QStringListModel_protectedbase_receivers(const VirtualQStringListModel* self, const char* signal);
bool QStringListModel_protectedbase_isSignalConnected(const VirtualQStringListModel* self, QMetaMethod* signal);

const QMetaObject* QStringListModel_staticMetaObject();
void QStringListModel_delete(QStringListModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
