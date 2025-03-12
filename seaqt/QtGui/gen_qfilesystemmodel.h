#pragma once
#ifndef SEAQT_QTGUI_GEN_QFILESYSTEMMODEL_H
#define SEAQT_QTGUI_GEN_QFILESYSTEMMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractFileIconProvider;
class QAbstractItemModel;
class QChildEvent;
class QDataStream;
class QDateTime;
class QDir;
class QEvent;
class QFileInfo;
class QFileSystemModel;
class QIcon;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QModelRoleDataSpan;
class QObject;
class QSize;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractFileIconProvider QAbstractFileIconProvider;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QDateTime QDateTime;
typedef struct QDir QDir;
typedef struct QEvent QEvent;
typedef struct QFileInfo QFileInfo;
typedef struct QFileSystemModel QFileSystemModel;
typedef struct QIcon QIcon;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQFileSystemModel VirtualQFileSystemModel;
typedef struct QFileSystemModel_VTable{
	void (*destructor)(VirtualQFileSystemModel* self);
	QMetaObject* (*metaObject)(const VirtualQFileSystemModel* self);
	void* (*metacast)(VirtualQFileSystemModel* self, const char* param1);
	int (*metacall)(VirtualQFileSystemModel* self, int param1, int param2, void** param3);
	QModelIndex* (*index)(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQFileSystemModel* self, QModelIndex* child);
	QModelIndex* (*sibling)(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* idx);
	bool (*hasChildren)(const VirtualQFileSystemModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQFileSystemModel* self, QModelIndex* parent);
	void (*fetchMore)(VirtualQFileSystemModel* self, QModelIndex* parent);
	int (*rowCount)(const VirtualQFileSystemModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQFileSystemModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQFileSystemModel* self, QModelIndex* index, int role);
	bool (*setData)(VirtualQFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQFileSystemModel* self, int section, int orientation, int role);
	int (*flags)(const VirtualQFileSystemModel* self, QModelIndex* index);
	void (*sort)(VirtualQFileSystemModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(const VirtualQFileSystemModel* self);
	QMimeData* (*mimeData)(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQFileSystemModel* self);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(const VirtualQFileSystemModel* self);
	void (*timerEvent)(VirtualQFileSystemModel* self, QTimerEvent* event);
	bool (*event)(VirtualQFileSystemModel* self, QEvent* event);
	bool (*setHeaderData)(VirtualQFileSystemModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_map /* of int to QVariant* */  (*itemData)(const VirtualQFileSystemModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQFileSystemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*clearItemData)(VirtualQFileSystemModel* self, QModelIndex* index);
	bool (*canDropMimeData)(const VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(const VirtualQFileSystemModel* self);
	bool (*insertRows)(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	QModelIndex* (*buddy)(const VirtualQFileSystemModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(const VirtualQFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQFileSystemModel* self, QModelIndex* index);
	void (*multiData)(const VirtualQFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(VirtualQFileSystemModel* self);
	void (*revert)(VirtualQFileSystemModel* self);
	void (*resetInternalData)(VirtualQFileSystemModel* self);
	bool (*eventFilter)(VirtualQFileSystemModel* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQFileSystemModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQFileSystemModel* self, QEvent* event);
	void (*connectNotify)(VirtualQFileSystemModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQFileSystemModel* self, QMetaMethod* signal);
}QFileSystemModel_VTable;

const QFileSystemModel_VTable* QFileSystemModel_vtbl(const VirtualQFileSystemModel* self);
void* QFileSystemModel_vdata(const VirtualQFileSystemModel* self);
void QFileSystemModel_setVdata(VirtualQFileSystemModel* self, void* vdata);

VirtualQFileSystemModel* QFileSystemModel_new(const QFileSystemModel_VTable* vtbl, void* vdata);
VirtualQFileSystemModel* QFileSystemModel_new2(const QFileSystemModel_VTable* vtbl, void* vdata, QObject* parent);

void QFileSystemModel_virtbase(QFileSystemModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QFileSystemModel_metaObject(const QFileSystemModel* self);
void* QFileSystemModel_metacast(QFileSystemModel* self, const char* param1);
int QFileSystemModel_metacall(QFileSystemModel* self, int param1, int param2, void** param3);
struct miqt_string QFileSystemModel_tr(const char* s);
void QFileSystemModel_rootPathChanged(QFileSystemModel* self, struct miqt_string newPath);
void QFileSystemModel_connect_rootPathChanged(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QFileSystemModel_fileRenamed(QFileSystemModel* self, struct miqt_string path, struct miqt_string oldName, struct miqt_string newName);
void QFileSystemModel_connect_fileRenamed(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t));
void QFileSystemModel_directoryLoaded(QFileSystemModel* self, struct miqt_string path);
void QFileSystemModel_connect_directoryLoaded(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
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
struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_roleNames(const QFileSystemModel* self);
QModelIndex* QFileSystemModel_setRootPath(QFileSystemModel* self, struct miqt_string path);
struct miqt_string QFileSystemModel_rootPath(const QFileSystemModel* self);
QDir* QFileSystemModel_rootDirectory(const QFileSystemModel* self);
void QFileSystemModel_setIconProvider(QFileSystemModel* self, QAbstractFileIconProvider* provider);
QAbstractFileIconProvider* QFileSystemModel_iconProvider(const QFileSystemModel* self);
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
QModelIndex* QFileSystemModel_index2(const QFileSystemModel* self, struct miqt_string path, int column);
QVariant* QFileSystemModel_myComputer1(const QFileSystemModel* self, int role);
void QFileSystemModel_setOption2(QFileSystemModel* self, int option, bool on);

QMetaObject* QFileSystemModel_virtualbase_metaObject(const VirtualQFileSystemModel* self);
void* QFileSystemModel_virtualbase_metacast(VirtualQFileSystemModel* self, const char* param1);
int QFileSystemModel_virtualbase_metacall(VirtualQFileSystemModel* self, int param1, int param2, void** param3);
QModelIndex* QFileSystemModel_virtualbase_index(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QFileSystemModel_virtualbase_parent(const VirtualQFileSystemModel* self, QModelIndex* child);
QModelIndex* QFileSystemModel_virtualbase_sibling(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* idx);
bool QFileSystemModel_virtualbase_hasChildren(const VirtualQFileSystemModel* self, QModelIndex* parent);
bool QFileSystemModel_virtualbase_canFetchMore(const VirtualQFileSystemModel* self, QModelIndex* parent);
void QFileSystemModel_virtualbase_fetchMore(VirtualQFileSystemModel* self, QModelIndex* parent);
int QFileSystemModel_virtualbase_rowCount(const VirtualQFileSystemModel* self, QModelIndex* parent);
int QFileSystemModel_virtualbase_columnCount(const VirtualQFileSystemModel* self, QModelIndex* parent);
QVariant* QFileSystemModel_virtualbase_data(const VirtualQFileSystemModel* self, QModelIndex* index, int role);
bool QFileSystemModel_virtualbase_setData(VirtualQFileSystemModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QFileSystemModel_virtualbase_headerData(const VirtualQFileSystemModel* self, int section, int orientation, int role);
int QFileSystemModel_virtualbase_flags(const VirtualQFileSystemModel* self, QModelIndex* index);
void QFileSystemModel_virtualbase_sort(VirtualQFileSystemModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QFileSystemModel_virtualbase_mimeTypes(const VirtualQFileSystemModel* self);
QMimeData* QFileSystemModel_virtualbase_mimeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QFileSystemModel_virtualbase_dropMimeData(VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QFileSystemModel_virtualbase_supportedDropActions(const VirtualQFileSystemModel* self);
struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_virtualbase_roleNames(const VirtualQFileSystemModel* self);
void QFileSystemModel_virtualbase_timerEvent(VirtualQFileSystemModel* self, QTimerEvent* event);
bool QFileSystemModel_virtualbase_event(VirtualQFileSystemModel* self, QEvent* event);
bool QFileSystemModel_virtualbase_setHeaderData(VirtualQFileSystemModel* self, int section, int orientation, QVariant* value, int role);
struct miqt_map /* of int to QVariant* */  QFileSystemModel_virtualbase_itemData(const VirtualQFileSystemModel* self, QModelIndex* index);
bool QFileSystemModel_virtualbase_setItemData(VirtualQFileSystemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QFileSystemModel_virtualbase_clearItemData(VirtualQFileSystemModel* self, QModelIndex* index);
bool QFileSystemModel_virtualbase_canDropMimeData(const VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QFileSystemModel_virtualbase_supportedDragActions(const VirtualQFileSystemModel* self);
bool QFileSystemModel_virtualbase_insertRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_insertColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_removeRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_removeColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);
bool QFileSystemModel_virtualbase_moveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QFileSystemModel_virtualbase_moveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
QModelIndex* QFileSystemModel_virtualbase_buddy(const VirtualQFileSystemModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QFileSystemModel_virtualbase_match(const VirtualQFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QFileSystemModel_virtualbase_span(const VirtualQFileSystemModel* self, QModelIndex* index);
void QFileSystemModel_virtualbase_multiData(const VirtualQFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QFileSystemModel_virtualbase_submit(VirtualQFileSystemModel* self);
void QFileSystemModel_virtualbase_revert(VirtualQFileSystemModel* self);
void QFileSystemModel_virtualbase_resetInternalData(VirtualQFileSystemModel* self);
bool QFileSystemModel_virtualbase_eventFilter(VirtualQFileSystemModel* self, QObject* watched, QEvent* event);
void QFileSystemModel_virtualbase_childEvent(VirtualQFileSystemModel* self, QChildEvent* event);
void QFileSystemModel_virtualbase_customEvent(VirtualQFileSystemModel* self, QEvent* event);
void QFileSystemModel_virtualbase_connectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal);
void QFileSystemModel_virtualbase_disconnectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal);

QModelIndex* QFileSystemModel_protectedbase_createIndex(const VirtualQFileSystemModel* self, int row, int column);
void QFileSystemModel_protectedbase_encodeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QFileSystemModel_protectedbase_decodeData(VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QFileSystemModel_protectedbase_beginInsertRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endInsertRows(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_beginRemoveRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endRemoveRows(VirtualQFileSystemModel* self);
bool QFileSystemModel_protectedbase_beginMoveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QFileSystemModel_protectedbase_endMoveRows(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_beginInsertColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endInsertColumns(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_beginRemoveColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
void QFileSystemModel_protectedbase_endRemoveColumns(VirtualQFileSystemModel* self);
bool QFileSystemModel_protectedbase_beginMoveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QFileSystemModel_protectedbase_endMoveColumns(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_beginResetModel(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_endResetModel(VirtualQFileSystemModel* self);
void QFileSystemModel_protectedbase_changePersistentIndex(VirtualQFileSystemModel* self, QModelIndex* from, QModelIndex* to);
void QFileSystemModel_protectedbase_changePersistentIndexList(VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QFileSystemModel_protectedbase_persistentIndexList(const VirtualQFileSystemModel* self);
QObject* QFileSystemModel_protectedbase_sender(const VirtualQFileSystemModel* self);
int QFileSystemModel_protectedbase_senderSignalIndex(const VirtualQFileSystemModel* self);
int QFileSystemModel_protectedbase_receivers(const VirtualQFileSystemModel* self, const char* signal);
bool QFileSystemModel_protectedbase_isSignalConnected(const VirtualQFileSystemModel* self, QMetaMethod* signal);

const QMetaObject* QFileSystemModel_staticMetaObject();
void QFileSystemModel_delete(QFileSystemModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
