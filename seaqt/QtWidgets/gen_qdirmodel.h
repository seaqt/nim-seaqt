#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDIRMODEL_H
#define SEAQT_QTWIDGETS_GEN_QDIRMODEL_H

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
class QDataStream;
class QDirModel;
class QEvent;
class QFileIconProvider;
class QFileInfo;
class QIcon;
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
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QDirModel QDirModel;
typedef struct QEvent QEvent;
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQDirModel VirtualQDirModel;
typedef struct QDirModel_VTable{
	void (*destructor)(VirtualQDirModel* self);
	QMetaObject* (*metaObject)(const VirtualQDirModel* self);
	void* (*metacast)(VirtualQDirModel* self, const char* param1);
	int (*metacall)(VirtualQDirModel* self, int param1, int param2, void** param3);
	QModelIndex* (*index)(const VirtualQDirModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQDirModel* self, QModelIndex* child);
	int (*rowCount)(const VirtualQDirModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQDirModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQDirModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQDirModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQDirModel* self, int section, int orientation, int role);
	bool (*hasChildren)(const VirtualQDirModel* self, QModelIndex* index);
	int (*flags)(const VirtualQDirModel* self, QModelIndex* index);
	void (*sort)(VirtualQDirModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQDirModel* self);
	QMimeData* (*mimeData)(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQDirModel* self);
	QModelIndex* (*sibling)(const VirtualQDirModel* self, int row, int column, QModelIndex* idx);
	bool (*setHeaderData)(VirtualQDirModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQDirModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQDirModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*canDropMimeData)(const VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(const VirtualQDirModel* self);
	bool (*insertRows)(VirtualQDirModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQDirModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQDirModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQDirModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQDirModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQDirModel* self, QModelIndex* parent);
	QModelIndex* (*buddy)(const VirtualQDirModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQDirModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQDirModel* self);
	bool (*submit)(VirtualQDirModel* self);
	void (*revert)(VirtualQDirModel* self);
	bool (*event)(VirtualQDirModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQDirModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDirModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDirModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQDirModel* self, QEvent* event);
	void (*connectNotify)(VirtualQDirModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDirModel* self, QMetaMethod* signal);
}QDirModel_VTable;

const QDirModel_VTable* QDirModel_vtbl(const VirtualQDirModel* self);
void* QDirModel_vdata(const VirtualQDirModel* self);
void QDirModel_setVdata(VirtualQDirModel* self, void* vdata);

VirtualQDirModel* QDirModel_new(const QDirModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort);
VirtualQDirModel* QDirModel_new2(const QDirModel_VTable* vtbl, void* vdata);
VirtualQDirModel* QDirModel_new3(const QDirModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort, QObject* parent);
VirtualQDirModel* QDirModel_new4(const QDirModel_VTable* vtbl, void* vdata, QObject* parent);

void QDirModel_virtbase(QDirModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QDirModel_metaObject(const QDirModel* self);
void* QDirModel_metacast(QDirModel* self, const char* param1);
int QDirModel_metacall(QDirModel* self, int param1, int param2, void** param3);
struct miqt_string QDirModel_tr(const char* s);
struct miqt_string QDirModel_trUtf8(const char* s);
QModelIndex* QDirModel_index(const QDirModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QDirModel_parent(const QDirModel* self, QModelIndex* child);
int QDirModel_rowCount(const QDirModel* self, QModelIndex* parent);
int QDirModel_columnCount(const QDirModel* self, QModelIndex* parent);
QVariant* QDirModel_data(const QDirModel* self, QModelIndex* index, int role);
bool QDirModel_setData(QDirModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QDirModel_headerData(const QDirModel* self, int section, int orientation, int role);
bool QDirModel_hasChildren(const QDirModel* self, QModelIndex* index);
int QDirModel_flags(const QDirModel* self, QModelIndex* index);
void QDirModel_sort(QDirModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QDirModel_mimeTypes(const QDirModel* self);
QMimeData* QDirModel_mimeData(const QDirModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QDirModel_dropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_supportedDropActions(const QDirModel* self);
void QDirModel_setIconProvider(QDirModel* self, QFileIconProvider* provider);
QFileIconProvider* QDirModel_iconProvider(const QDirModel* self);
void QDirModel_setNameFilters(QDirModel* self, struct miqt_array /* of struct miqt_string */  filters);
struct miqt_array /* of struct miqt_string */  QDirModel_nameFilters(const QDirModel* self);
void QDirModel_setFilter(QDirModel* self, int filters);
int QDirModel_filter(const QDirModel* self);
void QDirModel_setSorting(QDirModel* self, int sort);
int QDirModel_sorting(const QDirModel* self);
void QDirModel_setResolveSymlinks(QDirModel* self, bool enable);
bool QDirModel_resolveSymlinks(const QDirModel* self);
void QDirModel_setReadOnly(QDirModel* self, bool enable);
bool QDirModel_isReadOnly(const QDirModel* self);
void QDirModel_setLazyChildCount(QDirModel* self, bool enable);
bool QDirModel_lazyChildCount(const QDirModel* self);
QModelIndex* QDirModel_indexWithPath(const QDirModel* self, struct miqt_string path);
bool QDirModel_isDir(const QDirModel* self, QModelIndex* index);
QModelIndex* QDirModel_mkdir(QDirModel* self, QModelIndex* parent, struct miqt_string name);
bool QDirModel_rmdir(QDirModel* self, QModelIndex* index);
bool QDirModel_remove(QDirModel* self, QModelIndex* index);
struct miqt_string QDirModel_filePath(const QDirModel* self, QModelIndex* index);
struct miqt_string QDirModel_fileName(const QDirModel* self, QModelIndex* index);
QIcon* QDirModel_fileIcon(const QDirModel* self, QModelIndex* index);
QFileInfo* QDirModel_fileInfo(const QDirModel* self, QModelIndex* index);
void QDirModel_refresh(QDirModel* self);
struct miqt_string QDirModel_tr2(const char* s, const char* c);
struct miqt_string QDirModel_tr3(const char* s, const char* c, int n);
struct miqt_string QDirModel_trUtf82(const char* s, const char* c);
struct miqt_string QDirModel_trUtf83(const char* s, const char* c, int n);
QModelIndex* QDirModel_index2(const QDirModel* self, struct miqt_string path, int column);
void QDirModel_refresh1(QDirModel* self, QModelIndex* parent);

QMetaObject* QDirModel_virtualbase_metaObject(const VirtualQDirModel* self);
void* QDirModel_virtualbase_metacast(VirtualQDirModel* self, const char* param1);
int QDirModel_virtualbase_metacall(VirtualQDirModel* self, int param1, int param2, void** param3);
QModelIndex* QDirModel_virtualbase_index(const VirtualQDirModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QDirModel_virtualbase_parent(const VirtualQDirModel* self, QModelIndex* child);
int QDirModel_virtualbase_rowCount(const VirtualQDirModel* self, QModelIndex* parent);
int QDirModel_virtualbase_columnCount(const VirtualQDirModel* self, QModelIndex* parent);
QVariant* QDirModel_virtualbase_data(const VirtualQDirModel* self, QModelIndex* index, int role);
bool QDirModel_virtualbase_setData(VirtualQDirModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QDirModel_virtualbase_headerData(const VirtualQDirModel* self, int section, int orientation, int role);
bool QDirModel_virtualbase_hasChildren(const VirtualQDirModel* self, QModelIndex* index);
int QDirModel_virtualbase_flags(const VirtualQDirModel* self, QModelIndex* index);
void QDirModel_virtualbase_sort(VirtualQDirModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QDirModel_virtualbase_mimeTypes(const VirtualQDirModel* self);
QMimeData* QDirModel_virtualbase_mimeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QDirModel_virtualbase_dropMimeData(VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_virtualbase_supportedDropActions(const VirtualQDirModel* self);
QModelIndex* QDirModel_virtualbase_sibling(const VirtualQDirModel* self, int row, int column, QModelIndex* idx);
bool QDirModel_virtualbase_setHeaderData(VirtualQDirModel* self, int section, int orientation, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QDirModel_virtualbase_itemData(const VirtualQDirModel* self, QModelIndex* index);
bool QDirModel_virtualbase_setItemData(VirtualQDirModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QDirModel_virtualbase_canDropMimeData(const VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_virtualbase_supportedDragActions(const VirtualQDirModel* self);
bool QDirModel_virtualbase_insertRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent);
bool QDirModel_virtualbase_insertColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent);
bool QDirModel_virtualbase_removeRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent);
bool QDirModel_virtualbase_removeColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent);
bool QDirModel_virtualbase_moveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QDirModel_virtualbase_moveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QDirModel_virtualbase_fetchMore(VirtualQDirModel* self, QModelIndex* parent);
bool QDirModel_virtualbase_canFetchMore(const VirtualQDirModel* self, QModelIndex* parent);
QModelIndex* QDirModel_virtualbase_buddy(const VirtualQDirModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QDirModel_virtualbase_match(const VirtualQDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QDirModel_virtualbase_span(const VirtualQDirModel* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QDirModel_virtualbase_roleNames(const VirtualQDirModel* self);
bool QDirModel_virtualbase_submit(VirtualQDirModel* self);
void QDirModel_virtualbase_revert(VirtualQDirModel* self);
bool QDirModel_virtualbase_event(VirtualQDirModel* self, QEvent* event);
bool QDirModel_virtualbase_eventFilter(VirtualQDirModel* self, QObject* watched, QEvent* event);
void QDirModel_virtualbase_timerEvent(VirtualQDirModel* self, QTimerEvent* event);
void QDirModel_virtualbase_childEvent(VirtualQDirModel* self, QChildEvent* event);
void QDirModel_virtualbase_customEvent(VirtualQDirModel* self, QEvent* event);
void QDirModel_virtualbase_connectNotify(VirtualQDirModel* self, QMetaMethod* signal);
void QDirModel_virtualbase_disconnectNotify(VirtualQDirModel* self, QMetaMethod* signal);

void QDirModel_protectedbase_resetInternalData(VirtualQDirModel* self);
QModelIndex* QDirModel_protectedbase_createIndex(const VirtualQDirModel* self, int row, int column);
void QDirModel_protectedbase_encodeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QDirModel_protectedbase_decodeData(VirtualQDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QDirModel_protectedbase_beginInsertRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endInsertRows(VirtualQDirModel* self);
void QDirModel_protectedbase_beginRemoveRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endRemoveRows(VirtualQDirModel* self);
bool QDirModel_protectedbase_beginMoveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QDirModel_protectedbase_endMoveRows(VirtualQDirModel* self);
void QDirModel_protectedbase_beginInsertColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endInsertColumns(VirtualQDirModel* self);
void QDirModel_protectedbase_beginRemoveColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endRemoveColumns(VirtualQDirModel* self);
bool QDirModel_protectedbase_beginMoveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QDirModel_protectedbase_endMoveColumns(VirtualQDirModel* self);
void QDirModel_protectedbase_beginResetModel(VirtualQDirModel* self);
void QDirModel_protectedbase_endResetModel(VirtualQDirModel* self);
void QDirModel_protectedbase_changePersistentIndex(VirtualQDirModel* self, QModelIndex* from, QModelIndex* to);
void QDirModel_protectedbase_changePersistentIndexList(VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QDirModel_protectedbase_persistentIndexList(const VirtualQDirModel* self);
QObject* QDirModel_protectedbase_sender(const VirtualQDirModel* self);
int QDirModel_protectedbase_senderSignalIndex(const VirtualQDirModel* self);
int QDirModel_protectedbase_receivers(const VirtualQDirModel* self, const char* signal);
bool QDirModel_protectedbase_isSignalConnected(const VirtualQDirModel* self, QMetaMethod* signal);

const QMetaObject* QDirModel_staticMetaObject();
void QDirModel_delete(QDirModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
