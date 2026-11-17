#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFBOOKMARKMODEL_H
#define SEAQT_QTPDF_GEN_QPDFBOOKMARKMODEL_H

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
class QChildEvent;
class QDataStream;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QObject;
class QPdfBookmarkModel;
class QPdfDocument;
class QSize;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPdfBookmarkModel QPdfBookmarkModel;
typedef struct QPdfDocument QPdfDocument;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQPdfBookmarkModel VirtualQPdfBookmarkModel;
typedef struct QPdfBookmarkModel_VTable{
	void (*destructor)(VirtualQPdfBookmarkModel* self);
	QMetaObject* (*metaObject)(const VirtualQPdfBookmarkModel* self);
	void* (*metacast)(VirtualQPdfBookmarkModel* self, const char* param1);
	int (*metacall)(VirtualQPdfBookmarkModel* self, int param1, int param2, void** param3);
	QVariant* (*data)(const VirtualQPdfBookmarkModel* self, QModelIndex* index, int role);
	QModelIndex* (*index)(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
	int (*rowCount)(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
	int (*columnCount)(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQPdfBookmarkModel* self);
	QModelIndex* (*sibling)(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* idx);
	bool (*hasChildren)(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
	bool (*setData)(VirtualQPdfBookmarkModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQPdfBookmarkModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQPdfBookmarkModel* self, int section, int orientation, QVariant* value, int role);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQPdfBookmarkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQPdfBookmarkModel* self);
	QMimeData* (*mimeData)(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQPdfBookmarkModel* self);
	int (*supportedDragActions)(const VirtualQPdfBookmarkModel* self);
	bool (*insertRows)(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQPdfBookmarkModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
	int (*flags)(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
	void (*sort)(VirtualQPdfBookmarkModel* self, int column, int order);
	QModelIndex* (*buddy)(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQPdfBookmarkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
	bool (*submit)(VirtualQPdfBookmarkModel* self);
	void (*revert)(VirtualQPdfBookmarkModel* self);
	bool (*event)(VirtualQPdfBookmarkModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfBookmarkModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfBookmarkModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfBookmarkModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfBookmarkModel* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);
}QPdfBookmarkModel_VTable;

void* QPdfBookmarkModel_vdata(VirtualQPdfBookmarkModel* self);
VirtualQPdfBookmarkModel* vdata_QPdfBookmarkModel(void* vdata);

VirtualQPdfBookmarkModel* QPdfBookmarkModel_new(const QPdfBookmarkModel_VTable* vtbl, size_t vdata);
VirtualQPdfBookmarkModel* QPdfBookmarkModel_new_parent(const QPdfBookmarkModel_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfBookmarkModel_virtbase(QPdfBookmarkModel* src, QAbstractItemModel** outptr_QAbstractItemModel);
QMetaObject* QPdfBookmarkModel_metaObject(const QPdfBookmarkModel* self);
void* QPdfBookmarkModel_metacast(QPdfBookmarkModel* self, const char* param1);
int QPdfBookmarkModel_metacall(QPdfBookmarkModel* self, int param1, int param2, void** param3);
struct seaqt_string QPdfBookmarkModel_tr_s(const char* s);
struct seaqt_string QPdfBookmarkModel_trUtf8_s(const char* s);
QPdfDocument* QPdfBookmarkModel_document(const QPdfBookmarkModel* self);
void QPdfBookmarkModel_setDocument(QPdfBookmarkModel* self, QPdfDocument* document);
int QPdfBookmarkModel_structureMode(const QPdfBookmarkModel* self);
void QPdfBookmarkModel_setStructureMode(QPdfBookmarkModel* self, int mode);
QVariant* QPdfBookmarkModel_data(const QPdfBookmarkModel* self, QModelIndex* index, int role);
QModelIndex* QPdfBookmarkModel_index(const QPdfBookmarkModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QPdfBookmarkModel_parent(const QPdfBookmarkModel* self, QModelIndex* index);
int QPdfBookmarkModel_rowCount(const QPdfBookmarkModel* self, QModelIndex* parent);
int QPdfBookmarkModel_columnCount(const QPdfBookmarkModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QPdfBookmarkModel_roleNames(const QPdfBookmarkModel* self);
void QPdfBookmarkModel_documentChanged(QPdfBookmarkModel* self, QPdfDocument* document);
void QPdfBookmarkModel_connect_documentChanged(QPdfBookmarkModel* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t));
void QPdfBookmarkModel_structureModeChanged(QPdfBookmarkModel* self, int structureMode);
void QPdfBookmarkModel_connect_structureModeChanged(QPdfBookmarkModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QPdfBookmarkModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfBookmarkModel_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QPdfBookmarkModel_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QPdfBookmarkModel_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QPdfBookmarkModel_virtualbase_metaObject(const VirtualQPdfBookmarkModel* self);
void* QPdfBookmarkModel_virtualbase_metacast(VirtualQPdfBookmarkModel* self, const char* param1);
int QPdfBookmarkModel_virtualbase_metacall(VirtualQPdfBookmarkModel* self, int param1, int param2, void** param3);
QVariant* QPdfBookmarkModel_virtualbase_data(const VirtualQPdfBookmarkModel* self, QModelIndex* index, int role);
QModelIndex* QPdfBookmarkModel_virtualbase_index(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QPdfBookmarkModel_virtualbase_parent(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
int QPdfBookmarkModel_virtualbase_rowCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
int QPdfBookmarkModel_virtualbase_columnCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
struct seaqt_map /* of int to struct seaqt_string */  QPdfBookmarkModel_virtualbase_roleNames(const VirtualQPdfBookmarkModel* self);
QModelIndex* QPdfBookmarkModel_virtualbase_sibling(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* idx);
bool QPdfBookmarkModel_virtualbase_hasChildren(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_setData(VirtualQPdfBookmarkModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QPdfBookmarkModel_virtualbase_headerData(const VirtualQPdfBookmarkModel* self, int section, int orientation, int role);
bool QPdfBookmarkModel_virtualbase_setHeaderData(VirtualQPdfBookmarkModel* self, int section, int orientation, QVariant* value, int role);
struct seaqt_map /* of int to QVariant* */  QPdfBookmarkModel_virtualbase_itemData(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
bool QPdfBookmarkModel_virtualbase_setItemData(VirtualQPdfBookmarkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
struct seaqt_array /* of struct seaqt_string */  QPdfBookmarkModel_virtualbase_mimeTypes(const VirtualQPdfBookmarkModel* self);
QMimeData* QPdfBookmarkModel_virtualbase_mimeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QPdfBookmarkModel_virtualbase_canDropMimeData(const VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_dropMimeData(VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QPdfBookmarkModel_virtualbase_supportedDropActions(const VirtualQPdfBookmarkModel* self);
int QPdfBookmarkModel_virtualbase_supportedDragActions(const VirtualQPdfBookmarkModel* self);
bool QPdfBookmarkModel_virtualbase_insertRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_insertColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_removeRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_removeColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_moveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QPdfBookmarkModel_virtualbase_moveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QPdfBookmarkModel_virtualbase_fetchMore(VirtualQPdfBookmarkModel* self, QModelIndex* parent);
bool QPdfBookmarkModel_virtualbase_canFetchMore(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);
int QPdfBookmarkModel_virtualbase_flags(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
void QPdfBookmarkModel_virtualbase_sort(VirtualQPdfBookmarkModel* self, int column, int order);
QModelIndex* QPdfBookmarkModel_virtualbase_buddy(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_virtualbase_match(const VirtualQPdfBookmarkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QPdfBookmarkModel_virtualbase_span(const VirtualQPdfBookmarkModel* self, QModelIndex* index);
bool QPdfBookmarkModel_virtualbase_submit(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_virtualbase_revert(VirtualQPdfBookmarkModel* self);
bool QPdfBookmarkModel_virtualbase_event(VirtualQPdfBookmarkModel* self, QEvent* event);
bool QPdfBookmarkModel_virtualbase_eventFilter(VirtualQPdfBookmarkModel* self, QObject* watched, QEvent* event);
void QPdfBookmarkModel_virtualbase_timerEvent(VirtualQPdfBookmarkModel* self, QTimerEvent* event);
void QPdfBookmarkModel_virtualbase_childEvent(VirtualQPdfBookmarkModel* self, QChildEvent* event);
void QPdfBookmarkModel_virtualbase_customEvent(VirtualQPdfBookmarkModel* self, QEvent* event);
void QPdfBookmarkModel_virtualbase_connectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);
void QPdfBookmarkModel_virtualbase_disconnectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);

void QPdfBookmarkModel_protectedbase_resetInternalData(VirtualQPdfBookmarkModel* self);
QModelIndex* QPdfBookmarkModel_protectedbase_createIndex_row_column(const VirtualQPdfBookmarkModel* self, int row, int column);
void QPdfBookmarkModel_protectedbase_encodeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QPdfBookmarkModel_protectedbase_decodeData(VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QPdfBookmarkModel_protectedbase_beginInsertRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
void QPdfBookmarkModel_protectedbase_endInsertRows(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_beginRemoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
void QPdfBookmarkModel_protectedbase_endRemoveRows(VirtualQPdfBookmarkModel* self);
bool QPdfBookmarkModel_protectedbase_beginMoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QPdfBookmarkModel_protectedbase_endMoveRows(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_beginInsertColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
void QPdfBookmarkModel_protectedbase_endInsertColumns(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_beginRemoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
void QPdfBookmarkModel_protectedbase_endRemoveColumns(VirtualQPdfBookmarkModel* self);
bool QPdfBookmarkModel_protectedbase_beginMoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QPdfBookmarkModel_protectedbase_endMoveColumns(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_beginResetModel(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_endResetModel(VirtualQPdfBookmarkModel* self);
void QPdfBookmarkModel_protectedbase_changePersistentIndex(VirtualQPdfBookmarkModel* self, QModelIndex* from, QModelIndex* to);
void QPdfBookmarkModel_protectedbase_changePersistentIndexList(VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_protectedbase_persistentIndexList(const VirtualQPdfBookmarkModel* self);
QObject* QPdfBookmarkModel_protectedbase_sender(const VirtualQPdfBookmarkModel* self);
int QPdfBookmarkModel_protectedbase_senderSignalIndex(const VirtualQPdfBookmarkModel* self);
int QPdfBookmarkModel_protectedbase_receivers(const VirtualQPdfBookmarkModel* self, const char* signal);
bool QPdfBookmarkModel_protectedbase_isSignalConnected(const VirtualQPdfBookmarkModel* self, QMetaMethod* signal);

void QPdfBookmarkModel_delete(QPdfBookmarkModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
