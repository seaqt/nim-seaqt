#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QFILESYSTEMMODEL_H
#define SEAQT_QTWIDGETS_GEN_QFILESYSTEMMODEL_H

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
class QDateTime;
class QDir;
class QEvent;
class QFileIconProvider;
class QFileInfo;
class QFileSystemModel;
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
typedef struct QDateTime QDateTime;
typedef struct QDir QDir;
typedef struct QEvent QEvent;
typedef struct QFileIconProvider QFileIconProvider;
typedef struct QFileInfo QFileInfo;
typedef struct QFileSystemModel QFileSystemModel;
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

struct QFileSystemModel_VTable {
	void (*destructor)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self);
	QMetaObject* (*metaObject)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self);
	void* (*metacast)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, const char* param1);
	int (*metacall)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int param1, int param2, void** param3);
	QModelIndex* (*index)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* child);
	QModelIndex* (*sibling)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, int row, int column, QModelIndex* idx);
	bool (*hasChildren)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* parent);
	bool (*canFetchMore)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* parent);
	void (*fetchMore)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QModelIndex* parent);
	int (*rowCount)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* parent);
	int (*columnCount)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* parent);
	QVariant* (*data)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* index, int role);
	bool (*setData)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, int section, int orientation, int role);
	int (*flags)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* index);
	void (*sort)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self);
	QMimeData* (*mimeData)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self);
	void (*timerEvent)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QTimerEvent* event);
	bool (*event)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QEvent* event);
	bool (*setHeaderData)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* index);
	bool (*setItemData)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*canDropMimeData)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self);
	bool (*insertRows)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	QModelIndex* (*buddy)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QFileSystemModel_VTable* vtbl, const QFileSystemModel* self);
	bool (*submit)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self);
	void (*revert)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self);
	bool (*eventFilter)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QChildEvent* event);
	void (*customEvent)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QEvent* event);
	void (*connectNotify)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QFileSystemModel_VTable* vtbl, QFileSystemModel* self, QMetaMethod* signal);
};
QFileSystemModel* QFileSystemModel_new(struct QFileSystemModel_VTable* vtbl);
QFileSystemModel* QFileSystemModel_new2(struct QFileSystemModel_VTable* vtbl, QObject* parent);
void QFileSystemModel_virtbase(QFileSystemModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QFileSystemModel_metaObject(const QFileSystemModel* self);
void* QFileSystemModel_metacast(QFileSystemModel* self, const char* param1);
int QFileSystemModel_metacall(QFileSystemModel* self, int param1, int param2, void** param3);
struct miqt_string QFileSystemModel_tr(const char* s);
struct miqt_string QFileSystemModel_trUtf8(const char* s);
void QFileSystemModel_rootPathChanged(QFileSystemModel* self, struct miqt_string newPath);
void QFileSystemModel_connect_rootPathChanged(QFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QFileSystemModel_fileRenamed(QFileSystemModel* self, struct miqt_string path, struct miqt_string oldName, struct miqt_string newName);
void QFileSystemModel_connect_fileRenamed(QFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t));
void QFileSystemModel_directoryLoaded(QFileSystemModel* self, struct miqt_string path);
void QFileSystemModel_connect_directoryLoaded(QFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
QModelIndex* QFileSystemModel_index(const QFileSystemModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QFileSystemModel_indexWithPath(const QFileSystemModel* self, struct miqt_string path);
QModelIndex* QFileSystemModel_parent(const QFileSystemModel* self, QModelIndex* child);
QModelIndex* QFileSystemModel_sibling(const QFileSystemModel* self, int row, int column, QModelIndex* idx);
bool QFileSystemModel_hasChildren(const QFileSystemModel* self, QModelIndex* parent);
bool QFileSystemModel_canFetchMore(const QFileSystemModel* self, QModelIndex* parent);
void QFileSystemModel_fetchMore(QFileSystemModel* self, QModelIndex* parent);
int QFileSystemModel_rowCount(const QFileSystemModel* self, QModelIndex* parent);
int QFileSystemModel_columnCount(const QFileSystemModel* self, QModelIndex* parent);
QVariant* QFileSystemModel_myComputer(const QFileSystemModel* self);
QVariant* QFileSystemModel_data(const QFileSystemModel* self, QModelIndex* index, int role);
bool QFileSystemModel_setData(QFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QFileSystemModel_headerData(const QFileSystemModel* self, int section, int orientation, int role);
int QFileSystemModel_flags(const QFileSystemModel* self, QModelIndex* index);
void QFileSystemModel_sort(QFileSystemModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QFileSystemModel_mimeTypes(const QFileSystemModel* self);
QMimeData* QFileSystemModel_mimeData(const QFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QFileSystemModel_dropMimeData(QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QFileSystemModel_supportedDropActions(const QFileSystemModel* self);
QModelIndex* QFileSystemModel_setRootPath(QFileSystemModel* self, struct miqt_string path);
struct miqt_string QFileSystemModel_rootPath(const QFileSystemModel* self);
QDir* QFileSystemModel_rootDirectory(const QFileSystemModel* self);
void QFileSystemModel_setIconProvider(QFileSystemModel* self, QFileIconProvider* provider);
QFileIconProvider* QFileSystemModel_iconProvider(const QFileSystemModel* self);
void QFileSystemModel_setFilter(QFileSystemModel* self, int filters);
int QFileSystemModel_filter(const QFileSystemModel* self);
void QFileSystemModel_setResolveSymlinks(QFileSystemModel* self, bool enable);
bool QFileSystemModel_resolveSymlinks(const QFileSystemModel* self);
void QFileSystemModel_setReadOnly(QFileSystemModel* self, bool enable);
bool QFileSystemModel_isReadOnly(const QFileSystemModel* self);
void QFileSystemModel_setNameFilterDisables(QFileSystemModel* self, bool enable);
bool QFileSystemModel_nameFilterDisables(const QFileSystemModel* self);
void QFileSystemModel_setNameFilters(QFileSystemModel* self, struct miqt_array /* of struct miqt_string */  filters);
struct miqt_array /* of struct miqt_string */  QFileSystemModel_nameFilters(const QFileSystemModel* self);
void QFileSystemModel_setOption(QFileSystemModel* self, int option);
bool QFileSystemModel_testOption(const QFileSystemModel* self, int option);
void QFileSystemModel_setOptions(QFileSystemModel* self, int options);
int QFileSystemModel_options(const QFileSystemModel* self);
struct miqt_string QFileSystemModel_filePath(const QFileSystemModel* self, QModelIndex* index);
bool QFileSystemModel_isDir(const QFileSystemModel* self, QModelIndex* index);
long long QFileSystemModel_size(const QFileSystemModel* self, QModelIndex* index);
struct miqt_string QFileSystemModel_type(const QFileSystemModel* self, QModelIndex* index);
QDateTime* QFileSystemModel_lastModified(const QFileSystemModel* self, QModelIndex* index);
QModelIndex* QFileSystemModel_mkdir(QFileSystemModel* self, QModelIndex* parent, struct miqt_string name);
bool QFileSystemModel_rmdir(QFileSystemModel* self, QModelIndex* index);
struct miqt_string QFileSystemModel_fileName(const QFileSystemModel* self, QModelIndex* index);
QIcon* QFileSystemModel_fileIcon(const QFileSystemModel* self, QModelIndex* index);
int QFileSystemModel_permissions(const QFileSystemModel* self, QModelIndex* index);
QFileInfo* QFileSystemModel_fileInfo(const QFileSystemModel* self, QModelIndex* index);
bool QFileSystemModel_remove(QFileSystemModel* self, QModelIndex* index);
void QFileSystemModel_timerEvent(QFileSystemModel* self, QTimerEvent* event);
bool QFileSystemModel_event(QFileSystemModel* self, QEvent* event);
struct miqt_string QFileSystemModel_tr2(const char* s, const char* c);
struct miqt_string QFileSystemModel_tr3(const char* s, const char* c, int n);
struct miqt_string QFileSystemModel_trUtf82(const char* s, const char* c);
struct miqt_string QFileSystemModel_trUtf83(const char* s, const char* c, int n);
QModelIndex* QFileSystemModel_index2(const QFileSystemModel* self, struct miqt_string path, int column);
QVariant* QFileSystemModel_myComputer1(const QFileSystemModel* self, int role);
void QFileSystemModel_setOption2(QFileSystemModel* self, int option, bool on);
QMetaObject* QFileSystemModel_virtualbase_metaObject(const void* self);
void* QFileSystemModel_virtualbase_metacast(void* self, const char* param1);
int QFileSystemModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QModelIndex* QFileSystemModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QFileSystemModel_virtualbase_parent(const void* self, QModelIndex* child);
QModelIndex* QFileSystemModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
bool QFileSystemModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
bool QFileSystemModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
void QFileSystemModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
int QFileSystemModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
int QFileSystemModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
QVariant* QFileSystemModel_virtualbase_data(const void* self, QModelIndex* index, int role);
bool QFileSystemModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
QVariant* QFileSystemModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
int QFileSystemModel_virtualbase_flags(const void* self, QModelIndex* index);
void QFileSystemModel_virtualbase_sort(void* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QFileSystemModel_virtualbase_mimeTypes(const void* self);
QMimeData* QFileSystemModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QFileSystemModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QFileSystemModel_virtualbase_supportedDropActions(const void* self);
void QFileSystemModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QFileSystemModel_virtualbase_event(void* self, QEvent* event);
bool QFileSystemModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QFileSystemModel_virtualbase_itemData(const void* self, QModelIndex* index);
bool QFileSystemModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QFileSystemModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QFileSystemModel_virtualbase_supportedDragActions(const void* self);
bool QFileSystemModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QFileSystemModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QModelIndex* QFileSystemModel_virtualbase_buddy(const void* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QFileSystemModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QFileSystemModel_virtualbase_span(const void* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_virtualbase_roleNames(const void* self);
bool QFileSystemModel_virtualbase_submit(void* self);
void QFileSystemModel_virtualbase_revert(void* self);
bool QFileSystemModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QFileSystemModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QFileSystemModel_virtualbase_customEvent(void* self, QEvent* event);
void QFileSystemModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QFileSystemModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QFileSystemModel_protectedbase_resetInternalData(bool* _dynamic_cast_ok, void* self);
QModelIndex* QFileSystemModel_protectedbase_createIndex(bool* _dynamic_cast_ok, const void* self, int row, int column);
void QFileSystemModel_protectedbase_encodeData(bool* _dynamic_cast_ok, const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QFileSystemModel_protectedbase_decodeData(bool* _dynamic_cast_ok, void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QFileSystemModel_protectedbase_beginInsertRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endInsertRows(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_beginRemoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endRemoveRows(bool* _dynamic_cast_ok, void* self);
bool QFileSystemModel_protectedbase_beginMoveRows(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QFileSystemModel_protectedbase_endMoveRows(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_beginInsertColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endInsertColumns(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_beginRemoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endRemoveColumns(bool* _dynamic_cast_ok, void* self);
bool QFileSystemModel_protectedbase_beginMoveColumns(bool* _dynamic_cast_ok, void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QFileSystemModel_protectedbase_endMoveColumns(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_beginResetModel(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_endResetModel(bool* _dynamic_cast_ok, void* self);
void QFileSystemModel_protectedbase_changePersistentIndex(bool* _dynamic_cast_ok, void* self, QModelIndex* from, QModelIndex* to);
void QFileSystemModel_protectedbase_changePersistentIndexList(bool* _dynamic_cast_ok, void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QFileSystemModel_protectedbase_persistentIndexList(bool* _dynamic_cast_ok, const void* self);
QObject* QFileSystemModel_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QFileSystemModel_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QFileSystemModel_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QFileSystemModel_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QFileSystemModel_staticMetaObject();
void QFileSystemModel_delete(QFileSystemModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
