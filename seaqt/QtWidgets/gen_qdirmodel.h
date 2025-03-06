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

struct QDirModel_VTable {
	void (*destructor)(struct QDirModel_VTable* vtbl, QDirModel* self);
	QMetaObject* (*metaObject)(struct QDirModel_VTable* vtbl, const QDirModel* self);
	void* (*metacast)(struct QDirModel_VTable* vtbl, QDirModel* self, const char* param1);
	int (*metacall)(struct QDirModel_VTable* vtbl, QDirModel* self, int param1, int param2, void** param3);
	QModelIndex* (*index)(struct QDirModel_VTable* vtbl, const QDirModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* child);
	int (*rowCount)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* parent);
	int (*columnCount)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* parent);
	QVariant* (*data)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index, int role);
	bool (*setData)(struct QDirModel_VTable* vtbl, QDirModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(struct QDirModel_VTable* vtbl, const QDirModel* self, int section, int orientation, int role);
	bool (*hasChildren)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index);
	int (*flags)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index);
	void (*sort)(struct QDirModel_VTable* vtbl, QDirModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QDirModel_VTable* vtbl, const QDirModel* self);
	QMimeData* (*mimeData)(struct QDirModel_VTable* vtbl, const QDirModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(struct QDirModel_VTable* vtbl, QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(struct QDirModel_VTable* vtbl, const QDirModel* self);
	QModelIndex* (*sibling)(struct QDirModel_VTable* vtbl, const QDirModel* self, int row, int column, QModelIndex* idx);
	bool (*setHeaderData)(struct QDirModel_VTable* vtbl, QDirModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index);
	bool (*setItemData)(struct QDirModel_VTable* vtbl, QDirModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*canDropMimeData)(struct QDirModel_VTable* vtbl, const QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(struct QDirModel_VTable* vtbl, const QDirModel* self);
	bool (*insertRows)(struct QDirModel_VTable* vtbl, QDirModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(struct QDirModel_VTable* vtbl, QDirModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QDirModel_VTable* vtbl, QDirModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QDirModel_VTable* vtbl, QDirModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(struct QDirModel_VTable* vtbl, QDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QDirModel_VTable* vtbl, QDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(struct QDirModel_VTable* vtbl, QDirModel* self, QModelIndex* parent);
	bool (*canFetchMore)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* parent);
	QModelIndex* (*buddy)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(struct QDirModel_VTable* vtbl, const QDirModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QDirModel_VTable* vtbl, const QDirModel* self);
	bool (*submit)(struct QDirModel_VTable* vtbl, QDirModel* self);
	void (*revert)(struct QDirModel_VTable* vtbl, QDirModel* self);
	bool (*event)(struct QDirModel_VTable* vtbl, QDirModel* self, QEvent* event);
	bool (*eventFilter)(struct QDirModel_VTable* vtbl, QDirModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDirModel_VTable* vtbl, QDirModel* self, QTimerEvent* event);
	void (*childEvent)(struct QDirModel_VTable* vtbl, QDirModel* self, QChildEvent* event);
	void (*customEvent)(struct QDirModel_VTable* vtbl, QDirModel* self, QEvent* event);
	void (*connectNotify)(struct QDirModel_VTable* vtbl, QDirModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDirModel_VTable* vtbl, QDirModel* self, QMetaMethod* signal);
};
QDirModel* QDirModel_new(struct QDirModel_VTable* vtbl, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort);
QDirModel* QDirModel_new2(struct QDirModel_VTable* vtbl);
QDirModel* QDirModel_new3(struct QDirModel_VTable* vtbl, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort, QObject* parent);
QDirModel* QDirModel_new4(struct QDirModel_VTable* vtbl, QObject* parent);
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
QMetaObject* QDirModel_virtualbase_metaObject(const void* self);
void* QDirModel_virtualbase_metacast(void* self, const char* param1);
int QDirModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QModelIndex* QDirModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QDirModel_virtualbase_parent(const void* self, QModelIndex* child);
int QDirModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
int QDirModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
QVariant* QDirModel_virtualbase_data(const void* self, QModelIndex* index, int role);
bool QDirModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
QVariant* QDirModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
bool QDirModel_virtualbase_hasChildren(const void* self, QModelIndex* index);
int QDirModel_virtualbase_flags(const void* self, QModelIndex* index);
void QDirModel_virtualbase_sort(void* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QDirModel_virtualbase_mimeTypes(const void* self);
QMimeData* QDirModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QDirModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_virtualbase_supportedDropActions(const void* self);
QModelIndex* QDirModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
bool QDirModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QDirModel_virtualbase_itemData(const void* self, QModelIndex* index);
bool QDirModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QDirModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QDirModel_virtualbase_supportedDragActions(const void* self);
bool QDirModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QDirModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QDirModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QDirModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QDirModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QDirModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QDirModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
bool QDirModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
QModelIndex* QDirModel_virtualbase_buddy(const void* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QDirModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QDirModel_virtualbase_span(const void* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QDirModel_virtualbase_roleNames(const void* self);
bool QDirModel_virtualbase_submit(void* self);
void QDirModel_virtualbase_revert(void* self);
bool QDirModel_virtualbase_event(void* self, QEvent* event);
bool QDirModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDirModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDirModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QDirModel_virtualbase_customEvent(void* self, QEvent* event);
void QDirModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDirModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDirModel_protectedbase_resetInternalData(void* self);
QModelIndex* QDirModel_protectedbase_createIndex(const void* self, int row, int column);
void QDirModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QDirModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QDirModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endInsertRows(void* self);
void QDirModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endRemoveRows(void* self);
bool QDirModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QDirModel_protectedbase_endMoveRows(void* self);
void QDirModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endInsertColumns(void* self);
void QDirModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last);
void QDirModel_protectedbase_endRemoveColumns(void* self);
bool QDirModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QDirModel_protectedbase_endMoveColumns(void* self);
void QDirModel_protectedbase_beginResetModel(void* self);
void QDirModel_protectedbase_endResetModel(void* self);
void QDirModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to);
void QDirModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QDirModel_protectedbase_persistentIndexList(const void* self);
QObject* QDirModel_protectedbase_sender(const void* self);
int QDirModel_protectedbase_senderSignalIndex(const void* self);
int QDirModel_protectedbase_receivers(const void* self, const char* signal);
bool QDirModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QDirModel_staticMetaObject();
void QDirModel_delete(QDirModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
