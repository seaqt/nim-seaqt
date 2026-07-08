#include <QAbstractItemModel>
#include <QAbstractTableModel>
#include <QByteArray>
#include <QChildEvent>
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
#include <QSize>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlIndex>
#include <QSqlQuery>
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QSqlRelation>
#include <QSqlRelationalTableModel>
#include <QSqlTableModel>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qsqlrelationaltablemodel.h>
#include "gen_qsqlrelationaltablemodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QSqlRelation* QSqlRelation_new() {
	return new (std::nothrow) QSqlRelation();
}

QSqlRelation* QSqlRelation_new2(struct seaqt_string aTableName, struct seaqt_string indexCol, struct seaqt_string displayCol) {
	QString aTableName_QString = QString::fromUtf8(aTableName.data, aTableName.len);
	QString indexCol_QString = QString::fromUtf8(indexCol.data, indexCol.len);
	QString displayCol_QString = QString::fromUtf8(displayCol.data, displayCol.len);
	return new (std::nothrow) QSqlRelation(aTableName_QString, indexCol_QString, displayCol_QString);
}

QSqlRelation* QSqlRelation_new3(QSqlRelation* param1) {
	return new (std::nothrow) QSqlRelation(*param1);
}

void QSqlRelation_swap(QSqlRelation* self, QSqlRelation* other) {
	self->swap(*other);
}

struct seaqt_string QSqlRelation_tableName(const QSqlRelation* self) {
	QString _ret = self->tableName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlRelation_indexColumn(const QSqlRelation* self) {
	QString _ret = self->indexColumn();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlRelation_displayColumn(const QSqlRelation* self) {
	QString _ret = self->displayColumn();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSqlRelation_isValid(const QSqlRelation* self) {
	return self->isValid();
}

void QSqlRelation_operatorAssign(QSqlRelation* self, QSqlRelation* param1) {
	self->operator=(*param1);
}

void QSqlRelation_delete(QSqlRelation* self) {
	delete self;
}

class VirtualQSqlRelationalTableModel final : public QSqlRelationalTableModel {
	const QSqlRelationalTableModel_VTable* vtbl;
public:
	friend void* QSqlRelationalTableModel_vdata(VirtualQSqlRelationalTableModel* self);
	friend VirtualQSqlRelationalTableModel* vdata_QSqlRelationalTableModel(void* vdata);

	VirtualQSqlRelationalTableModel(const QSqlRelationalTableModel_VTable* vtbl): QSqlRelationalTableModel(), vtbl(vtbl) {}
	VirtualQSqlRelationalTableModel(const QSqlRelationalTableModel_VTable* vtbl, QObject* parent): QSqlRelationalTableModel(parent), vtbl(vtbl) {}
	VirtualQSqlRelationalTableModel(const QSqlRelationalTableModel_VTable* vtbl, QObject* parent, const QSqlDatabase& db): QSqlRelationalTableModel(parent, db), vtbl(vtbl) {}

	virtual ~VirtualQSqlRelationalTableModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSqlRelationalTableModel::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSqlRelationalTableModel_virtualbase_metaObject(const VirtualQSqlRelationalTableModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSqlRelationalTableModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSqlRelationalTableModel_virtualbase_metacast(VirtualQSqlRelationalTableModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSqlRelationalTableModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_metacall(VirtualQSqlRelationalTableModel* self, int param1, int param2, void** param3);

	virtual QVariant data(const QModelIndex& item, int role) const override {
		if (vtbl->data == 0) {
			return QSqlRelationalTableModel::data(item, role);
		}

		const QModelIndex& item_ret = item;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&item_ret);
		int sigval2 = role;
		QVariant* callback_return_value = vtbl->data(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QSqlRelationalTableModel_virtualbase_data(const VirtualQSqlRelationalTableModel* self, QModelIndex* item, int role);

	virtual bool setData(const QModelIndex& item, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QSqlRelationalTableModel::setData(item, value, role);
		}

		const QModelIndex& item_ret = item;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&item_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		int sigval3 = role;
		bool callback_return_value = vtbl->setData(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_setData(VirtualQSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QSqlRelationalTableModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_removeColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QSqlRelationalTableModel::clear();
			return;
		}

		vtbl->clear(this);
	}

	friend void QSqlRelationalTableModel_virtualbase_clear(VirtualQSqlRelationalTableModel* self);

	virtual bool select() override {
		if (vtbl->select == 0) {
			return QSqlRelationalTableModel::select();
		}

		bool callback_return_value = vtbl->select(this);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_select(VirtualQSqlRelationalTableModel* self);

	virtual void setTable(const QString& tableName) override {
		if (vtbl->setTable == 0) {
			QSqlRelationalTableModel::setTable(tableName);
			return;
		}

		const QString tableName_ret = tableName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray tableName_b = tableName_ret.toUtf8();
		struct seaqt_string tableName_ms;
		tableName_ms.len = tableName_b.length();
		tableName_ms.data = static_cast<char*>(malloc(tableName_ms.len));
		memcpy(tableName_ms.data, tableName_b.data(), tableName_ms.len);
		struct seaqt_string sigval1 = tableName_ms;
		vtbl->setTable(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_setTable(VirtualQSqlRelationalTableModel* self, struct seaqt_string tableName);

	virtual void setRelation(int column, const QSqlRelation& relation) override {
		if (vtbl->setRelation == 0) {
			QSqlRelationalTableModel::setRelation(column, relation);
			return;
		}

		int sigval1 = column;
		const QSqlRelation& relation_ret = relation;
		// Cast returned reference into pointer
		QSqlRelation* sigval2 = const_cast<QSqlRelation*>(&relation_ret);
		vtbl->setRelation(this, sigval1, sigval2);
	}

	friend void QSqlRelationalTableModel_virtualbase_setRelation(VirtualQSqlRelationalTableModel* self, int column, QSqlRelation* relation);

	virtual QSqlTableModel* relationModel(int column) const override {
		if (vtbl->relationModel == 0) {
			return QSqlRelationalTableModel::relationModel(column);
		}

		int sigval1 = column;
		QSqlTableModel* callback_return_value = vtbl->relationModel(this, sigval1);
		return callback_return_value;
	}

	friend QSqlTableModel* QSqlRelationalTableModel_virtualbase_relationModel(const VirtualQSqlRelationalTableModel* self, int column);

	virtual void revertRow(int row) override {
		if (vtbl->revertRow == 0) {
			QSqlRelationalTableModel::revertRow(row);
			return;
		}

		int sigval1 = row;
		vtbl->revertRow(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_revertRow(VirtualQSqlRelationalTableModel* self, int row);

	virtual QString selectStatement() const override {
		if (vtbl->selectStatement == 0) {
			return QSqlRelationalTableModel::selectStatement();
		}

		struct seaqt_string callback_return_value = vtbl->selectStatement(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlRelationalTableModel_virtualbase_selectStatement(const VirtualQSqlRelationalTableModel* self);

	virtual bool updateRowInTable(int row, const QSqlRecord& values) override {
		if (vtbl->updateRowInTable == 0) {
			return QSqlRelationalTableModel::updateRowInTable(row, values);
		}

		int sigval1 = row;
		const QSqlRecord& values_ret = values;
		// Cast returned reference into pointer
		QSqlRecord* sigval2 = const_cast<QSqlRecord*>(&values_ret);
		bool callback_return_value = vtbl->updateRowInTable(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_updateRowInTable(VirtualQSqlRelationalTableModel* self, int row, QSqlRecord* values);

	virtual bool insertRowIntoTable(const QSqlRecord& values) override {
		if (vtbl->insertRowIntoTable == 0) {
			return QSqlRelationalTableModel::insertRowIntoTable(values);
		}

		const QSqlRecord& values_ret = values;
		// Cast returned reference into pointer
		QSqlRecord* sigval1 = const_cast<QSqlRecord*>(&values_ret);
		bool callback_return_value = vtbl->insertRowIntoTable(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_insertRowIntoTable(VirtualQSqlRelationalTableModel* self, QSqlRecord* values);

	virtual QString orderByClause() const override {
		if (vtbl->orderByClause == 0) {
			return QSqlRelationalTableModel::orderByClause();
		}

		struct seaqt_string callback_return_value = vtbl->orderByClause(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlRelationalTableModel_virtualbase_orderByClause(const VirtualQSqlRelationalTableModel* self);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QSqlRelationalTableModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int callback_return_value = vtbl->flags(this, sigval1);
		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_flags(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);

	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QSqlRelationalTableModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		bool callback_return_value = vtbl->clearItemData(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_clearItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QSqlRelationalTableModel::headerData(section, orientation, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		int sigval3 = role;
		QVariant* callback_return_value = vtbl->headerData(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QSqlRelationalTableModel_virtualbase_headerData(const VirtualQSqlRelationalTableModel* self, int section, int orientation, int role);

	virtual void setEditStrategy(QSqlTableModel::EditStrategy strategy) override {
		if (vtbl->setEditStrategy == 0) {
			QSqlRelationalTableModel::setEditStrategy(strategy);
			return;
		}

		QSqlTableModel::EditStrategy strategy_ret = strategy;
		int sigval1 = static_cast<int>(strategy_ret);
		vtbl->setEditStrategy(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_setEditStrategy(VirtualQSqlRelationalTableModel* self, int strategy);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QSqlRelationalTableModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->sort(this, sigval1, sigval2);
	}

	friend void QSqlRelationalTableModel_virtualbase_sort(VirtualQSqlRelationalTableModel* self, int column, int order);

	virtual void setSort(int column, Qt::SortOrder order) override {
		if (vtbl->setSort == 0) {
			QSqlRelationalTableModel::setSort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->setSort(this, sigval1, sigval2);
	}

	friend void QSqlRelationalTableModel_virtualbase_setSort(VirtualQSqlRelationalTableModel* self, int column, int order);

	virtual void setFilter(const QString& filter) override {
		if (vtbl->setFilter == 0) {
			QSqlRelationalTableModel::setFilter(filter);
			return;
		}

		const QString filter_ret = filter;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filter_b = filter_ret.toUtf8();
		struct seaqt_string filter_ms;
		filter_ms.len = filter_b.length();
		filter_ms.data = static_cast<char*>(malloc(filter_ms.len));
		memcpy(filter_ms.data, filter_b.data(), filter_ms.len);
		struct seaqt_string sigval1 = filter_ms;
		vtbl->setFilter(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_setFilter(VirtualQSqlRelationalTableModel* self, struct seaqt_string filter);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QSqlRelationalTableModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->rowCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_rowCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QSqlRelationalTableModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_removeRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QSqlRelationalTableModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_insertRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent);

	virtual bool selectRow(int row) override {
		if (vtbl->selectRow == 0) {
			return QSqlRelationalTableModel::selectRow(row);
		}

		int sigval1 = row;
		bool callback_return_value = vtbl->selectRow(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_selectRow(VirtualQSqlRelationalTableModel* self, int row);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QSqlRelationalTableModel::submit();
		}

		bool callback_return_value = vtbl->submit(this);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_submit(VirtualQSqlRelationalTableModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QSqlRelationalTableModel::revert();
			return;
		}

		vtbl->revert(this);
	}

	friend void QSqlRelationalTableModel_virtualbase_revert(VirtualQSqlRelationalTableModel* self);

	virtual bool deleteRowFromTable(int row) override {
		if (vtbl->deleteRowFromTable == 0) {
			return QSqlRelationalTableModel::deleteRowFromTable(row);
		}

		int sigval1 = row;
		bool callback_return_value = vtbl->deleteRowFromTable(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_deleteRowFromTable(VirtualQSqlRelationalTableModel* self, int row);

	virtual QModelIndex indexInQuery(const QModelIndex& item) const override {
		if (vtbl->indexInQuery == 0) {
			return QSqlRelationalTableModel::indexInQuery(item);
		}

		const QModelIndex& item_ret = item;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&item_ret);
		QModelIndex* callback_return_value = vtbl->indexInQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlRelationalTableModel_virtualbase_indexInQuery(const VirtualQSqlRelationalTableModel* self, QModelIndex* item);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QSqlRelationalTableModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->columnCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_columnCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QSqlRelationalTableModel::setHeaderData(section, orientation, value, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = role;
		bool callback_return_value = vtbl->setHeaderData(this, sigval1, sigval2, sigval3, sigval4);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_setHeaderData(VirtualQSqlRelationalTableModel* self, int section, int orientation, QVariant* value, int role);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QSqlRelationalTableModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_insertColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QSqlRelationalTableModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		vtbl->fetchMore(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_fetchMore(VirtualQSqlRelationalTableModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QSqlRelationalTableModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canFetchMore(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_canFetchMore(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QSqlRelationalTableModel::roleNames();
		}

		struct seaqt_map /* of int to struct seaqt_string */  callback_return_value = vtbl->roleNames(this);
		QHash<int, QByteArray> callback_return_value_QMap;
		callback_return_value_QMap.reserve(callback_return_value.len);
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		struct seaqt_string* callback_return_value_varr = static_cast<struct seaqt_string*>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_varr_i_QByteArray(callback_return_value_varr[i].data, callback_return_value_varr[i].len);
			free(callback_return_value_varr[i].data);
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = callback_return_value_varr_i_QByteArray;
		}
		free(callback_return_value.keys);
		free(callback_return_value.values);
		return callback_return_value_QMap;
	}

	friend struct seaqt_map /* of int to struct seaqt_string */  QSqlRelationalTableModel_virtualbase_roleNames(const VirtualQSqlRelationalTableModel* self);

	virtual void queryChange() override {
		if (vtbl->queryChange == 0) {
			QSqlRelationalTableModel::queryChange();
			return;
		}

		vtbl->queryChange(this);
	}

	friend void QSqlRelationalTableModel_virtualbase_queryChange(VirtualQSqlRelationalTableModel* self);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QSqlRelationalTableModel::index(row, column, parent);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		QModelIndex* callback_return_value = vtbl->index(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlRelationalTableModel_virtualbase_index(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QSqlRelationalTableModel::sibling(row, column, idx);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& idx_ret = idx;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&idx_ret);
		QModelIndex* callback_return_value = vtbl->sibling(this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlRelationalTableModel_virtualbase_sibling(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QSqlRelationalTableModel::dropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->dropMimeData(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_dropMimeData(VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QSqlRelationalTableModel::itemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		struct seaqt_map /* of int to QVariant* */  callback_return_value = vtbl->itemData(this, sigval1);
		QMap<int, QVariant> callback_return_value_QMap;
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		QVariant** callback_return_value_varr = static_cast<QVariant**>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = *(callback_return_value_varr[i]);
		}
		free(callback_return_value.keys);
		free(callback_return_value.values);
		return callback_return_value_QMap;
	}

	friend struct seaqt_map /* of int to QVariant* */  QSqlRelationalTableModel_virtualbase_itemData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QSqlRelationalTableModel::setItemData(index, roles);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QMap<int, QVariant>& roles_ret = roles;
		// Convert QMap<> from C++ memory to manually-managed C memory
		int* roles_karr = static_cast<int*>(malloc(sizeof(int) * roles_ret.size()));
		QVariant** roles_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * roles_ret.size()));
		int roles_ctr = 0;
		for (auto roles_itr = roles_ret.keyValueBegin(); roles_itr != roles_ret.keyValueEnd(); ++roles_itr) {
			roles_karr[roles_ctr] = roles_itr->first;
			roles_varr[roles_ctr] = new QVariant(roles_itr->second);
			roles_ctr++;
		}
		struct seaqt_map roles_out;
		roles_out.len = roles_ret.size();
		roles_out.keys = static_cast<void*>(roles_karr);
		roles_out.values = static_cast<void*>(roles_varr);
		struct seaqt_map /* of int to QVariant* */  sigval2 = roles_out;
		bool callback_return_value = vtbl->setItemData(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_setItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QSqlRelationalTableModel::mimeTypes();
		}

		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->mimeTypes(this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of struct seaqt_string */  QSqlRelationalTableModel_virtualbase_mimeTypes(const VirtualQSqlRelationalTableModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QSqlRelationalTableModel::mimeData(indexes);
		}

		const QModelIndexList& indexes_ret = indexes;
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * indexes_ret.length()));
		for (size_t i = 0, e = indexes_ret.length(); i < e; ++i) {
			indexes_arr[i] = new QModelIndex(indexes_ret[i]);
		}
		struct seaqt_array indexes_out;
		indexes_out.len = indexes_ret.length();
		indexes_out.data = static_cast<void*>(indexes_arr);
		struct seaqt_array /* of QModelIndex* */  sigval1 = indexes_out;
		QMimeData* callback_return_value = vtbl->mimeData(this, sigval1);
		return callback_return_value;
	}

	friend QMimeData* QSqlRelationalTableModel_virtualbase_mimeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QSqlRelationalTableModel::canDropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canDropMimeData(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_canDropMimeData(const VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QSqlRelationalTableModel::supportedDropActions();
		}

		int callback_return_value = vtbl->supportedDropActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_supportedDropActions(const VirtualQSqlRelationalTableModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QSqlRelationalTableModel::supportedDragActions();
		}

		int callback_return_value = vtbl->supportedDragActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QSqlRelationalTableModel_virtualbase_supportedDragActions(const VirtualQSqlRelationalTableModel* self);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QSqlRelationalTableModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceRow;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;
		bool callback_return_value = vtbl->moveRows(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_moveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QSqlRelationalTableModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceColumn;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;
		bool callback_return_value = vtbl->moveColumns(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_moveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QSqlRelationalTableModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlRelationalTableModel_virtualbase_buddy(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QSqlRelationalTableModel::match(start, role, value, hits, flags);
		}

		const QModelIndex& start_ret = start;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&start_ret);
		int sigval2 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = hits;
		Qt::MatchFlags flags_ret = flags;
		int sigval5 = static_cast<int>(flags_ret);
		struct seaqt_array /* of QModelIndex* */  callback_return_value = vtbl->match(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	friend struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_virtualbase_match(const VirtualQSqlRelationalTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QSqlRelationalTableModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QSqlRelationalTableModel_virtualbase_span(const VirtualQSqlRelationalTableModel* self, QModelIndex* index);

	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QSqlRelationalTableModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);
		vtbl->multiData(this, sigval1, sigval2);
	}

	friend void QSqlRelationalTableModel_virtualbase_multiData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QSqlRelationalTableModel::resetInternalData();
			return;
		}

		vtbl->resetInternalData(this);
	}

	friend void QSqlRelationalTableModel_virtualbase_resetInternalData(VirtualQSqlRelationalTableModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSqlRelationalTableModel::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_event(VirtualQSqlRelationalTableModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSqlRelationalTableModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlRelationalTableModel_virtualbase_eventFilter(VirtualQSqlRelationalTableModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSqlRelationalTableModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_timerEvent(VirtualQSqlRelationalTableModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSqlRelationalTableModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_childEvent(VirtualQSqlRelationalTableModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSqlRelationalTableModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_customEvent(VirtualQSqlRelationalTableModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSqlRelationalTableModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_connectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSqlRelationalTableModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSqlRelationalTableModel_virtualbase_disconnectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSqlRelationalTableModel_protectedbase_setPrimaryKey(VirtualQSqlRelationalTableModel* self, QSqlIndex* key);
	friend void QSqlRelationalTableModel_protectedbase_setQuery(VirtualQSqlRelationalTableModel* self, QSqlQuery* query);
	friend QSqlRecord* QSqlRelationalTableModel_protectedbase_primaryValues(const VirtualQSqlRelationalTableModel* self, int row);
	friend void QSqlRelationalTableModel_protectedbase_beginInsertRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlRelationalTableModel_protectedbase_endInsertRows(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_beginRemoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlRelationalTableModel_protectedbase_endRemoveRows(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_beginInsertColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlRelationalTableModel_protectedbase_endInsertColumns(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_beginRemoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlRelationalTableModel_protectedbase_endRemoveColumns(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_beginResetModel(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_endResetModel(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_setLastError(VirtualQSqlRelationalTableModel* self, QSqlError* error);
	friend QModelIndex* QSqlRelationalTableModel_protectedbase_createIndex(const VirtualQSqlRelationalTableModel* self, int row, int column);
	friend void QSqlRelationalTableModel_protectedbase_encodeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QSqlRelationalTableModel_protectedbase_decodeData(VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend bool QSqlRelationalTableModel_protectedbase_beginMoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QSqlRelationalTableModel_protectedbase_endMoveRows(VirtualQSqlRelationalTableModel* self);
	friend bool QSqlRelationalTableModel_protectedbase_beginMoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QSqlRelationalTableModel_protectedbase_endMoveColumns(VirtualQSqlRelationalTableModel* self);
	friend void QSqlRelationalTableModel_protectedbase_changePersistentIndex(VirtualQSqlRelationalTableModel* self, QModelIndex* from, QModelIndex* to);
	friend void QSqlRelationalTableModel_protectedbase_changePersistentIndexList(VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
	friend struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_protectedbase_persistentIndexList(const VirtualQSqlRelationalTableModel* self);
	friend QObject* QSqlRelationalTableModel_protectedbase_sender(const VirtualQSqlRelationalTableModel* self);
	friend int QSqlRelationalTableModel_protectedbase_senderSignalIndex(const VirtualQSqlRelationalTableModel* self);
	friend int QSqlRelationalTableModel_protectedbase_receivers(const VirtualQSqlRelationalTableModel* self, const char* signal);
	friend bool QSqlRelationalTableModel_protectedbase_isSignalConnected(const VirtualQSqlRelationalTableModel* self, QMetaMethod* signal);
};

VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlRelationalTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlRelationalTableModel(vtbl) : nullptr;
}

VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new2(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlRelationalTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlRelationalTableModel(vtbl, parent) : nullptr;
}

VirtualQSqlRelationalTableModel* QSqlRelationalTableModel_new3(const QSqlRelationalTableModel_VTable* vtbl, size_t vdata, QObject* parent, QSqlDatabase* db) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlRelationalTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlRelationalTableModel(vtbl, parent, *db) : nullptr;
}

void QSqlRelationalTableModel_virtbase(QSqlRelationalTableModel* src, QSqlTableModel** outptr_QSqlTableModel) {
	*outptr_QSqlTableModel = static_cast<QSqlTableModel*>(src);
}

QMetaObject* QSqlRelationalTableModel_metaObject(const QSqlRelationalTableModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSqlRelationalTableModel_metacast(QSqlRelationalTableModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSqlRelationalTableModel_metacall(QSqlRelationalTableModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSqlRelationalTableModel_tr(const char* s) {
	QString _ret = QSqlRelationalTableModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QSqlRelationalTableModel_data(const QSqlRelationalTableModel* self, QModelIndex* item, int role) {
	return new QVariant(self->data(*item, static_cast<int>(role)));
}

bool QSqlRelationalTableModel_setData(QSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role) {
	return self->setData(*item, *value, static_cast<int>(role));
}

bool QSqlRelationalTableModel_removeColumns(QSqlRelationalTableModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

void QSqlRelationalTableModel_clear(QSqlRelationalTableModel* self) {
	self->clear();
}

bool QSqlRelationalTableModel_select(QSqlRelationalTableModel* self) {
	return self->select();
}

void QSqlRelationalTableModel_setTable(QSqlRelationalTableModel* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);
	self->setTable(tableName_QString);
}

void QSqlRelationalTableModel_setRelation(QSqlRelationalTableModel* self, int column, QSqlRelation* relation) {
	self->setRelation(static_cast<int>(column), *relation);
}

QSqlRelation* QSqlRelationalTableModel_relation(const QSqlRelationalTableModel* self, int column) {
	return new QSqlRelation(self->relation(static_cast<int>(column)));
}

QSqlTableModel* QSqlRelationalTableModel_relationModel(const QSqlRelationalTableModel* self, int column) {
	return self->relationModel(static_cast<int>(column));
}

void QSqlRelationalTableModel_setJoinMode(QSqlRelationalTableModel* self, int joinMode) {
	self->setJoinMode(static_cast<QSqlRelationalTableModel::JoinMode>(joinMode));
}

void QSqlRelationalTableModel_revertRow(QSqlRelationalTableModel* self, int row) {
	self->revertRow(static_cast<int>(row));
}

struct seaqt_string QSqlRelationalTableModel_tr2(const char* s, const char* c) {
	QString _ret = QSqlRelationalTableModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlRelationalTableModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QSqlRelationalTableModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QSqlRelationalTableModel_staticMetaObject() { return &QSqlRelationalTableModel::staticMetaObject; }
void* QSqlRelationalTableModel_vdata(VirtualQSqlRelationalTableModel* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSqlRelationalTableModel>()); }
VirtualQSqlRelationalTableModel* vdata_QSqlRelationalTableModel(void* vdata) { return reinterpret_cast<VirtualQSqlRelationalTableModel*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSqlRelationalTableModel>()); }

QMetaObject* QSqlRelationalTableModel_virtualbase_metaObject(const VirtualQSqlRelationalTableModel* self) {

	return (QMetaObject*) self->QSqlRelationalTableModel::metaObject();
}

void* QSqlRelationalTableModel_virtualbase_metacast(VirtualQSqlRelationalTableModel* self, const char* param1) {

	return self->QSqlRelationalTableModel::qt_metacast(param1);
}

int QSqlRelationalTableModel_virtualbase_metacall(VirtualQSqlRelationalTableModel* self, int param1, int param2, void** param3) {

	return self->QSqlRelationalTableModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QSqlRelationalTableModel_virtualbase_data(const VirtualQSqlRelationalTableModel* self, QModelIndex* item, int role) {

	return new QVariant(self->QSqlRelationalTableModel::data(*item, static_cast<int>(role)));
}

bool QSqlRelationalTableModel_virtualbase_setData(VirtualQSqlRelationalTableModel* self, QModelIndex* item, QVariant* value, int role) {

	return self->QSqlRelationalTableModel::setData(*item, *value, static_cast<int>(role));
}

bool QSqlRelationalTableModel_virtualbase_removeColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

void QSqlRelationalTableModel_virtualbase_clear(VirtualQSqlRelationalTableModel* self) {

	self->QSqlRelationalTableModel::clear();
}

bool QSqlRelationalTableModel_virtualbase_select(VirtualQSqlRelationalTableModel* self) {

	return self->QSqlRelationalTableModel::select();
}

void QSqlRelationalTableModel_virtualbase_setTable(VirtualQSqlRelationalTableModel* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);

	self->QSqlRelationalTableModel::setTable(tableName_QString);
}

void QSqlRelationalTableModel_virtualbase_setRelation(VirtualQSqlRelationalTableModel* self, int column, QSqlRelation* relation) {

	self->QSqlRelationalTableModel::setRelation(static_cast<int>(column), *relation);
}

QSqlTableModel* QSqlRelationalTableModel_virtualbase_relationModel(const VirtualQSqlRelationalTableModel* self, int column) {

	return self->QSqlRelationalTableModel::relationModel(static_cast<int>(column));
}

void QSqlRelationalTableModel_virtualbase_revertRow(VirtualQSqlRelationalTableModel* self, int row) {

	self->QSqlRelationalTableModel::revertRow(static_cast<int>(row));
}

struct seaqt_string QSqlRelationalTableModel_virtualbase_selectStatement(const VirtualQSqlRelationalTableModel* self) {

	QString _ret = self->QSqlRelationalTableModel::selectStatement();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSqlRelationalTableModel_virtualbase_updateRowInTable(VirtualQSqlRelationalTableModel* self, int row, QSqlRecord* values) {

	return self->QSqlRelationalTableModel::updateRowInTable(static_cast<int>(row), *values);
}

bool QSqlRelationalTableModel_virtualbase_insertRowIntoTable(VirtualQSqlRelationalTableModel* self, QSqlRecord* values) {

	return self->QSqlRelationalTableModel::insertRowIntoTable(*values);
}

struct seaqt_string QSqlRelationalTableModel_virtualbase_orderByClause(const VirtualQSqlRelationalTableModel* self) {

	QString _ret = self->QSqlRelationalTableModel::orderByClause();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSqlRelationalTableModel_virtualbase_flags(const VirtualQSqlRelationalTableModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QSqlRelationalTableModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QSqlRelationalTableModel_virtualbase_clearItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index) {

	return self->QSqlRelationalTableModel::clearItemData(*index);
}

QVariant* QSqlRelationalTableModel_virtualbase_headerData(const VirtualQSqlRelationalTableModel* self, int section, int orientation, int role) {

	return new QVariant(self->QSqlRelationalTableModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

void QSqlRelationalTableModel_virtualbase_setEditStrategy(VirtualQSqlRelationalTableModel* self, int strategy) {

	self->QSqlRelationalTableModel::setEditStrategy(static_cast<VirtualQSqlRelationalTableModel::EditStrategy>(strategy));
}

void QSqlRelationalTableModel_virtualbase_sort(VirtualQSqlRelationalTableModel* self, int column, int order) {

	self->QSqlRelationalTableModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QSqlRelationalTableModel_virtualbase_setSort(VirtualQSqlRelationalTableModel* self, int column, int order) {

	self->QSqlRelationalTableModel::setSort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QSqlRelationalTableModel_virtualbase_setFilter(VirtualQSqlRelationalTableModel* self, struct seaqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);

	self->QSqlRelationalTableModel::setFilter(filter_QString);
}

int QSqlRelationalTableModel_virtualbase_rowCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::rowCount(*parent);
}

bool QSqlRelationalTableModel_virtualbase_removeRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSqlRelationalTableModel_virtualbase_insertRows(VirtualQSqlRelationalTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSqlRelationalTableModel_virtualbase_selectRow(VirtualQSqlRelationalTableModel* self, int row) {

	return self->QSqlRelationalTableModel::selectRow(static_cast<int>(row));
}

bool QSqlRelationalTableModel_virtualbase_submit(VirtualQSqlRelationalTableModel* self) {

	return self->QSqlRelationalTableModel::submit();
}

void QSqlRelationalTableModel_virtualbase_revert(VirtualQSqlRelationalTableModel* self) {

	self->QSqlRelationalTableModel::revert();
}

bool QSqlRelationalTableModel_virtualbase_deleteRowFromTable(VirtualQSqlRelationalTableModel* self, int row) {

	return self->QSqlRelationalTableModel::deleteRowFromTable(static_cast<int>(row));
}

QModelIndex* QSqlRelationalTableModel_virtualbase_indexInQuery(const VirtualQSqlRelationalTableModel* self, QModelIndex* item) {

	return new QModelIndex(self->QSqlRelationalTableModel::indexInQuery(*item));
}

int QSqlRelationalTableModel_virtualbase_columnCount(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::columnCount(*parent);
}

bool QSqlRelationalTableModel_virtualbase_setHeaderData(VirtualQSqlRelationalTableModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QSqlRelationalTableModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QSqlRelationalTableModel_virtualbase_insertColumns(VirtualQSqlRelationalTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

void QSqlRelationalTableModel_virtualbase_fetchMore(VirtualQSqlRelationalTableModel* self, QModelIndex* parent) {

	self->QSqlRelationalTableModel::fetchMore(*parent);
}

bool QSqlRelationalTableModel_virtualbase_canFetchMore(const VirtualQSqlRelationalTableModel* self, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::canFetchMore(*parent);
}

struct seaqt_map /* of int to struct seaqt_string */  QSqlRelationalTableModel_virtualbase_roleNames(const VirtualQSqlRelationalTableModel* self) {

	QHash<int, QByteArray> _ret = self->QSqlRelationalTableModel::roleNames();
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

void QSqlRelationalTableModel_virtualbase_queryChange(VirtualQSqlRelationalTableModel* self) {

	self->QSqlRelationalTableModel::queryChange();
}

QModelIndex* QSqlRelationalTableModel_virtualbase_index(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QSqlRelationalTableModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QSqlRelationalTableModel_virtualbase_sibling(const VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QSqlRelationalTableModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QSqlRelationalTableModel_virtualbase_dropMimeData(VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct seaqt_map /* of int to QVariant* */  QSqlRelationalTableModel_virtualbase_itemData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QSqlRelationalTableModel::itemData(*index);
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

bool QSqlRelationalTableModel_virtualbase_setItemData(VirtualQSqlRelationalTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QSqlRelationalTableModel::setItemData(*index, roles_QMap);
}

struct seaqt_array /* of struct seaqt_string */  QSqlRelationalTableModel_virtualbase_mimeTypes(const VirtualQSqlRelationalTableModel* self) {

	QStringList _ret = self->QSqlRelationalTableModel::mimeTypes();
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

QMimeData* QSqlRelationalTableModel_virtualbase_mimeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QSqlRelationalTableModel::mimeData(indexes_QList);
}

bool QSqlRelationalTableModel_virtualbase_canDropMimeData(const VirtualQSqlRelationalTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QSqlRelationalTableModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QSqlRelationalTableModel_virtualbase_supportedDropActions(const VirtualQSqlRelationalTableModel* self) {

	Qt::DropActions _ret = self->QSqlRelationalTableModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QSqlRelationalTableModel_virtualbase_supportedDragActions(const VirtualQSqlRelationalTableModel* self) {

	Qt::DropActions _ret = self->QSqlRelationalTableModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QSqlRelationalTableModel_virtualbase_moveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QSqlRelationalTableModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QSqlRelationalTableModel_virtualbase_moveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QSqlRelationalTableModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

QModelIndex* QSqlRelationalTableModel_virtualbase_buddy(const VirtualQSqlRelationalTableModel* self, QModelIndex* index) {

	return new QModelIndex(self->QSqlRelationalTableModel::buddy(*index));
}

struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_virtualbase_match(const VirtualQSqlRelationalTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QSqlRelationalTableModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QSqlRelationalTableModel_virtualbase_span(const VirtualQSqlRelationalTableModel* self, QModelIndex* index) {

	return new QSize(self->QSqlRelationalTableModel::span(*index));
}

void QSqlRelationalTableModel_virtualbase_multiData(const VirtualQSqlRelationalTableModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	self->QSqlRelationalTableModel::multiData(*index, *roleDataSpan);
}

void QSqlRelationalTableModel_virtualbase_resetInternalData(VirtualQSqlRelationalTableModel* self) {

	self->QSqlRelationalTableModel::resetInternalData();
}

bool QSqlRelationalTableModel_virtualbase_event(VirtualQSqlRelationalTableModel* self, QEvent* event) {

	return self->QSqlRelationalTableModel::event(event);
}

bool QSqlRelationalTableModel_virtualbase_eventFilter(VirtualQSqlRelationalTableModel* self, QObject* watched, QEvent* event) {

	return self->QSqlRelationalTableModel::eventFilter(watched, event);
}

void QSqlRelationalTableModel_virtualbase_timerEvent(VirtualQSqlRelationalTableModel* self, QTimerEvent* event) {

	self->QSqlRelationalTableModel::timerEvent(event);
}

void QSqlRelationalTableModel_virtualbase_childEvent(VirtualQSqlRelationalTableModel* self, QChildEvent* event) {

	self->QSqlRelationalTableModel::childEvent(event);
}

void QSqlRelationalTableModel_virtualbase_customEvent(VirtualQSqlRelationalTableModel* self, QEvent* event) {

	self->QSqlRelationalTableModel::customEvent(event);
}

void QSqlRelationalTableModel_virtualbase_connectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal) {

	self->QSqlRelationalTableModel::connectNotify(*signal);
}

void QSqlRelationalTableModel_virtualbase_disconnectNotify(VirtualQSqlRelationalTableModel* self, QMetaMethod* signal) {

	self->QSqlRelationalTableModel::disconnectNotify(*signal);
}

void QSqlRelationalTableModel_protectedbase_setPrimaryKey(VirtualQSqlRelationalTableModel* self, QSqlIndex* key) {
	self->setPrimaryKey(*key);
}

void QSqlRelationalTableModel_protectedbase_setQuery(VirtualQSqlRelationalTableModel* self, QSqlQuery* query) {
	self->setQuery(*query);
}

QSqlRecord* QSqlRelationalTableModel_protectedbase_primaryValues(const VirtualQSqlRelationalTableModel* self, int row) {
	return new QSqlRecord(self->primaryValues(static_cast<int>(row)));
}

void QSqlRelationalTableModel_protectedbase_beginInsertRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlRelationalTableModel_protectedbase_endInsertRows(VirtualQSqlRelationalTableModel* self) {
	self->endInsertRows();
}

void QSqlRelationalTableModel_protectedbase_beginRemoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlRelationalTableModel_protectedbase_endRemoveRows(VirtualQSqlRelationalTableModel* self) {
	self->endRemoveRows();
}

void QSqlRelationalTableModel_protectedbase_beginInsertColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlRelationalTableModel_protectedbase_endInsertColumns(VirtualQSqlRelationalTableModel* self) {
	self->endInsertColumns();
}

void QSqlRelationalTableModel_protectedbase_beginRemoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlRelationalTableModel_protectedbase_endRemoveColumns(VirtualQSqlRelationalTableModel* self) {
	self->endRemoveColumns();
}

void QSqlRelationalTableModel_protectedbase_beginResetModel(VirtualQSqlRelationalTableModel* self) {
	self->beginResetModel();
}

void QSqlRelationalTableModel_protectedbase_endResetModel(VirtualQSqlRelationalTableModel* self) {
	self->endResetModel();
}

void QSqlRelationalTableModel_protectedbase_setLastError(VirtualQSqlRelationalTableModel* self, QSqlError* error) {
	self->setLastError(*error);
}

QModelIndex* QSqlRelationalTableModel_protectedbase_createIndex(const VirtualQSqlRelationalTableModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QSqlRelationalTableModel_protectedbase_encodeData(const VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QSqlRelationalTableModel_protectedbase_decodeData(VirtualQSqlRelationalTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

bool QSqlRelationalTableModel_protectedbase_beginMoveRows(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QSqlRelationalTableModel_protectedbase_endMoveRows(VirtualQSqlRelationalTableModel* self) {
	self->endMoveRows();
}

bool QSqlRelationalTableModel_protectedbase_beginMoveColumns(VirtualQSqlRelationalTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QSqlRelationalTableModel_protectedbase_endMoveColumns(VirtualQSqlRelationalTableModel* self) {
	self->endMoveColumns();
}

void QSqlRelationalTableModel_protectedbase_changePersistentIndex(VirtualQSqlRelationalTableModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QSqlRelationalTableModel_protectedbase_changePersistentIndexList(VirtualQSqlRelationalTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to) {
		QModelIndexList from_QList;
		from_QList.reserve(from.len);
		QModelIndex** from_arr = static_cast<QModelIndex**>(from.data);
		for(size_t i = 0; i < from.len; ++i) {
			from_QList.push_back(*(from_arr[i]));
		}
		QModelIndexList to_QList;
		to_QList.reserve(to.len);
		QModelIndex** to_arr = static_cast<QModelIndex**>(to.data);
		for(size_t i = 0; i < to.len; ++i) {
			to_QList.push_back(*(to_arr[i]));
		}
	self->changePersistentIndexList(from_QList, to_QList);
}

struct seaqt_array /* of QModelIndex* */  QSqlRelationalTableModel_protectedbase_persistentIndexList(const VirtualQSqlRelationalTableModel* self) {
	QModelIndexList _ret = self->persistentIndexList();
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

QObject* QSqlRelationalTableModel_protectedbase_sender(const VirtualQSqlRelationalTableModel* self) {
	return self->sender();
}

int QSqlRelationalTableModel_protectedbase_senderSignalIndex(const VirtualQSqlRelationalTableModel* self) {
	return self->senderSignalIndex();
}

int QSqlRelationalTableModel_protectedbase_receivers(const VirtualQSqlRelationalTableModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QSqlRelationalTableModel_protectedbase_isSignalConnected(const VirtualQSqlRelationalTableModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSqlRelationalTableModel_delete(QSqlRelationalTableModel* self) {
	delete self;
}

