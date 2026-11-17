#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFSEARCHMODEL_H
#define SEAQT_QTPDF_GEN_QPDFSEARCHMODEL_H

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
class QPdfDocument;
class QPdfLink;
class QPdfSearchModel;
class QSize;
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
typedef struct QPdfDocument QPdfDocument;
typedef struct QPdfLink QPdfLink;
typedef struct QPdfSearchModel QPdfSearchModel;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQPdfSearchModel VirtualQPdfSearchModel;
typedef struct QPdfSearchModel_VTable{
	void (*destructor)(VirtualQPdfSearchModel* self);
	QMetaObject* (*metaObject)(const VirtualQPdfSearchModel* self);
	void* (*metacast)(VirtualQPdfSearchModel* self, const char* param1);
	int (*metacall)(VirtualQPdfSearchModel* self, int param1, int param2, void** param3);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQPdfSearchModel* self);
	int (*rowCount)(const VirtualQPdfSearchModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQPdfSearchModel* self, QModelIndex* index, int role);
	void (*timerEvent)(VirtualQPdfSearchModel* self, QTimerEvent* event);
	QModelIndex* (*index)(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* idx);
	bool (*dropMimeData)(VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*flags)(const VirtualQPdfSearchModel* self, QModelIndex* index);
	bool (*setData)(VirtualQPdfSearchModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQPdfSearchModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQPdfSearchModel* self, int section, int orientation, QVariant* value, int role);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQPdfSearchModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQPdfSearchModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	bool (*clearItemData)(VirtualQPdfSearchModel* self, QModelIndex* index);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQPdfSearchModel* self);
	QMimeData* (*mimeData)(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQPdfSearchModel* self);
	int (*supportedDragActions)(const VirtualQPdfSearchModel* self);
	bool (*insertRows)(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQPdfSearchModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQPdfSearchModel* self, QModelIndex* parent);
	void (*sort)(VirtualQPdfSearchModel* self, int column, int order);
	QModelIndex* (*buddy)(const VirtualQPdfSearchModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQPdfSearchModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQPdfSearchModel* self, QModelIndex* index);
	void (*multiData)(const VirtualQPdfSearchModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(VirtualQPdfSearchModel* self);
	void (*revert)(VirtualQPdfSearchModel* self);
	void (*resetInternalData)(VirtualQPdfSearchModel* self);
	bool (*event)(VirtualQPdfSearchModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfSearchModel* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQPdfSearchModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfSearchModel* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfSearchModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfSearchModel* self, QMetaMethod* signal);
}QPdfSearchModel_VTable;

void* QPdfSearchModel_vdata(VirtualQPdfSearchModel* self);
VirtualQPdfSearchModel* vdata_QPdfSearchModel(void* vdata);

VirtualQPdfSearchModel* QPdfSearchModel_new(const QPdfSearchModel_VTable* vtbl, size_t vdata);
VirtualQPdfSearchModel* QPdfSearchModel_new_parent(const QPdfSearchModel_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfSearchModel_virtbase(QPdfSearchModel* src, QAbstractListModel** outptr_QAbstractListModel);
QMetaObject* QPdfSearchModel_metaObject(const QPdfSearchModel* self);
void* QPdfSearchModel_metacast(QPdfSearchModel* self, const char* param1);
int QPdfSearchModel_metacall(QPdfSearchModel* self, int param1, int param2, void** param3);
struct seaqt_string QPdfSearchModel_tr_s(const char* s);
struct seaqt_array /* of QPdfLink* */  QPdfSearchModel_resultsOnPage(const QPdfSearchModel* self, int page);
QPdfLink* QPdfSearchModel_resultAtIndex(const QPdfSearchModel* self, int index);
QPdfDocument* QPdfSearchModel_document(const QPdfSearchModel* self);
struct seaqt_string QPdfSearchModel_searchString(const QPdfSearchModel* self);
struct seaqt_map /* of int to struct seaqt_string */  QPdfSearchModel_roleNames(const QPdfSearchModel* self);
int QPdfSearchModel_rowCount(const QPdfSearchModel* self, QModelIndex* parent);
QVariant* QPdfSearchModel_data(const QPdfSearchModel* self, QModelIndex* index, int role);
void QPdfSearchModel_setSearchString(QPdfSearchModel* self, struct seaqt_string searchString);
void QPdfSearchModel_setDocument(QPdfSearchModel* self, QPdfDocument* document);
void QPdfSearchModel_documentChanged(QPdfSearchModel* self);
void QPdfSearchModel_connect_documentChanged(QPdfSearchModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QPdfSearchModel_searchStringChanged(QPdfSearchModel* self);
void QPdfSearchModel_connect_searchStringChanged(QPdfSearchModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QPdfSearchModel_timerEvent(QPdfSearchModel* self, QTimerEvent* event);
struct seaqt_string QPdfSearchModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfSearchModel_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QPdfSearchModel_virtualbase_metaObject(const VirtualQPdfSearchModel* self);
void* QPdfSearchModel_virtualbase_metacast(VirtualQPdfSearchModel* self, const char* param1);
int QPdfSearchModel_virtualbase_metacall(VirtualQPdfSearchModel* self, int param1, int param2, void** param3);
struct seaqt_map /* of int to struct seaqt_string */  QPdfSearchModel_virtualbase_roleNames(const VirtualQPdfSearchModel* self);
int QPdfSearchModel_virtualbase_rowCount(const VirtualQPdfSearchModel* self, QModelIndex* parent);
QVariant* QPdfSearchModel_virtualbase_data(const VirtualQPdfSearchModel* self, QModelIndex* index, int role);
void QPdfSearchModel_virtualbase_timerEvent(VirtualQPdfSearchModel* self, QTimerEvent* event);
QModelIndex* QPdfSearchModel_virtualbase_index(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QPdfSearchModel_virtualbase_sibling(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* idx);
bool QPdfSearchModel_virtualbase_dropMimeData(VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QPdfSearchModel_virtualbase_flags(const VirtualQPdfSearchModel* self, QModelIndex* index);
bool QPdfSearchModel_virtualbase_setData(VirtualQPdfSearchModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QPdfSearchModel_virtualbase_headerData(const VirtualQPdfSearchModel* self, int section, int orientation, int role);
bool QPdfSearchModel_virtualbase_setHeaderData(VirtualQPdfSearchModel* self, int section, int orientation, QVariant* value, int role);
struct seaqt_map /* of int to QVariant* */  QPdfSearchModel_virtualbase_itemData(const VirtualQPdfSearchModel* self, QModelIndex* index);
bool QPdfSearchModel_virtualbase_setItemData(VirtualQPdfSearchModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
bool QPdfSearchModel_virtualbase_clearItemData(VirtualQPdfSearchModel* self, QModelIndex* index);
struct seaqt_array /* of struct seaqt_string */  QPdfSearchModel_virtualbase_mimeTypes(const VirtualQPdfSearchModel* self);
QMimeData* QPdfSearchModel_virtualbase_mimeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QPdfSearchModel_virtualbase_canDropMimeData(const VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QPdfSearchModel_virtualbase_supportedDropActions(const VirtualQPdfSearchModel* self);
int QPdfSearchModel_virtualbase_supportedDragActions(const VirtualQPdfSearchModel* self);
bool QPdfSearchModel_virtualbase_insertRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);
bool QPdfSearchModel_virtualbase_insertColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);
bool QPdfSearchModel_virtualbase_removeRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);
bool QPdfSearchModel_virtualbase_removeColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);
bool QPdfSearchModel_virtualbase_moveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QPdfSearchModel_virtualbase_moveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QPdfSearchModel_virtualbase_fetchMore(VirtualQPdfSearchModel* self, QModelIndex* parent);
bool QPdfSearchModel_virtualbase_canFetchMore(const VirtualQPdfSearchModel* self, QModelIndex* parent);
void QPdfSearchModel_virtualbase_sort(VirtualQPdfSearchModel* self, int column, int order);
QModelIndex* QPdfSearchModel_virtualbase_buddy(const VirtualQPdfSearchModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_virtualbase_match(const VirtualQPdfSearchModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QPdfSearchModel_virtualbase_span(const VirtualQPdfSearchModel* self, QModelIndex* index);
void QPdfSearchModel_virtualbase_multiData(const VirtualQPdfSearchModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QPdfSearchModel_virtualbase_submit(VirtualQPdfSearchModel* self);
void QPdfSearchModel_virtualbase_revert(VirtualQPdfSearchModel* self);
void QPdfSearchModel_virtualbase_resetInternalData(VirtualQPdfSearchModel* self);
bool QPdfSearchModel_virtualbase_event(VirtualQPdfSearchModel* self, QEvent* event);
bool QPdfSearchModel_virtualbase_eventFilter(VirtualQPdfSearchModel* self, QObject* watched, QEvent* event);
void QPdfSearchModel_virtualbase_childEvent(VirtualQPdfSearchModel* self, QChildEvent* event);
void QPdfSearchModel_virtualbase_customEvent(VirtualQPdfSearchModel* self, QEvent* event);
void QPdfSearchModel_virtualbase_connectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal);
void QPdfSearchModel_virtualbase_disconnectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal);

void QPdfSearchModel_protectedbase_updatePage(VirtualQPdfSearchModel* self, int page);
QModelIndex* QPdfSearchModel_protectedbase_createIndex_row_column(const VirtualQPdfSearchModel* self, int row, int column);
void QPdfSearchModel_protectedbase_encodeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QPdfSearchModel_protectedbase_decodeData(VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QPdfSearchModel_protectedbase_beginInsertRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
void QPdfSearchModel_protectedbase_endInsertRows(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_beginRemoveRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
void QPdfSearchModel_protectedbase_endRemoveRows(VirtualQPdfSearchModel* self);
bool QPdfSearchModel_protectedbase_beginMoveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QPdfSearchModel_protectedbase_endMoveRows(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_beginInsertColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
void QPdfSearchModel_protectedbase_endInsertColumns(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_beginRemoveColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
void QPdfSearchModel_protectedbase_endRemoveColumns(VirtualQPdfSearchModel* self);
bool QPdfSearchModel_protectedbase_beginMoveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QPdfSearchModel_protectedbase_endMoveColumns(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_beginResetModel(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_endResetModel(VirtualQPdfSearchModel* self);
void QPdfSearchModel_protectedbase_changePersistentIndex(VirtualQPdfSearchModel* self, QModelIndex* from, QModelIndex* to);
void QPdfSearchModel_protectedbase_changePersistentIndexList(VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_protectedbase_persistentIndexList(const VirtualQPdfSearchModel* self);
QObject* QPdfSearchModel_protectedbase_sender(const VirtualQPdfSearchModel* self);
int QPdfSearchModel_protectedbase_senderSignalIndex(const VirtualQPdfSearchModel* self);
int QPdfSearchModel_protectedbase_receivers(const VirtualQPdfSearchModel* self, const char* signal);
bool QPdfSearchModel_protectedbase_isSignalConnected(const VirtualQPdfSearchModel* self, QMetaMethod* signal);

void QPdfSearchModel_delete(QPdfSearchModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
