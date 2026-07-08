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
#include <QObject>
#include <QSize>
#include <QSqlDatabase>
#include <QSqlError>
#include <QSqlIndex>
#include <QSqlQuery>
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QSqlTableModel>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qsqltablemodel.h>
#include "gen_qsqltablemodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSqlTableModel final : public QSqlTableModel {
	const QSqlTableModel_VTable* vtbl;
public:
	friend void* QSqlTableModel_vdata(VirtualQSqlTableModel* self);
	friend VirtualQSqlTableModel* vdata_QSqlTableModel(void* vdata);

	VirtualQSqlTableModel(const QSqlTableModel_VTable* vtbl): QSqlTableModel(), vtbl(vtbl) {}
	VirtualQSqlTableModel(const QSqlTableModel_VTable* vtbl, QObject* parent): QSqlTableModel(parent), vtbl(vtbl) {}
	VirtualQSqlTableModel(const QSqlTableModel_VTable* vtbl, QObject* parent, QSqlDatabase db): QSqlTableModel(parent, db), vtbl(vtbl) {}

	virtual ~VirtualQSqlTableModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSqlTableModel::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSqlTableModel_virtualbase_metaObject(const VirtualQSqlTableModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSqlTableModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSqlTableModel_virtualbase_metacast(VirtualQSqlTableModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSqlTableModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_metacall(VirtualQSqlTableModel* self, int param1, int param2, void** param3);

	virtual void setTable(const QString& tableName) override {
		if (vtbl->setTable == 0) {
			QSqlTableModel::setTable(tableName);
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

	friend void QSqlTableModel_virtualbase_setTable(VirtualQSqlTableModel* self, struct seaqt_string tableName);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QSqlTableModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int callback_return_value = vtbl->flags(this, sigval1);
		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_flags(const VirtualQSqlTableModel* self, QModelIndex* index);

	virtual QVariant data(const QModelIndex& idx, int role) const override {
		if (vtbl->data == 0) {
			return QSqlTableModel::data(idx, role);
		}

		const QModelIndex& idx_ret = idx;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&idx_ret);
		int sigval2 = role;
		QVariant* callback_return_value = vtbl->data(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QSqlTableModel_virtualbase_data(const VirtualQSqlTableModel* self, QModelIndex* idx, int role);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QSqlTableModel::setData(index, value, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		int sigval3 = role;
		bool callback_return_value = vtbl->setData(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_setData(VirtualQSqlTableModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QSqlTableModel::headerData(section, orientation, role);
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

	friend QVariant* QSqlTableModel_virtualbase_headerData(const VirtualQSqlTableModel* self, int section, int orientation, int role);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QSqlTableModel::clear();
			return;
		}

		vtbl->clear(this);
	}

	friend void QSqlTableModel_virtualbase_clear(VirtualQSqlTableModel* self);

	virtual void setEditStrategy(QSqlTableModel::EditStrategy strategy) override {
		if (vtbl->setEditStrategy == 0) {
			QSqlTableModel::setEditStrategy(strategy);
			return;
		}

		QSqlTableModel::EditStrategy strategy_ret = strategy;
		int sigval1 = static_cast<int>(strategy_ret);
		vtbl->setEditStrategy(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_setEditStrategy(VirtualQSqlTableModel* self, int strategy);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QSqlTableModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->sort(this, sigval1, sigval2);
	}

	friend void QSqlTableModel_virtualbase_sort(VirtualQSqlTableModel* self, int column, int order);

	virtual void setSort(int column, Qt::SortOrder order) override {
		if (vtbl->setSort == 0) {
			QSqlTableModel::setSort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->setSort(this, sigval1, sigval2);
	}

	friend void QSqlTableModel_virtualbase_setSort(VirtualQSqlTableModel* self, int column, int order);

	virtual void setFilter(const QString& filter) override {
		if (vtbl->setFilter == 0) {
			QSqlTableModel::setFilter(filter);
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

	friend void QSqlTableModel_virtualbase_setFilter(VirtualQSqlTableModel* self, struct seaqt_string filter);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QSqlTableModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->rowCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_rowCount(const VirtualQSqlTableModel* self, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QSqlTableModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_removeColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QSqlTableModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_removeRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QSqlTableModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_insertRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent);

	virtual void revertRow(int row) override {
		if (vtbl->revertRow == 0) {
			QSqlTableModel::revertRow(row);
			return;
		}

		int sigval1 = row;
		vtbl->revertRow(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_revertRow(VirtualQSqlTableModel* self, int row);

	virtual bool select() override {
		if (vtbl->select == 0) {
			return QSqlTableModel::select();
		}

		bool callback_return_value = vtbl->select(this);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_select(VirtualQSqlTableModel* self);

	virtual bool selectRow(int row) override {
		if (vtbl->selectRow == 0) {
			return QSqlTableModel::selectRow(row);
		}

		int sigval1 = row;
		bool callback_return_value = vtbl->selectRow(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_selectRow(VirtualQSqlTableModel* self, int row);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QSqlTableModel::submit();
		}

		bool callback_return_value = vtbl->submit(this);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_submit(VirtualQSqlTableModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QSqlTableModel::revert();
			return;
		}

		vtbl->revert(this);
	}

	friend void QSqlTableModel_virtualbase_revert(VirtualQSqlTableModel* self);

	virtual bool updateRowInTable(int row, const QSqlRecord& values) override {
		if (vtbl->updateRowInTable == 0) {
			return QSqlTableModel::updateRowInTable(row, values);
		}

		int sigval1 = row;
		const QSqlRecord& values_ret = values;
		// Cast returned reference into pointer
		QSqlRecord* sigval2 = const_cast<QSqlRecord*>(&values_ret);
		bool callback_return_value = vtbl->updateRowInTable(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_updateRowInTable(VirtualQSqlTableModel* self, int row, QSqlRecord* values);

	virtual bool insertRowIntoTable(const QSqlRecord& values) override {
		if (vtbl->insertRowIntoTable == 0) {
			return QSqlTableModel::insertRowIntoTable(values);
		}

		const QSqlRecord& values_ret = values;
		// Cast returned reference into pointer
		QSqlRecord* sigval1 = const_cast<QSqlRecord*>(&values_ret);
		bool callback_return_value = vtbl->insertRowIntoTable(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_insertRowIntoTable(VirtualQSqlTableModel* self, QSqlRecord* values);

	virtual bool deleteRowFromTable(int row) override {
		if (vtbl->deleteRowFromTable == 0) {
			return QSqlTableModel::deleteRowFromTable(row);
		}

		int sigval1 = row;
		bool callback_return_value = vtbl->deleteRowFromTable(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_deleteRowFromTable(VirtualQSqlTableModel* self, int row);

	virtual QString orderByClause() const override {
		if (vtbl->orderByClause == 0) {
			return QSqlTableModel::orderByClause();
		}

		struct seaqt_string callback_return_value = vtbl->orderByClause(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlTableModel_virtualbase_orderByClause(const VirtualQSqlTableModel* self);

	virtual QString selectStatement() const override {
		if (vtbl->selectStatement == 0) {
			return QSqlTableModel::selectStatement();
		}

		struct seaqt_string callback_return_value = vtbl->selectStatement(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QSqlTableModel_virtualbase_selectStatement(const VirtualQSqlTableModel* self);

	virtual QModelIndex indexInQuery(const QModelIndex& item) const override {
		if (vtbl->indexInQuery == 0) {
			return QSqlTableModel::indexInQuery(item);
		}

		const QModelIndex& item_ret = item;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&item_ret);
		QModelIndex* callback_return_value = vtbl->indexInQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlTableModel_virtualbase_indexInQuery(const VirtualQSqlTableModel* self, QModelIndex* item);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QSqlTableModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->columnCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_columnCount(const VirtualQSqlTableModel* self, QModelIndex* parent);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QSqlTableModel::setHeaderData(section, orientation, value, role);
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

	friend bool QSqlTableModel_virtualbase_setHeaderData(VirtualQSqlTableModel* self, int section, int orientation, QVariant* value, int role);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QSqlTableModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_insertColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QSqlTableModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		vtbl->fetchMore(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_fetchMore(VirtualQSqlTableModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QSqlTableModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canFetchMore(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_canFetchMore(const VirtualQSqlTableModel* self, QModelIndex* parent);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QSqlTableModel::roleNames();
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

	friend struct seaqt_map /* of int to struct seaqt_string */  QSqlTableModel_virtualbase_roleNames(const VirtualQSqlTableModel* self);

	virtual void queryChange() override {
		if (vtbl->queryChange == 0) {
			QSqlTableModel::queryChange();
			return;
		}

		vtbl->queryChange(this);
	}

	friend void QSqlTableModel_virtualbase_queryChange(VirtualQSqlTableModel* self);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QSqlTableModel::index(row, column, parent);
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

	friend QModelIndex* QSqlTableModel_virtualbase_index(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QSqlTableModel::sibling(row, column, idx);
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

	friend QModelIndex* QSqlTableModel_virtualbase_sibling(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QSqlTableModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QSqlTableModel_virtualbase_dropMimeData(VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QSqlTableModel::itemData(index);
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

	friend struct seaqt_map /* of int to QVariant* */  QSqlTableModel_virtualbase_itemData(const VirtualQSqlTableModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QSqlTableModel::setItemData(index, roles);
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

	friend bool QSqlTableModel_virtualbase_setItemData(VirtualQSqlTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QSqlTableModel::mimeTypes();
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

	friend struct seaqt_array /* of struct seaqt_string */  QSqlTableModel_virtualbase_mimeTypes(const VirtualQSqlTableModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QSqlTableModel::mimeData(indexes);
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

	friend QMimeData* QSqlTableModel_virtualbase_mimeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QSqlTableModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QSqlTableModel_virtualbase_canDropMimeData(const VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QSqlTableModel::supportedDropActions();
		}

		int callback_return_value = vtbl->supportedDropActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_supportedDropActions(const VirtualQSqlTableModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QSqlTableModel::supportedDragActions();
		}

		int callback_return_value = vtbl->supportedDragActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QSqlTableModel_virtualbase_supportedDragActions(const VirtualQSqlTableModel* self);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QSqlTableModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QSqlTableModel_virtualbase_moveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QSqlTableModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QSqlTableModel_virtualbase_moveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QSqlTableModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QSqlTableModel_virtualbase_buddy(const VirtualQSqlTableModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QSqlTableModel::match(start, role, value, hits, flags);
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

	friend struct seaqt_array /* of QModelIndex* */  QSqlTableModel_virtualbase_match(const VirtualQSqlTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QSqlTableModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QSqlTableModel_virtualbase_span(const VirtualQSqlTableModel* self, QModelIndex* index);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSqlTableModel::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_event(VirtualQSqlTableModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSqlTableModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSqlTableModel_virtualbase_eventFilter(VirtualQSqlTableModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSqlTableModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_timerEvent(VirtualQSqlTableModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSqlTableModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_childEvent(VirtualQSqlTableModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSqlTableModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_customEvent(VirtualQSqlTableModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSqlTableModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_connectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSqlTableModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSqlTableModel_virtualbase_disconnectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSqlTableModel_protectedbase_setPrimaryKey(VirtualQSqlTableModel* self, QSqlIndex* key);
	friend void QSqlTableModel_protectedbase_setQuery(VirtualQSqlTableModel* self, QSqlQuery* query);
	friend QSqlRecord* QSqlTableModel_protectedbase_primaryValues(const VirtualQSqlTableModel* self, int row);
	friend void QSqlTableModel_protectedbase_beginInsertRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlTableModel_protectedbase_endInsertRows(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_beginRemoveRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlTableModel_protectedbase_endRemoveRows(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_beginInsertColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlTableModel_protectedbase_endInsertColumns(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_beginRemoveColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last);
	friend void QSqlTableModel_protectedbase_endRemoveColumns(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_beginResetModel(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_endResetModel(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_setLastError(VirtualQSqlTableModel* self, QSqlError* error);
	friend void QSqlTableModel_protectedbase_resetInternalData(VirtualQSqlTableModel* self);
	friend QModelIndex* QSqlTableModel_protectedbase_createIndex_row_column(const VirtualQSqlTableModel* self, int row, int column);
	friend void QSqlTableModel_protectedbase_encodeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QSqlTableModel_protectedbase_decodeData(VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend bool QSqlTableModel_protectedbase_beginMoveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QSqlTableModel_protectedbase_endMoveRows(VirtualQSqlTableModel* self);
	friend bool QSqlTableModel_protectedbase_beginMoveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QSqlTableModel_protectedbase_endMoveColumns(VirtualQSqlTableModel* self);
	friend void QSqlTableModel_protectedbase_changePersistentIndex(VirtualQSqlTableModel* self, QModelIndex* from, QModelIndex* to);
	friend void QSqlTableModel_protectedbase_changePersistentIndexList(VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
	friend struct seaqt_array /* of QModelIndex* */  QSqlTableModel_protectedbase_persistentIndexList(const VirtualQSqlTableModel* self);
	friend QObject* QSqlTableModel_protectedbase_sender(const VirtualQSqlTableModel* self);
	friend int QSqlTableModel_protectedbase_senderSignalIndex(const VirtualQSqlTableModel* self);
	friend int QSqlTableModel_protectedbase_receivers(const VirtualQSqlTableModel* self, const char* signal);
	friend bool QSqlTableModel_protectedbase_isSignalConnected(const VirtualQSqlTableModel* self, QMetaMethod* signal);
};

VirtualQSqlTableModel* QSqlTableModel_new(const QSqlTableModel_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlTableModel(vtbl) : nullptr;
}

VirtualQSqlTableModel* QSqlTableModel_new_parent(const QSqlTableModel_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlTableModel(vtbl, parent) : nullptr;
}

VirtualQSqlTableModel* QSqlTableModel_new_parent_db(const QSqlTableModel_VTable* vtbl, size_t vdata, QObject* parent, QSqlDatabase* db) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSqlTableModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSqlTableModel(vtbl, parent, *db) : nullptr;
}

void QSqlTableModel_virtbase(QSqlTableModel* src, QSqlQueryModel** outptr_QSqlQueryModel) {
	*outptr_QSqlQueryModel = static_cast<QSqlQueryModel*>(src);
}

QMetaObject* QSqlTableModel_metaObject(const QSqlTableModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSqlTableModel_metacast(QSqlTableModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSqlTableModel_metacall(QSqlTableModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSqlTableModel_tr_s(const char* s) {
	QString _ret = QSqlTableModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlTableModel_trUtf8_s(const char* s) {
	QString _ret = QSqlTableModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlTableModel_setTable(QSqlTableModel* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);
	self->setTable(tableName_QString);
}

struct seaqt_string QSqlTableModel_tableName(const QSqlTableModel* self) {
	QString _ret = self->tableName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSqlTableModel_flags(const QSqlTableModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

QSqlRecord* QSqlTableModel_record(const QSqlTableModel* self) {
	return new QSqlRecord(self->record());
}

QSqlRecord* QSqlTableModel_record_row(const QSqlTableModel* self, int row) {
	return new QSqlRecord(self->record(static_cast<int>(row)));
}

QVariant* QSqlTableModel_data(const QSqlTableModel* self, QModelIndex* idx, int role) {
	return new QVariant(self->data(*idx, static_cast<int>(role)));
}

bool QSqlTableModel_setData(QSqlTableModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QVariant* QSqlTableModel_headerData(const QSqlTableModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QSqlTableModel_isDirty(const QSqlTableModel* self) {
	return self->isDirty();
}

bool QSqlTableModel_isDirty_index(const QSqlTableModel* self, QModelIndex* index) {
	return self->isDirty(*index);
}

void QSqlTableModel_clear(QSqlTableModel* self) {
	self->clear();
}

void QSqlTableModel_setEditStrategy(QSqlTableModel* self, int strategy) {
	self->setEditStrategy(static_cast<QSqlTableModel::EditStrategy>(strategy));
}

int QSqlTableModel_editStrategy(const QSqlTableModel* self) {
	QSqlTableModel::EditStrategy _ret = self->editStrategy();
	return static_cast<int>(_ret);
}

QSqlIndex* QSqlTableModel_primaryKey(const QSqlTableModel* self) {
	return new QSqlIndex(self->primaryKey());
}

QSqlDatabase* QSqlTableModel_database(const QSqlTableModel* self) {
	return new QSqlDatabase(self->database());
}

int QSqlTableModel_fieldIndex(const QSqlTableModel* self, struct seaqt_string fieldName) {
	QString fieldName_QString = QString::fromUtf8(fieldName.data, fieldName.len);
	return self->fieldIndex(fieldName_QString);
}

void QSqlTableModel_sort(QSqlTableModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QSqlTableModel_setSort(QSqlTableModel* self, int column, int order) {
	self->setSort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct seaqt_string QSqlTableModel_filter(const QSqlTableModel* self) {
	QString _ret = self->filter();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSqlTableModel_setFilter(QSqlTableModel* self, struct seaqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	self->setFilter(filter_QString);
}

int QSqlTableModel_rowCount(const QSqlTableModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

bool QSqlTableModel_removeColumns(QSqlTableModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QSqlTableModel_removeRows(QSqlTableModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSqlTableModel_insertRows(QSqlTableModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSqlTableModel_insertRecord(QSqlTableModel* self, int row, QSqlRecord* record) {
	return self->insertRecord(static_cast<int>(row), *record);
}

bool QSqlTableModel_setRecord(QSqlTableModel* self, int row, QSqlRecord* record) {
	return self->setRecord(static_cast<int>(row), *record);
}

void QSqlTableModel_revertRow(QSqlTableModel* self, int row) {
	self->revertRow(static_cast<int>(row));
}

bool QSqlTableModel_select(QSqlTableModel* self) {
	return self->select();
}

bool QSqlTableModel_selectRow(QSqlTableModel* self, int row) {
	return self->selectRow(static_cast<int>(row));
}

bool QSqlTableModel_submit(QSqlTableModel* self) {
	return self->submit();
}

void QSqlTableModel_revert(QSqlTableModel* self) {
	self->revert();
}

bool QSqlTableModel_submitAll(QSqlTableModel* self) {
	return self->submitAll();
}

void QSqlTableModel_revertAll(QSqlTableModel* self) {
	self->revertAll();
}

void QSqlTableModel_primeInsert(QSqlTableModel* self, int row, QSqlRecord* record) {
	self->primeInsert(static_cast<int>(row), *record);
}

void QSqlTableModel_connect_primeInsert(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int, QSqlRecord*), void (*release)(intptr_t)) {
	QSqlTableModel::connect(self, static_cast<void (QSqlTableModel::*)(int, QSqlRecord&)>(&QSqlTableModel::primeInsert), self, [callback, release = seaqt::release_callback{slot,release}](int row, QSqlRecord& record) {
			int sigval1 = row;
			QSqlRecord& record_ret = record;
			// Cast returned reference into pointer
			QSqlRecord* sigval2 = &record_ret;
			callback(release.slot, sigval1, sigval2);
	});
}

void QSqlTableModel_beforeInsert(QSqlTableModel* self, QSqlRecord* record) {
	self->beforeInsert(*record);
}

void QSqlTableModel_connect_beforeInsert(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, QSqlRecord*), void (*release)(intptr_t)) {
	QSqlTableModel::connect(self, static_cast<void (QSqlTableModel::*)(QSqlRecord&)>(&QSqlTableModel::beforeInsert), self, [callback, release = seaqt::release_callback{slot,release}](QSqlRecord& record) {
			QSqlRecord& record_ret = record;
			// Cast returned reference into pointer
			QSqlRecord* sigval1 = &record_ret;
			callback(release.slot, sigval1);
	});
}

void QSqlTableModel_beforeUpdate(QSqlTableModel* self, int row, QSqlRecord* record) {
	self->beforeUpdate(static_cast<int>(row), *record);
}

void QSqlTableModel_connect_beforeUpdate(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int, QSqlRecord*), void (*release)(intptr_t)) {
	QSqlTableModel::connect(self, static_cast<void (QSqlTableModel::*)(int, QSqlRecord&)>(&QSqlTableModel::beforeUpdate), self, [callback, release = seaqt::release_callback{slot,release}](int row, QSqlRecord& record) {
			int sigval1 = row;
			QSqlRecord& record_ret = record;
			// Cast returned reference into pointer
			QSqlRecord* sigval2 = &record_ret;
			callback(release.slot, sigval1, sigval2);
	});
}

void QSqlTableModel_beforeDelete(QSqlTableModel* self, int row) {
	self->beforeDelete(static_cast<int>(row));
}

void QSqlTableModel_connect_beforeDelete(QSqlTableModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QSqlTableModel::connect(self, static_cast<void (QSqlTableModel::*)(int)>(&QSqlTableModel::beforeDelete), self, [callback, release = seaqt::release_callback{slot,release}](int row) {
			int sigval1 = row;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QSqlTableModel_tr_s_c(const char* s, const char* c) {
	QString _ret = QSqlTableModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlTableModel_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSqlTableModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlTableModel_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QSqlTableModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlTableModel_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSqlTableModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QSqlTableModel_staticMetaObject() { return &QSqlTableModel::staticMetaObject; }
void* QSqlTableModel_vdata(VirtualQSqlTableModel* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSqlTableModel>()); }
VirtualQSqlTableModel* vdata_QSqlTableModel(void* vdata) { return reinterpret_cast<VirtualQSqlTableModel*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSqlTableModel>()); }

QMetaObject* QSqlTableModel_virtualbase_metaObject(const VirtualQSqlTableModel* self) {

	return (QMetaObject*) self->QSqlTableModel::metaObject();
}

void* QSqlTableModel_virtualbase_metacast(VirtualQSqlTableModel* self, const char* param1) {

	return self->QSqlTableModel::qt_metacast(param1);
}

int QSqlTableModel_virtualbase_metacall(VirtualQSqlTableModel* self, int param1, int param2, void** param3) {

	return self->QSqlTableModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QSqlTableModel_virtualbase_setTable(VirtualQSqlTableModel* self, struct seaqt_string tableName) {
	QString tableName_QString = QString::fromUtf8(tableName.data, tableName.len);

	self->QSqlTableModel::setTable(tableName_QString);
}

int QSqlTableModel_virtualbase_flags(const VirtualQSqlTableModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QSqlTableModel::flags(*index);
	return static_cast<int>(_ret);
}

QVariant* QSqlTableModel_virtualbase_data(const VirtualQSqlTableModel* self, QModelIndex* idx, int role) {

	return new QVariant(self->QSqlTableModel::data(*idx, static_cast<int>(role)));
}

bool QSqlTableModel_virtualbase_setData(VirtualQSqlTableModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QSqlTableModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QSqlTableModel_virtualbase_headerData(const VirtualQSqlTableModel* self, int section, int orientation, int role) {

	return new QVariant(self->QSqlTableModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

void QSqlTableModel_virtualbase_clear(VirtualQSqlTableModel* self) {

	self->QSqlTableModel::clear();
}

void QSqlTableModel_virtualbase_setEditStrategy(VirtualQSqlTableModel* self, int strategy) {

	self->QSqlTableModel::setEditStrategy(static_cast<VirtualQSqlTableModel::EditStrategy>(strategy));
}

void QSqlTableModel_virtualbase_sort(VirtualQSqlTableModel* self, int column, int order) {

	self->QSqlTableModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QSqlTableModel_virtualbase_setSort(VirtualQSqlTableModel* self, int column, int order) {

	self->QSqlTableModel::setSort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QSqlTableModel_virtualbase_setFilter(VirtualQSqlTableModel* self, struct seaqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);

	self->QSqlTableModel::setFilter(filter_QString);
}

int QSqlTableModel_virtualbase_rowCount(const VirtualQSqlTableModel* self, QModelIndex* parent) {

	return self->QSqlTableModel::rowCount(*parent);
}

bool QSqlTableModel_virtualbase_removeColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QSqlTableModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QSqlTableModel_virtualbase_removeRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QSqlTableModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSqlTableModel_virtualbase_insertRows(VirtualQSqlTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QSqlTableModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

void QSqlTableModel_virtualbase_revertRow(VirtualQSqlTableModel* self, int row) {

	self->QSqlTableModel::revertRow(static_cast<int>(row));
}

bool QSqlTableModel_virtualbase_select(VirtualQSqlTableModel* self) {

	return self->QSqlTableModel::select();
}

bool QSqlTableModel_virtualbase_selectRow(VirtualQSqlTableModel* self, int row) {

	return self->QSqlTableModel::selectRow(static_cast<int>(row));
}

bool QSqlTableModel_virtualbase_submit(VirtualQSqlTableModel* self) {

	return self->QSqlTableModel::submit();
}

void QSqlTableModel_virtualbase_revert(VirtualQSqlTableModel* self) {

	self->QSqlTableModel::revert();
}

bool QSqlTableModel_virtualbase_updateRowInTable(VirtualQSqlTableModel* self, int row, QSqlRecord* values) {

	return self->QSqlTableModel::updateRowInTable(static_cast<int>(row), *values);
}

bool QSqlTableModel_virtualbase_insertRowIntoTable(VirtualQSqlTableModel* self, QSqlRecord* values) {

	return self->QSqlTableModel::insertRowIntoTable(*values);
}

bool QSqlTableModel_virtualbase_deleteRowFromTable(VirtualQSqlTableModel* self, int row) {

	return self->QSqlTableModel::deleteRowFromTable(static_cast<int>(row));
}

struct seaqt_string QSqlTableModel_virtualbase_orderByClause(const VirtualQSqlTableModel* self) {

	QString _ret = self->QSqlTableModel::orderByClause();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSqlTableModel_virtualbase_selectStatement(const VirtualQSqlTableModel* self) {

	QString _ret = self->QSqlTableModel::selectStatement();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QSqlTableModel_virtualbase_indexInQuery(const VirtualQSqlTableModel* self, QModelIndex* item) {

	return new QModelIndex(self->QSqlTableModel::indexInQuery(*item));
}

int QSqlTableModel_virtualbase_columnCount(const VirtualQSqlTableModel* self, QModelIndex* parent) {

	return self->QSqlTableModel::columnCount(*parent);
}

bool QSqlTableModel_virtualbase_setHeaderData(VirtualQSqlTableModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QSqlTableModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QSqlTableModel_virtualbase_insertColumns(VirtualQSqlTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QSqlTableModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

void QSqlTableModel_virtualbase_fetchMore(VirtualQSqlTableModel* self, QModelIndex* parent) {

	self->QSqlTableModel::fetchMore(*parent);
}

bool QSqlTableModel_virtualbase_canFetchMore(const VirtualQSqlTableModel* self, QModelIndex* parent) {

	return self->QSqlTableModel::canFetchMore(*parent);
}

struct seaqt_map /* of int to struct seaqt_string */  QSqlTableModel_virtualbase_roleNames(const VirtualQSqlTableModel* self) {

	QHash<int, QByteArray> _ret = self->QSqlTableModel::roleNames();
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

void QSqlTableModel_virtualbase_queryChange(VirtualQSqlTableModel* self) {

	self->QSqlTableModel::queryChange();
}

QModelIndex* QSqlTableModel_virtualbase_index(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QSqlTableModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QSqlTableModel_virtualbase_sibling(const VirtualQSqlTableModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QSqlTableModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QSqlTableModel_virtualbase_dropMimeData(VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QSqlTableModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct seaqt_map /* of int to QVariant* */  QSqlTableModel_virtualbase_itemData(const VirtualQSqlTableModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QSqlTableModel::itemData(*index);
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

bool QSqlTableModel_virtualbase_setItemData(VirtualQSqlTableModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QSqlTableModel::setItemData(*index, roles_QMap);
}

struct seaqt_array /* of struct seaqt_string */  QSqlTableModel_virtualbase_mimeTypes(const VirtualQSqlTableModel* self) {

	QStringList _ret = self->QSqlTableModel::mimeTypes();
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

QMimeData* QSqlTableModel_virtualbase_mimeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QSqlTableModel::mimeData(indexes_QList);
}

bool QSqlTableModel_virtualbase_canDropMimeData(const VirtualQSqlTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QSqlTableModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QSqlTableModel_virtualbase_supportedDropActions(const VirtualQSqlTableModel* self) {

	Qt::DropActions _ret = self->QSqlTableModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QSqlTableModel_virtualbase_supportedDragActions(const VirtualQSqlTableModel* self) {

	Qt::DropActions _ret = self->QSqlTableModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QSqlTableModel_virtualbase_moveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QSqlTableModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QSqlTableModel_virtualbase_moveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QSqlTableModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

QModelIndex* QSqlTableModel_virtualbase_buddy(const VirtualQSqlTableModel* self, QModelIndex* index) {

	return new QModelIndex(self->QSqlTableModel::buddy(*index));
}

struct seaqt_array /* of QModelIndex* */  QSqlTableModel_virtualbase_match(const VirtualQSqlTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QSqlTableModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QSqlTableModel_virtualbase_span(const VirtualQSqlTableModel* self, QModelIndex* index) {

	return new QSize(self->QSqlTableModel::span(*index));
}

bool QSqlTableModel_virtualbase_event(VirtualQSqlTableModel* self, QEvent* event) {

	return self->QSqlTableModel::event(event);
}

bool QSqlTableModel_virtualbase_eventFilter(VirtualQSqlTableModel* self, QObject* watched, QEvent* event) {

	return self->QSqlTableModel::eventFilter(watched, event);
}

void QSqlTableModel_virtualbase_timerEvent(VirtualQSqlTableModel* self, QTimerEvent* event) {

	self->QSqlTableModel::timerEvent(event);
}

void QSqlTableModel_virtualbase_childEvent(VirtualQSqlTableModel* self, QChildEvent* event) {

	self->QSqlTableModel::childEvent(event);
}

void QSqlTableModel_virtualbase_customEvent(VirtualQSqlTableModel* self, QEvent* event) {

	self->QSqlTableModel::customEvent(event);
}

void QSqlTableModel_virtualbase_connectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal) {

	self->QSqlTableModel::connectNotify(*signal);
}

void QSqlTableModel_virtualbase_disconnectNotify(VirtualQSqlTableModel* self, QMetaMethod* signal) {

	self->QSqlTableModel::disconnectNotify(*signal);
}

void QSqlTableModel_protectedbase_setPrimaryKey(VirtualQSqlTableModel* self, QSqlIndex* key) {
	self->setPrimaryKey(*key);
}

void QSqlTableModel_protectedbase_setQuery(VirtualQSqlTableModel* self, QSqlQuery* query) {
	self->setQuery(*query);
}

QSqlRecord* QSqlTableModel_protectedbase_primaryValues(const VirtualQSqlTableModel* self, int row) {
	return new QSqlRecord(self->primaryValues(static_cast<int>(row)));
}

void QSqlTableModel_protectedbase_beginInsertRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlTableModel_protectedbase_endInsertRows(VirtualQSqlTableModel* self) {
	self->endInsertRows();
}

void QSqlTableModel_protectedbase_beginRemoveRows(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlTableModel_protectedbase_endRemoveRows(VirtualQSqlTableModel* self) {
	self->endRemoveRows();
}

void QSqlTableModel_protectedbase_beginInsertColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlTableModel_protectedbase_endInsertColumns(VirtualQSqlTableModel* self) {
	self->endInsertColumns();
}

void QSqlTableModel_protectedbase_beginRemoveColumns(VirtualQSqlTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QSqlTableModel_protectedbase_endRemoveColumns(VirtualQSqlTableModel* self) {
	self->endRemoveColumns();
}

void QSqlTableModel_protectedbase_beginResetModel(VirtualQSqlTableModel* self) {
	self->beginResetModel();
}

void QSqlTableModel_protectedbase_endResetModel(VirtualQSqlTableModel* self) {
	self->endResetModel();
}

void QSqlTableModel_protectedbase_setLastError(VirtualQSqlTableModel* self, QSqlError* error) {
	self->setLastError(*error);
}

void QSqlTableModel_protectedbase_resetInternalData(VirtualQSqlTableModel* self) {
	self->resetInternalData();
}

QModelIndex* QSqlTableModel_protectedbase_createIndex_row_column(const VirtualQSqlTableModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QSqlTableModel_protectedbase_encodeData(const VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QSqlTableModel_protectedbase_decodeData(VirtualQSqlTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

bool QSqlTableModel_protectedbase_beginMoveRows(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QSqlTableModel_protectedbase_endMoveRows(VirtualQSqlTableModel* self) {
	self->endMoveRows();
}

bool QSqlTableModel_protectedbase_beginMoveColumns(VirtualQSqlTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QSqlTableModel_protectedbase_endMoveColumns(VirtualQSqlTableModel* self) {
	self->endMoveColumns();
}

void QSqlTableModel_protectedbase_changePersistentIndex(VirtualQSqlTableModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QSqlTableModel_protectedbase_changePersistentIndexList(VirtualQSqlTableModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to) {
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

struct seaqt_array /* of QModelIndex* */  QSqlTableModel_protectedbase_persistentIndexList(const VirtualQSqlTableModel* self) {
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

QObject* QSqlTableModel_protectedbase_sender(const VirtualQSqlTableModel* self) {
	return self->sender();
}

int QSqlTableModel_protectedbase_senderSignalIndex(const VirtualQSqlTableModel* self) {
	return self->senderSignalIndex();
}

int QSqlTableModel_protectedbase_receivers(const VirtualQSqlTableModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QSqlTableModel_protectedbase_isSignalConnected(const VirtualQSqlTableModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSqlTableModel_delete(QSqlTableModel* self) {
	delete self;
}

