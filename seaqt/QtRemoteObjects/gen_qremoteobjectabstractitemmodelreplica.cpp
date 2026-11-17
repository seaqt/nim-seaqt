#include <QAbstractItemModel>
#include <QAbstractItemModelReplica>
#include <QByteArray>
#include <QDataStream>
#include <QHash>
#include <QItemSelectionModel>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QModelRoleDataSpan>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qremoteobjectabstractitemmodelreplica.h>
#include "gen_qremoteobjectabstractitemmodelreplica.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QAbstractItemModelReplica_virtbase(QAbstractItemModelReplica* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QAbstractItemModelReplica_metaObject(const QAbstractItemModelReplica* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractItemModelReplica_metacast(QAbstractItemModelReplica* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractItemModelReplica_metacall(QAbstractItemModelReplica* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractItemModelReplica_tr_s(const char* s) {
	QString _ret = QAbstractItemModelReplica::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QItemSelectionModel* QAbstractItemModelReplica_selectionModel(const QAbstractItemModelReplica* self) {
	return self->selectionModel();
}

QVariant* QAbstractItemModelReplica_data_index(const QAbstractItemModelReplica* self, QModelIndex* index) {
	return new QVariant(self->data(*index));
}

void QAbstractItemModelReplica_multiData(const QAbstractItemModelReplica* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {
	self->multiData(*index, *roleDataSpan);
}

bool QAbstractItemModelReplica_setData(QAbstractItemModelReplica* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QModelIndex* QAbstractItemModelReplica_parent(const QAbstractItemModelReplica* self, QModelIndex* index) {
	return new QModelIndex(self->parent(*index));
}

QModelIndex* QAbstractItemModelReplica_index(const QAbstractItemModelReplica* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

bool QAbstractItemModelReplica_hasChildren(const QAbstractItemModelReplica* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

int QAbstractItemModelReplica_rowCount(const QAbstractItemModelReplica* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QAbstractItemModelReplica_columnCount(const QAbstractItemModelReplica* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

QVariant* QAbstractItemModelReplica_headerData(const QAbstractItemModelReplica* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

int QAbstractItemModelReplica_flags(const QAbstractItemModelReplica* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

struct seaqt_array /* of int */  QAbstractItemModelReplica_availableRoles(const QAbstractItemModelReplica* self) {
	QList<int> _ret = self->availableRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_map /* of int to struct seaqt_string */  QAbstractItemModelReplica_roleNames(const QAbstractItemModelReplica* self) {
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

bool QAbstractItemModelReplica_isInitialized(const QAbstractItemModelReplica* self) {
	return self->isInitialized();
}

bool QAbstractItemModelReplica_hasData(const QAbstractItemModelReplica* self, QModelIndex* index, int role) {
	return self->hasData(*index, static_cast<int>(role));
}

size_t QAbstractItemModelReplica_rootCacheSize(const QAbstractItemModelReplica* self) {
	return self->rootCacheSize();
}

void QAbstractItemModelReplica_setRootCacheSize(QAbstractItemModelReplica* self, size_t rootCacheSize) {
	self->setRootCacheSize(static_cast<size_t>(rootCacheSize));
}

void QAbstractItemModelReplica_initialized(QAbstractItemModelReplica* self) {
	self->initialized();
}

void QAbstractItemModelReplica_connect_initialized(QAbstractItemModelReplica* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractItemModelReplica::connect(self, static_cast<void (QAbstractItemModelReplica::*)()>(&QAbstractItemModelReplica::initialized), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAbstractItemModelReplica_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractItemModelReplica::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractItemModelReplica_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemModelReplica::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QAbstractItemModelReplica_data_index_role(const QAbstractItemModelReplica* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

const QMetaObject* QAbstractItemModelReplica_staticMetaObject() { return &QAbstractItemModelReplica::staticMetaObject; }
void QAbstractItemModelReplica_delete(QAbstractItemModelReplica* self) {
	delete self;
}

