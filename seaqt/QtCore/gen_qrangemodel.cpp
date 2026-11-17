#include <QAbstractItemModel>
#include <QByteArray>
#include <QDataStream>
#include <QEvent>
#include <QHash>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QModelRoleDataSpan>
#include <QObject>
#include <QRangeModel>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qrangemodel.h>
#include "gen_qrangemodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QRangeModel_virtbase(QRangeModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QRangeModel_metaObject(const QRangeModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRangeModel_metacast(QRangeModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRangeModel_metacall(QRangeModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRangeModel_tr_s(const char* s) {
	QString _ret = QRangeModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QRangeModel_index_row_column(const QRangeModel* self, int row, int column) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column)));
}

QModelIndex* QRangeModel_parent(const QRangeModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

QModelIndex* QRangeModel_sibling(const QRangeModel* self, int row, int column, QModelIndex* index) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *index));
}

int QRangeModel_rowCount(const QRangeModel* self) {
	return self->rowCount();
}

int QRangeModel_columnCount(const QRangeModel* self) {
	return self->columnCount();
}

int QRangeModel_flags(const QRangeModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

QVariant* QRangeModel_headerData(const QRangeModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QRangeModel_setHeaderData(QRangeModel* self, int section, int orientation, QVariant* data, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *data, static_cast<int>(role));
}

QVariant* QRangeModel_data(const QRangeModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QRangeModel_setData(QRangeModel* self, QModelIndex* index, QVariant* data, int role) {
	return self->setData(*index, *data, static_cast<int>(role));
}

struct seaqt_map /* of int to QVariant* */  QRangeModel_itemData(const QRangeModel* self, QModelIndex* index) {
	QMap<int, QVariant> _ret = self->itemData(*index);
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

bool QRangeModel_setItemData(QRangeModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  data) {
	QMap<int, QVariant> data_QMap;
	int* data_karr = static_cast<int*>(data.keys);
	QVariant** data_varr = static_cast<QVariant**>(data.values);
	for(size_t i = 0; i < data.len; ++i) {
		data_QMap[static_cast<int>(data_karr[i])] = *(data_varr[i]);
	}
	return self->setItemData(*index, data_QMap);
}

bool QRangeModel_clearItemData(QRangeModel* self, QModelIndex* index) {
	return self->clearItemData(*index);
}

bool QRangeModel_insertColumns_column_count(QRangeModel* self, int column, int count) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count));
}

bool QRangeModel_removeColumns_column_count(QRangeModel* self, int column, int count) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count));
}

bool QRangeModel_moveColumns(QRangeModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destParent, int destColumn) {
	return self->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destParent, static_cast<int>(destColumn));
}

bool QRangeModel_insertRows_row_count(QRangeModel* self, int row, int count) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count));
}

bool QRangeModel_removeRows_row_count(QRangeModel* self, int row, int count) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count));
}

bool QRangeModel_moveRows(QRangeModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destParent, int destRow) {
	return self->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destParent, static_cast<int>(destRow));
}

struct seaqt_map /* of int to struct seaqt_string */  QRangeModel_roleNames(const QRangeModel* self) {
	QHash<int, QByteArray> _ret = self->roleNames();
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	struct seaqt_string* _varr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		QByteArray _hashval_qb = _itr->second;
		struct seaqt_string _hashval_ms;
		_hashval_ms.len = _hashval_qb.length();
		_hashval_ms.data = static_cast<char*>(malloc(_hashval_ms.len));
		memcpy(_hashval_ms.data, _hashval_qb.data(), _hashval_ms.len);
		_varr[_ctr] = _hashval_ms;
		_ctr++;
	}
	struct seaqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

void QRangeModel_setRoleNames(QRangeModel* self, struct seaqt_map /* of int to struct seaqt_string */  names) {
	QHash<int, QByteArray> names_QMap;
	names_QMap.reserve(names.len);
	int* names_karr = static_cast<int*>(names.keys);
	struct seaqt_string* names_varr = static_cast<struct seaqt_string*>(names.values);
	for(size_t i = 0; i < names.len; ++i) {
		QByteArray names_varr_i_QByteArray(names_varr[i].data, names_varr[i].len);
		names_QMap[static_cast<int>(names_karr[i])] = names_varr_i_QByteArray;
	}
	self->setRoleNames(names_QMap);
}

void QRangeModel_resetRoleNames(QRangeModel* self) {
	self->resetRoleNames();
}

bool QRangeModel_canFetchMore(const QRangeModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

void QRangeModel_fetchMore(QRangeModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

bool QRangeModel_hasChildren(const QRangeModel* self) {
	return self->hasChildren();
}

QModelIndex* QRangeModel_buddy(const QRangeModel* self, QModelIndex* index) {
	return new QModelIndex(self->buddy(*index));
}

bool QRangeModel_canDropMimeData(const QRangeModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QRangeModel_dropMimeData(QRangeModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QMimeData* QRangeModel_mimeData(const QRangeModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

struct seaqt_array /* of struct seaqt_string */  QRangeModel_mimeTypes(const QRangeModel* self) {
	QStringList _ret = self->mimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QModelIndex* */  QRangeModel_match(const QRangeModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
	QModelIndexList _ret = self->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QRangeModel_multiData(const QRangeModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {
	self->multiData(*index, *roleDataSpan);
}

void QRangeModel_sort(QRangeModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QSize* QRangeModel_span(const QRangeModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

int QRangeModel_supportedDragActions(const QRangeModel* self) {
	Qt::DropActions _ret = self->supportedDragActions();
	return static_cast<int>(_ret);
}

int QRangeModel_supportedDropActions(const QRangeModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

int QRangeModel_autoConnectPolicy(const QRangeModel* self) {
	QRangeModel::AutoConnectPolicy _ret = self->autoConnectPolicy();
	return static_cast<int>(_ret);
}

void QRangeModel_setAutoConnectPolicy(QRangeModel* self, int policy) {
	self->setAutoConnectPolicy(static_cast<QRangeModel::AutoConnectPolicy>(policy));
}

void QRangeModel_roleNamesChanged(QRangeModel* self) {
	self->roleNamesChanged();
}

void QRangeModel_connect_roleNamesChanged(QRangeModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRangeModel::connect(self, static_cast<void (QRangeModel::*)()>(&QRangeModel::roleNamesChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QRangeModel_autoConnectPolicyChanged(QRangeModel* self, int policy) {
	self->autoConnectPolicyChanged(static_cast<QRangeModel::AutoConnectPolicy>(policy));
}

void QRangeModel_connect_autoConnectPolicyChanged(QRangeModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRangeModel::connect(self, static_cast<void (QRangeModel::*)(QRangeModel::AutoConnectPolicy)>(&QRangeModel::autoConnectPolicyChanged), self, [callback, release = seaqt::release_callback{slot,release}](QRangeModel::AutoConnectPolicy policy) {
			QRangeModel::AutoConnectPolicy policy_ret = policy;
			int sigval1 = static_cast<int>(policy_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRangeModel_tr_s_c(const char* s, const char* c) {
	QString _ret = QRangeModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRangeModel_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRangeModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QRangeModel_index_row_column_parent(const QRangeModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

int QRangeModel_rowCount_parent(const QRangeModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QRangeModel_columnCount_parent(const QRangeModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

bool QRangeModel_insertColumns_column_count_parent(QRangeModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QRangeModel_removeColumns_column_count_parent(QRangeModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QRangeModel_insertRows_row_count_parent(QRangeModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QRangeModel_removeRows_row_count_parent(QRangeModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QRangeModel_hasChildren_parent(const QRangeModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

const QMetaObject* QRangeModel_staticMetaObject() { return &QRangeModel::staticMetaObject; }
void QRangeModel_delete(QRangeModel* self) {
	delete self;
}

