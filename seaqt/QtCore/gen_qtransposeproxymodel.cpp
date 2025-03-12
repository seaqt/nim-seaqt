#include <QAbstractItemModel>
#include <QAbstractProxyModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QEvent>
#include <QItemSelection>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTransposeProxyModel>
#include <QVariant>
#include <qtransposeproxymodel.h>
#include "gen_qtransposeproxymodel.h"
class VirtualQTransposeProxyModel final : public QTransposeProxyModel {
	const QTransposeProxyModel_VTable* vtbl;
	void* vdata;
public:
	friend const QTransposeProxyModel_VTable* QTransposeProxyModel_vtbl(const VirtualQTransposeProxyModel* self);
	friend void* QTransposeProxyModel_vdata(const VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_setVdata(VirtualQTransposeProxyModel* self, void* vdata);

	VirtualQTransposeProxyModel(const QTransposeProxyModel_VTable* vtbl, void* vdata): QTransposeProxyModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTransposeProxyModel(const QTransposeProxyModel_VTable* vtbl, void* vdata, QObject* parent): QTransposeProxyModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTransposeProxyModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTransposeProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTransposeProxyModel_virtualbase_metaObject(const VirtualQTransposeProxyModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTransposeProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTransposeProxyModel_virtualbase_metacast(VirtualQTransposeProxyModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTransposeProxyModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_metacall(VirtualQTransposeProxyModel* self, int param1, int param2, void** param3);

	virtual void setSourceModel(QAbstractItemModel* newSourceModel) override {
		if (vtbl->setSourceModel == 0) {
			QTransposeProxyModel::setSourceModel(newSourceModel);
			return;
		}

		QAbstractItemModel* sigval1 = newSourceModel;

		vtbl->setSourceModel(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_setSourceModel(VirtualQTransposeProxyModel* self, QAbstractItemModel* newSourceModel);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QTransposeProxyModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_rowCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QTransposeProxyModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_columnCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QTransposeProxyModel::headerData(section, orientation, role);
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

	friend QVariant* QTransposeProxyModel_virtualbase_headerData(const VirtualQTransposeProxyModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QTransposeProxyModel::setHeaderData(section, orientation, value, role);
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

	friend bool QTransposeProxyModel_virtualbase_setHeaderData(VirtualQTransposeProxyModel* self, int section, int orientation, QVariant* value, int role);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QTransposeProxyModel::setItemData(index, roles);
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
		struct miqt_map roles_out;
		roles_out.len = roles_ret.size();
		roles_out.keys = static_cast<void*>(roles_karr);
		roles_out.values = static_cast<void*>(roles_varr);
		struct miqt_map /* of int to QVariant* */  sigval2 = roles_out;

		bool callback_return_value = vtbl->setItemData(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_setItemData(VirtualQTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QTransposeProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTransposeProxyModel_virtualbase_span(const VirtualQTransposeProxyModel* self, QModelIndex* index);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QTransposeProxyModel::itemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		struct miqt_map /* of int to QVariant* */  callback_return_value = vtbl->itemData(this, sigval1);
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

	friend struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_virtualbase_itemData(const VirtualQTransposeProxyModel* self, QModelIndex* index);

	virtual QModelIndex mapFromSource(const QModelIndex& sourceIndex) const override {
		if (vtbl->mapFromSource == 0) {
			return QTransposeProxyModel::mapFromSource(sourceIndex);
		}

		const QModelIndex& sourceIndex_ret = sourceIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTransposeProxyModel_virtualbase_mapFromSource(const VirtualQTransposeProxyModel* self, QModelIndex* sourceIndex);

	virtual QModelIndex mapToSource(const QModelIndex& proxyIndex) const override {
		if (vtbl->mapToSource == 0) {
			return QTransposeProxyModel::mapToSource(proxyIndex);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTransposeProxyModel_virtualbase_mapToSource(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex);

	virtual QModelIndex parent(const QModelIndex& index) const override {
		if (vtbl->parent == 0) {
			return QTransposeProxyModel::parent(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTransposeProxyModel_virtualbase_parent(const VirtualQTransposeProxyModel* self, QModelIndex* index);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QTransposeProxyModel::index(row, column, parent);
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

	friend QModelIndex* QTransposeProxyModel_virtualbase_index(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QTransposeProxyModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_insertRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QTransposeProxyModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_removeRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QTransposeProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QTransposeProxyModel_virtualbase_moveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QTransposeProxyModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_insertColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QTransposeProxyModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_removeColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QTransposeProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QTransposeProxyModel_virtualbase_moveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QTransposeProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QTransposeProxyModel_virtualbase_sort(VirtualQTransposeProxyModel* self, int column, int order);

	virtual QItemSelection mapSelectionToSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionToSource == 0) {
			return QTransposeProxyModel::mapSelectionToSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionToSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection);

	virtual QItemSelection mapSelectionFromSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionFromSource == 0) {
			return QTransposeProxyModel::mapSelectionFromSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionFromSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QTransposeProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_submit(VirtualQTransposeProxyModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QTransposeProxyModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QTransposeProxyModel_virtualbase_revert(VirtualQTransposeProxyModel* self);

	virtual QVariant data(const QModelIndex& proxyIndex, int role) const override {
		if (vtbl->data == 0) {
			return QTransposeProxyModel::data(proxyIndex, role);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTransposeProxyModel_virtualbase_data(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex, int role);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QTransposeProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_flags(const VirtualQTransposeProxyModel* self, QModelIndex* index);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QTransposeProxyModel::setData(index, value, role);
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

	friend bool QTransposeProxyModel_virtualbase_setData(VirtualQTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QTransposeProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTransposeProxyModel_virtualbase_buddy(const VirtualQTransposeProxyModel* self, QModelIndex* index);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QTransposeProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_canFetchMore(const VirtualQTransposeProxyModel* self, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QTransposeProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_fetchMore(VirtualQTransposeProxyModel* self, QModelIndex* parent);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QTransposeProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_hasChildren(const VirtualQTransposeProxyModel* self, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QTransposeProxyModel::sibling(row, column, idx);
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

	friend QModelIndex* QTransposeProxyModel_virtualbase_sibling(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* idx);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QTransposeProxyModel::mimeData(indexes);
		}

		const QModelIndexList& indexes_ret = indexes;
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * indexes_ret.length()));
		for (size_t i = 0, e = indexes_ret.length(); i < e; ++i) {
			indexes_arr[i] = new QModelIndex(indexes_ret[i]);
		}
		struct miqt_array indexes_out;
		indexes_out.len = indexes_ret.length();
		indexes_out.data = static_cast<void*>(indexes_arr);
		struct miqt_array /* of QModelIndex* */  sigval1 = indexes_out;

		QMimeData* callback_return_value = vtbl->mimeData(this, sigval1);

		return callback_return_value;
	}

	friend QMimeData* QTransposeProxyModel_virtualbase_mimeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QTransposeProxyModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QTransposeProxyModel_virtualbase_canDropMimeData(const VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QTransposeProxyModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QTransposeProxyModel_virtualbase_dropMimeData(VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QTransposeProxyModel::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of struct miqt_string */  QTransposeProxyModel_virtualbase_mimeTypes(const VirtualQTransposeProxyModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QTransposeProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_supportedDragActions(const VirtualQTransposeProxyModel* self);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QTransposeProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QTransposeProxyModel_virtualbase_supportedDropActions(const VirtualQTransposeProxyModel* self);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QTransposeProxyModel::match(start, role, value, hits, flags);
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

		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->match(this, sigval1, sigval2, sigval3, sigval4, sigval5);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_virtualbase_match(const VirtualQTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QTransposeProxyModel::roleNames();
		}


		struct miqt_map /* of int to struct miqt_string */  callback_return_value = vtbl->roleNames(this);
		QHash<int, QByteArray> callback_return_value_QMap;
		callback_return_value_QMap.reserve(callback_return_value.len);
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		struct miqt_string* callback_return_value_varr = static_cast<struct miqt_string*>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_varr_i_QByteArray(callback_return_value_varr[i].data, callback_return_value_varr[i].len);
			free(callback_return_value_varr[i].data);
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = callback_return_value_varr_i_QByteArray;
		}
		free(callback_return_value.keys);
		free(callback_return_value.values);

		return callback_return_value_QMap;
	}

	friend struct miqt_map /* of int to struct miqt_string */  QTransposeProxyModel_virtualbase_roleNames(const VirtualQTransposeProxyModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTransposeProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_event(VirtualQTransposeProxyModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTransposeProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTransposeProxyModel_virtualbase_eventFilter(VirtualQTransposeProxyModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTransposeProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_timerEvent(VirtualQTransposeProxyModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTransposeProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_childEvent(VirtualQTransposeProxyModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTransposeProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_customEvent(VirtualQTransposeProxyModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTransposeProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_connectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTransposeProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTransposeProxyModel_virtualbase_disconnectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTransposeProxyModel_protectedbase_resetInternalData(VirtualQTransposeProxyModel* self);
	friend QModelIndex* QTransposeProxyModel_protectedbase_createIndex(const VirtualQTransposeProxyModel* self, int row, int column);
	friend void QTransposeProxyModel_protectedbase_encodeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QTransposeProxyModel_protectedbase_decodeData(VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QTransposeProxyModel_protectedbase_beginInsertRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QTransposeProxyModel_protectedbase_endInsertRows(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_beginRemoveRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QTransposeProxyModel_protectedbase_endRemoveRows(VirtualQTransposeProxyModel* self);
	friend bool QTransposeProxyModel_protectedbase_beginMoveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QTransposeProxyModel_protectedbase_endMoveRows(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_beginInsertColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QTransposeProxyModel_protectedbase_endInsertColumns(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_beginRemoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QTransposeProxyModel_protectedbase_endRemoveColumns(VirtualQTransposeProxyModel* self);
	friend bool QTransposeProxyModel_protectedbase_beginMoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QTransposeProxyModel_protectedbase_endMoveColumns(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_beginResetModel(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_endResetModel(VirtualQTransposeProxyModel* self);
	friend void QTransposeProxyModel_protectedbase_changePersistentIndex(VirtualQTransposeProxyModel* self, QModelIndex* from, QModelIndex* to);
	friend void QTransposeProxyModel_protectedbase_changePersistentIndexList(VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_protectedbase_persistentIndexList(const VirtualQTransposeProxyModel* self);
	friend QObject* QTransposeProxyModel_protectedbase_sender(const VirtualQTransposeProxyModel* self);
	friend int QTransposeProxyModel_protectedbase_senderSignalIndex(const VirtualQTransposeProxyModel* self);
	friend int QTransposeProxyModel_protectedbase_receivers(const VirtualQTransposeProxyModel* self, const char* signal);
	friend bool QTransposeProxyModel_protectedbase_isSignalConnected(const VirtualQTransposeProxyModel* self, QMetaMethod* signal);
};

VirtualQTransposeProxyModel* QTransposeProxyModel_new(const QTransposeProxyModel_VTable* vtbl, void* vdata) {
	return new VirtualQTransposeProxyModel(vtbl, vdata);
}

VirtualQTransposeProxyModel* QTransposeProxyModel_new2(const QTransposeProxyModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQTransposeProxyModel(vtbl, vdata, parent);
}

void QTransposeProxyModel_virtbase(QTransposeProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel) {
	*outptr_QAbstractProxyModel = static_cast<QAbstractProxyModel*>(src);
}

QMetaObject* QTransposeProxyModel_metaObject(const QTransposeProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTransposeProxyModel_metacast(QTransposeProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTransposeProxyModel_metacall(QTransposeProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTransposeProxyModel_tr(const char* s) {
	QString _ret = QTransposeProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTransposeProxyModel_trUtf8(const char* s) {
	QString _ret = QTransposeProxyModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTransposeProxyModel_setSourceModel(QTransposeProxyModel* self, QAbstractItemModel* newSourceModel) {
	self->setSourceModel(newSourceModel);
}

int QTransposeProxyModel_rowCount(const QTransposeProxyModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QTransposeProxyModel_columnCount(const QTransposeProxyModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

QVariant* QTransposeProxyModel_headerData(const QTransposeProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QTransposeProxyModel_setHeaderData(QTransposeProxyModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QTransposeProxyModel_setItemData(QTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

QSize* QTransposeProxyModel_span(const QTransposeProxyModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_itemData(const QTransposeProxyModel* self, QModelIndex* index) {
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
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QModelIndex* QTransposeProxyModel_mapFromSource(const QTransposeProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QModelIndex* QTransposeProxyModel_mapToSource(const QTransposeProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QModelIndex* QTransposeProxyModel_parent(const QTransposeProxyModel* self, QModelIndex* index) {
	return new QModelIndex(self->parent(*index));
}

QModelIndex* QTransposeProxyModel_index(const QTransposeProxyModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

bool QTransposeProxyModel_insertRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_removeRows(QTransposeProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_moveRows(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QTransposeProxyModel_insertColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_removeColumns(QTransposeProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_moveColumns(QTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QTransposeProxyModel_sort(QTransposeProxyModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_string QTransposeProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QTransposeProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTransposeProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QTransposeProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTransposeProxyModel_trUtf82(const char* s, const char* c) {
	QString _ret = QTransposeProxyModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTransposeProxyModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTransposeProxyModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTransposeProxyModel_virtualbase_metaObject(const VirtualQTransposeProxyModel* self) {

	return (QMetaObject*) self->QTransposeProxyModel::metaObject();
}

void* QTransposeProxyModel_virtualbase_metacast(VirtualQTransposeProxyModel* self, const char* param1) {

	return self->QTransposeProxyModel::qt_metacast(param1);
}

int QTransposeProxyModel_virtualbase_metacall(VirtualQTransposeProxyModel* self, int param1, int param2, void** param3) {

	return self->QTransposeProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTransposeProxyModel_virtualbase_setSourceModel(VirtualQTransposeProxyModel* self, QAbstractItemModel* newSourceModel) {

	self->QTransposeProxyModel::setSourceModel(newSourceModel);
}

int QTransposeProxyModel_virtualbase_rowCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent) {

	return self->QTransposeProxyModel::rowCount(*parent);
}

int QTransposeProxyModel_virtualbase_columnCount(const VirtualQTransposeProxyModel* self, QModelIndex* parent) {

	return self->QTransposeProxyModel::columnCount(*parent);
}

QVariant* QTransposeProxyModel_virtualbase_headerData(const VirtualQTransposeProxyModel* self, int section, int orientation, int role) {

	return new QVariant(self->QTransposeProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QTransposeProxyModel_virtualbase_setHeaderData(VirtualQTransposeProxyModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QTransposeProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QTransposeProxyModel_virtualbase_setItemData(VirtualQTransposeProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QTransposeProxyModel::setItemData(*index, roles_QMap);
}

QSize* QTransposeProxyModel_virtualbase_span(const VirtualQTransposeProxyModel* self, QModelIndex* index) {

	return new QSize(self->QTransposeProxyModel::span(*index));
}

struct miqt_map /* of int to QVariant* */  QTransposeProxyModel_virtualbase_itemData(const VirtualQTransposeProxyModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QTransposeProxyModel::itemData(*index);
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QModelIndex* QTransposeProxyModel_virtualbase_mapFromSource(const VirtualQTransposeProxyModel* self, QModelIndex* sourceIndex) {

	return new QModelIndex(self->QTransposeProxyModel::mapFromSource(*sourceIndex));
}

QModelIndex* QTransposeProxyModel_virtualbase_mapToSource(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex) {

	return new QModelIndex(self->QTransposeProxyModel::mapToSource(*proxyIndex));
}

QModelIndex* QTransposeProxyModel_virtualbase_parent(const VirtualQTransposeProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QTransposeProxyModel::parent(*index));
}

QModelIndex* QTransposeProxyModel_virtualbase_index(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QTransposeProxyModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

bool QTransposeProxyModel_virtualbase_insertRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QTransposeProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_virtualbase_removeRows(VirtualQTransposeProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QTransposeProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_virtualbase_moveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QTransposeProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QTransposeProxyModel_virtualbase_insertColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QTransposeProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_virtualbase_removeColumns(VirtualQTransposeProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QTransposeProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QTransposeProxyModel_virtualbase_moveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QTransposeProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QTransposeProxyModel_virtualbase_sort(VirtualQTransposeProxyModel* self, int column, int order) {

	self->QTransposeProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionToSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QTransposeProxyModel::mapSelectionToSource(*selection));
}

QItemSelection* QTransposeProxyModel_virtualbase_mapSelectionFromSource(const VirtualQTransposeProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QTransposeProxyModel::mapSelectionFromSource(*selection));
}

bool QTransposeProxyModel_virtualbase_submit(VirtualQTransposeProxyModel* self) {

	return self->QTransposeProxyModel::submit();
}

void QTransposeProxyModel_virtualbase_revert(VirtualQTransposeProxyModel* self) {

	self->QTransposeProxyModel::revert();
}

QVariant* QTransposeProxyModel_virtualbase_data(const VirtualQTransposeProxyModel* self, QModelIndex* proxyIndex, int role) {

	return new QVariant(self->QTransposeProxyModel::data(*proxyIndex, static_cast<int>(role)));
}

int QTransposeProxyModel_virtualbase_flags(const VirtualQTransposeProxyModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QTransposeProxyModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QTransposeProxyModel_virtualbase_setData(VirtualQTransposeProxyModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QTransposeProxyModel::setData(*index, *value, static_cast<int>(role));
}

QModelIndex* QTransposeProxyModel_virtualbase_buddy(const VirtualQTransposeProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QTransposeProxyModel::buddy(*index));
}

bool QTransposeProxyModel_virtualbase_canFetchMore(const VirtualQTransposeProxyModel* self, QModelIndex* parent) {

	return self->QTransposeProxyModel::canFetchMore(*parent);
}

void QTransposeProxyModel_virtualbase_fetchMore(VirtualQTransposeProxyModel* self, QModelIndex* parent) {

	self->QTransposeProxyModel::fetchMore(*parent);
}

bool QTransposeProxyModel_virtualbase_hasChildren(const VirtualQTransposeProxyModel* self, QModelIndex* parent) {

	return self->QTransposeProxyModel::hasChildren(*parent);
}

QModelIndex* QTransposeProxyModel_virtualbase_sibling(const VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QTransposeProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QMimeData* QTransposeProxyModel_virtualbase_mimeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QTransposeProxyModel::mimeData(indexes_QList);
}

bool QTransposeProxyModel_virtualbase_canDropMimeData(const VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QTransposeProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QTransposeProxyModel_virtualbase_dropMimeData(VirtualQTransposeProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QTransposeProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct miqt_array /* of struct miqt_string */  QTransposeProxyModel_virtualbase_mimeTypes(const VirtualQTransposeProxyModel* self) {

	QStringList _ret = self->QTransposeProxyModel::mimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QTransposeProxyModel_virtualbase_supportedDragActions(const VirtualQTransposeProxyModel* self) {

	Qt::DropActions _ret = self->QTransposeProxyModel::supportedDragActions();
	return static_cast<int>(_ret);
}

int QTransposeProxyModel_virtualbase_supportedDropActions(const VirtualQTransposeProxyModel* self) {

	Qt::DropActions _ret = self->QTransposeProxyModel::supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_virtualbase_match(const VirtualQTransposeProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QTransposeProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_map /* of int to struct miqt_string */  QTransposeProxyModel_virtualbase_roleNames(const VirtualQTransposeProxyModel* self) {

	QHash<int, QByteArray> _ret = self->QTransposeProxyModel::roleNames();
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	struct miqt_string* _varr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		QByteArray _hashval_qb = _itr->second;
		struct miqt_string _hashval_ms;
		_hashval_ms.len = _hashval_qb.length();
		_hashval_ms.data = static_cast<char*>(malloc(_hashval_ms.len));
		memcpy(_hashval_ms.data, _hashval_qb.data(), _hashval_ms.len);
		_varr[_ctr] = _hashval_ms;
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

bool QTransposeProxyModel_virtualbase_event(VirtualQTransposeProxyModel* self, QEvent* event) {

	return self->QTransposeProxyModel::event(event);
}

bool QTransposeProxyModel_virtualbase_eventFilter(VirtualQTransposeProxyModel* self, QObject* watched, QEvent* event) {

	return self->QTransposeProxyModel::eventFilter(watched, event);
}

void QTransposeProxyModel_virtualbase_timerEvent(VirtualQTransposeProxyModel* self, QTimerEvent* event) {

	self->QTransposeProxyModel::timerEvent(event);
}

void QTransposeProxyModel_virtualbase_childEvent(VirtualQTransposeProxyModel* self, QChildEvent* event) {

	self->QTransposeProxyModel::childEvent(event);
}

void QTransposeProxyModel_virtualbase_customEvent(VirtualQTransposeProxyModel* self, QEvent* event) {

	self->QTransposeProxyModel::customEvent(event);
}

void QTransposeProxyModel_virtualbase_connectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal) {

	self->QTransposeProxyModel::connectNotify(*signal);
}

void QTransposeProxyModel_virtualbase_disconnectNotify(VirtualQTransposeProxyModel* self, QMetaMethod* signal) {

	self->QTransposeProxyModel::disconnectNotify(*signal);
}

const QMetaObject* QTransposeProxyModel_staticMetaObject() { return &QTransposeProxyModel::staticMetaObject; }

const QTransposeProxyModel_VTable* QTransposeProxyModel_vtbl(const VirtualQTransposeProxyModel* self) { return self->vtbl; }
void* QTransposeProxyModel_vdata(const VirtualQTransposeProxyModel* self) { return self->vdata; }
void QTransposeProxyModel_setVdata(VirtualQTransposeProxyModel* self, void* vdata) { self->vdata = vdata; }

void QTransposeProxyModel_protectedbase_resetInternalData(VirtualQTransposeProxyModel* self) {
	self->resetInternalData();
}

QModelIndex* QTransposeProxyModel_protectedbase_createIndex(const VirtualQTransposeProxyModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QTransposeProxyModel_protectedbase_encodeData(const VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QTransposeProxyModel_protectedbase_decodeData(VirtualQTransposeProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QTransposeProxyModel_protectedbase_beginInsertRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTransposeProxyModel_protectedbase_endInsertRows(VirtualQTransposeProxyModel* self) {
	self->endInsertRows();
}

void QTransposeProxyModel_protectedbase_beginRemoveRows(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTransposeProxyModel_protectedbase_endRemoveRows(VirtualQTransposeProxyModel* self) {
	self->endRemoveRows();
}

bool QTransposeProxyModel_protectedbase_beginMoveRows(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QTransposeProxyModel_protectedbase_endMoveRows(VirtualQTransposeProxyModel* self) {
	self->endMoveRows();
}

void QTransposeProxyModel_protectedbase_beginInsertColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTransposeProxyModel_protectedbase_endInsertColumns(VirtualQTransposeProxyModel* self) {
	self->endInsertColumns();
}

void QTransposeProxyModel_protectedbase_beginRemoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTransposeProxyModel_protectedbase_endRemoveColumns(VirtualQTransposeProxyModel* self) {
	self->endRemoveColumns();
}

bool QTransposeProxyModel_protectedbase_beginMoveColumns(VirtualQTransposeProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QTransposeProxyModel_protectedbase_endMoveColumns(VirtualQTransposeProxyModel* self) {
	self->endMoveColumns();
}

void QTransposeProxyModel_protectedbase_beginResetModel(VirtualQTransposeProxyModel* self) {
	self->beginResetModel();
}

void QTransposeProxyModel_protectedbase_endResetModel(VirtualQTransposeProxyModel* self) {
	self->endResetModel();
}

void QTransposeProxyModel_protectedbase_changePersistentIndex(VirtualQTransposeProxyModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QTransposeProxyModel_protectedbase_changePersistentIndexList(VirtualQTransposeProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QTransposeProxyModel_protectedbase_persistentIndexList(const VirtualQTransposeProxyModel* self) {
	QModelIndexList _ret = self->persistentIndexList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QObject* QTransposeProxyModel_protectedbase_sender(const VirtualQTransposeProxyModel* self) {
	return self->sender();
}

int QTransposeProxyModel_protectedbase_senderSignalIndex(const VirtualQTransposeProxyModel* self) {
	return self->senderSignalIndex();
}

int QTransposeProxyModel_protectedbase_receivers(const VirtualQTransposeProxyModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QTransposeProxyModel_protectedbase_isSignalConnected(const VirtualQTransposeProxyModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTransposeProxyModel_delete(QTransposeProxyModel* self) {
	delete self;
}

