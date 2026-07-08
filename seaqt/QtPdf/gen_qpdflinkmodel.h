#pragma once
#ifndef SEAQT_QTPDF_GEN_QPDFLINKMODEL_H
#define SEAQT_QTPDF_GEN_QPDFLINKMODEL_H

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
class QPdfLinkModel;
class QPointF;
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
typedef struct QPdfLinkModel QPdfLinkModel;
typedef struct QPointF QPointF;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQPdfLinkModel VirtualQPdfLinkModel;
typedef struct QPdfLinkModel_VTable{
	void (*destructor)(VirtualQPdfLinkModel* self);
	QMetaObject* (*metaObject)(const VirtualQPdfLinkModel* self);
	void* (*metacast)(VirtualQPdfLinkModel* self, const char* param1);
	int (*metacall)(VirtualQPdfLinkModel* self, int param1, int param2, void** param3);
	struct seaqt_map /* of int to struct seaqt_string */  (*roleNames)(const VirtualQPdfLinkModel* self);
	int (*rowCount)(const VirtualQPdfLinkModel* self, QModelIndex* parent);
	QVariant* (*data)(const VirtualQPdfLinkModel* self, QModelIndex* index, int role);
	QModelIndex* (*index)(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*sibling)(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* idx);
	bool (*dropMimeData)(VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*flags)(const VirtualQPdfLinkModel* self, QModelIndex* index);
	bool (*setData)(VirtualQPdfLinkModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(const VirtualQPdfLinkModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(VirtualQPdfLinkModel* self, int section, int orientation, QVariant* value, int role);
	struct seaqt_map /* of int to QVariant* */  (*itemData)(const VirtualQPdfLinkModel* self, QModelIndex* index);
	bool (*setItemData)(VirtualQPdfLinkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
	bool (*clearItemData)(VirtualQPdfLinkModel* self, QModelIndex* index);
	struct seaqt_array /* of struct seaqt_string */  (*mimeTypes)(const VirtualQPdfLinkModel* self);
	QMimeData* (*mimeData)(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(const VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDropActions)(const VirtualQPdfLinkModel* self);
	int (*supportedDragActions)(const VirtualQPdfLinkModel* self);
	bool (*insertRows)(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);
	bool (*moveRows)(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(VirtualQPdfLinkModel* self, QModelIndex* parent);
	bool (*canFetchMore)(const VirtualQPdfLinkModel* self, QModelIndex* parent);
	void (*sort)(VirtualQPdfLinkModel* self, int column, int order);
	QModelIndex* (*buddy)(const VirtualQPdfLinkModel* self, QModelIndex* index);
	struct seaqt_array /* of QModelIndex* */  (*match)(const VirtualQPdfLinkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(const VirtualQPdfLinkModel* self, QModelIndex* index);
	void (*multiData)(const VirtualQPdfLinkModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(VirtualQPdfLinkModel* self);
	void (*revert)(VirtualQPdfLinkModel* self);
	void (*resetInternalData)(VirtualQPdfLinkModel* self);
	bool (*event)(VirtualQPdfLinkModel* self, QEvent* event);
	bool (*eventFilter)(VirtualQPdfLinkModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQPdfLinkModel* self, QTimerEvent* event);
	void (*childEvent)(VirtualQPdfLinkModel* self, QChildEvent* event);
	void (*customEvent)(VirtualQPdfLinkModel* self, QEvent* event);
	void (*connectNotify)(VirtualQPdfLinkModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQPdfLinkModel* self, QMetaMethod* signal);
}QPdfLinkModel_VTable;

void* QPdfLinkModel_vdata(VirtualQPdfLinkModel* self);
VirtualQPdfLinkModel* vdata_QPdfLinkModel(void* vdata);

VirtualQPdfLinkModel* QPdfLinkModel_new(const QPdfLinkModel_VTable* vtbl, size_t vdata);
VirtualQPdfLinkModel* QPdfLinkModel_new_parent(const QPdfLinkModel_VTable* vtbl, size_t vdata, QObject* parent);

void QPdfLinkModel_virtbase(QPdfLinkModel* src, QAbstractListModel** outptr_QAbstractListModel);
QMetaObject* QPdfLinkModel_metaObject(const QPdfLinkModel* self);
void* QPdfLinkModel_metacast(QPdfLinkModel* self, const char* param1);
int QPdfLinkModel_metacall(QPdfLinkModel* self, int param1, int param2, void** param3);
struct seaqt_string QPdfLinkModel_tr_s(const char* s);
QPdfDocument* QPdfLinkModel_document(const QPdfLinkModel* self);
struct seaqt_map /* of int to struct seaqt_string */  QPdfLinkModel_roleNames(const QPdfLinkModel* self);
int QPdfLinkModel_rowCount(const QPdfLinkModel* self, QModelIndex* parent);
QVariant* QPdfLinkModel_data(const QPdfLinkModel* self, QModelIndex* index, int role);
int QPdfLinkModel_page(const QPdfLinkModel* self);
QPdfLink* QPdfLinkModel_linkAt(const QPdfLinkModel* self, QPointF* point);
void QPdfLinkModel_setDocument(QPdfLinkModel* self, QPdfDocument* document);
void QPdfLinkModel_setPage(QPdfLinkModel* self, int page);
void QPdfLinkModel_documentChanged(QPdfLinkModel* self);
void QPdfLinkModel_connect_documentChanged(QPdfLinkModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QPdfLinkModel_pageChanged(QPdfLinkModel* self, int page);
void QPdfLinkModel_connect_pageChanged(QPdfLinkModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
struct seaqt_string QPdfLinkModel_tr_s_c(const char* s, const char* c);
struct seaqt_string QPdfLinkModel_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QPdfLinkModel_virtualbase_metaObject(const VirtualQPdfLinkModel* self);
void* QPdfLinkModel_virtualbase_metacast(VirtualQPdfLinkModel* self, const char* param1);
int QPdfLinkModel_virtualbase_metacall(VirtualQPdfLinkModel* self, int param1, int param2, void** param3);
struct seaqt_map /* of int to struct seaqt_string */  QPdfLinkModel_virtualbase_roleNames(const VirtualQPdfLinkModel* self);
int QPdfLinkModel_virtualbase_rowCount(const VirtualQPdfLinkModel* self, QModelIndex* parent);
QVariant* QPdfLinkModel_virtualbase_data(const VirtualQPdfLinkModel* self, QModelIndex* index, int role);
QModelIndex* QPdfLinkModel_virtualbase_index(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QPdfLinkModel_virtualbase_sibling(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* idx);
bool QPdfLinkModel_virtualbase_dropMimeData(VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QPdfLinkModel_virtualbase_flags(const VirtualQPdfLinkModel* self, QModelIndex* index);
bool QPdfLinkModel_virtualbase_setData(VirtualQPdfLinkModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QPdfLinkModel_virtualbase_headerData(const VirtualQPdfLinkModel* self, int section, int orientation, int role);
bool QPdfLinkModel_virtualbase_setHeaderData(VirtualQPdfLinkModel* self, int section, int orientation, QVariant* value, int role);
struct seaqt_map /* of int to QVariant* */  QPdfLinkModel_virtualbase_itemData(const VirtualQPdfLinkModel* self, QModelIndex* index);
bool QPdfLinkModel_virtualbase_setItemData(VirtualQPdfLinkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);
bool QPdfLinkModel_virtualbase_clearItemData(VirtualQPdfLinkModel* self, QModelIndex* index);
struct seaqt_array /* of struct seaqt_string */  QPdfLinkModel_virtualbase_mimeTypes(const VirtualQPdfLinkModel* self);
QMimeData* QPdfLinkModel_virtualbase_mimeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);
bool QPdfLinkModel_virtualbase_canDropMimeData(const VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QPdfLinkModel_virtualbase_supportedDropActions(const VirtualQPdfLinkModel* self);
int QPdfLinkModel_virtualbase_supportedDragActions(const VirtualQPdfLinkModel* self);
bool QPdfLinkModel_virtualbase_insertRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);
bool QPdfLinkModel_virtualbase_insertColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);
bool QPdfLinkModel_virtualbase_removeRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);
bool QPdfLinkModel_virtualbase_removeColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);
bool QPdfLinkModel_virtualbase_moveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QPdfLinkModel_virtualbase_moveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QPdfLinkModel_virtualbase_fetchMore(VirtualQPdfLinkModel* self, QModelIndex* parent);
bool QPdfLinkModel_virtualbase_canFetchMore(const VirtualQPdfLinkModel* self, QModelIndex* parent);
void QPdfLinkModel_virtualbase_sort(VirtualQPdfLinkModel* self, int column, int order);
QModelIndex* QPdfLinkModel_virtualbase_buddy(const VirtualQPdfLinkModel* self, QModelIndex* index);
struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_virtualbase_match(const VirtualQPdfLinkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QPdfLinkModel_virtualbase_span(const VirtualQPdfLinkModel* self, QModelIndex* index);
void QPdfLinkModel_virtualbase_multiData(const VirtualQPdfLinkModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QPdfLinkModel_virtualbase_submit(VirtualQPdfLinkModel* self);
void QPdfLinkModel_virtualbase_revert(VirtualQPdfLinkModel* self);
void QPdfLinkModel_virtualbase_resetInternalData(VirtualQPdfLinkModel* self);
bool QPdfLinkModel_virtualbase_event(VirtualQPdfLinkModel* self, QEvent* event);
bool QPdfLinkModel_virtualbase_eventFilter(VirtualQPdfLinkModel* self, QObject* watched, QEvent* event);
void QPdfLinkModel_virtualbase_timerEvent(VirtualQPdfLinkModel* self, QTimerEvent* event);
void QPdfLinkModel_virtualbase_childEvent(VirtualQPdfLinkModel* self, QChildEvent* event);
void QPdfLinkModel_virtualbase_customEvent(VirtualQPdfLinkModel* self, QEvent* event);
void QPdfLinkModel_virtualbase_connectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal);
void QPdfLinkModel_virtualbase_disconnectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal);

QModelIndex* QPdfLinkModel_protectedbase_createIndex_row_column(const VirtualQPdfLinkModel* self, int row, int column);
void QPdfLinkModel_protectedbase_encodeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QPdfLinkModel_protectedbase_decodeData(VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QPdfLinkModel_protectedbase_beginInsertRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
void QPdfLinkModel_protectedbase_endInsertRows(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_beginRemoveRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
void QPdfLinkModel_protectedbase_endRemoveRows(VirtualQPdfLinkModel* self);
bool QPdfLinkModel_protectedbase_beginMoveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QPdfLinkModel_protectedbase_endMoveRows(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_beginInsertColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
void QPdfLinkModel_protectedbase_endInsertColumns(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_beginRemoveColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
void QPdfLinkModel_protectedbase_endRemoveColumns(VirtualQPdfLinkModel* self);
bool QPdfLinkModel_protectedbase_beginMoveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QPdfLinkModel_protectedbase_endMoveColumns(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_beginResetModel(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_endResetModel(VirtualQPdfLinkModel* self);
void QPdfLinkModel_protectedbase_changePersistentIndex(VirtualQPdfLinkModel* self, QModelIndex* from, QModelIndex* to);
void QPdfLinkModel_protectedbase_changePersistentIndexList(VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_protectedbase_persistentIndexList(const VirtualQPdfLinkModel* self);
QObject* QPdfLinkModel_protectedbase_sender(const VirtualQPdfLinkModel* self);
int QPdfLinkModel_protectedbase_senderSignalIndex(const VirtualQPdfLinkModel* self);
int QPdfLinkModel_protectedbase_receivers(const VirtualQPdfLinkModel* self, const char* signal);
bool QPdfLinkModel_protectedbase_isSignalConnected(const VirtualQPdfLinkModel* self, QMetaMethod* signal);

const QMetaObject* QPdfLinkModel_staticMetaObject();
void QPdfLinkModel_delete(QPdfLinkModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
