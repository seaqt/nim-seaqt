#include <QAbstractItemModel>
#include <QAbstractProxyModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QEvent>
#include <QIdentityProxyModel>
#include <QItemSelection>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QModelRoleDataSpan>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qidentityproxymodel.h>
#include "gen_qidentityproxymodel.h"
class VirtualQIdentityProxyModel final : public QIdentityProxyModel {
	const QIdentityProxyModel_VTable* vtbl;
	void* vdata;
public:
	friend const QIdentityProxyModel_VTable* QIdentityProxyModel_vtbl(const VirtualQIdentityProxyModel* self);
	friend void* QIdentityProxyModel_vdata(const VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_setVdata(VirtualQIdentityProxyModel* self, void* vdata);

	VirtualQIdentityProxyModel(const QIdentityProxyModel_VTable* vtbl, void* vdata): QIdentityProxyModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQIdentityProxyModel(const QIdentityProxyModel_VTable* vtbl, void* vdata, QObject* parent): QIdentityProxyModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQIdentityProxyModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIdentityProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QIdentityProxyModel_virtualbase_metaObject(const VirtualQIdentityProxyModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIdentityProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QIdentityProxyModel_virtualbase_metacast(VirtualQIdentityProxyModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIdentityProxyModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_metacall(VirtualQIdentityProxyModel* self, int param1, int param2, void** param3);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QIdentityProxyModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_columnCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QIdentityProxyModel::index(row, column, parent);
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

	friend QModelIndex* QIdentityProxyModel_virtualbase_index(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex mapFromSource(const QModelIndex& sourceIndex) const override {
		if (vtbl->mapFromSource == 0) {
			return QIdentityProxyModel::mapFromSource(sourceIndex);
		}

		const QModelIndex& sourceIndex_ret = sourceIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QIdentityProxyModel_virtualbase_mapFromSource(const VirtualQIdentityProxyModel* self, QModelIndex* sourceIndex);

	virtual QModelIndex mapToSource(const QModelIndex& proxyIndex) const override {
		if (vtbl->mapToSource == 0) {
			return QIdentityProxyModel::mapToSource(proxyIndex);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QIdentityProxyModel_virtualbase_mapToSource(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex);

	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QIdentityProxyModel::parent(child);
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QIdentityProxyModel_virtualbase_parent(const VirtualQIdentityProxyModel* self, QModelIndex* child);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QIdentityProxyModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_rowCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QIdentityProxyModel::headerData(section, orientation, role);
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

	friend QVariant* QIdentityProxyModel_virtualbase_headerData(const VirtualQIdentityProxyModel* self, int section, int orientation, int role);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QIdentityProxyModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QIdentityProxyModel_virtualbase_dropMimeData(VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QIdentityProxyModel::sibling(row, column, idx);
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

	friend QModelIndex* QIdentityProxyModel_virtualbase_sibling(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* idx);

	virtual QItemSelection mapSelectionFromSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionFromSource == 0) {
			return QIdentityProxyModel::mapSelectionFromSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionFromSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection);

	virtual QItemSelection mapSelectionToSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionToSource == 0) {
			return QIdentityProxyModel::mapSelectionToSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionToSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QIdentityProxyModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_virtualbase_match(const VirtualQIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual void setSourceModel(QAbstractItemModel* sourceModel) override {
		if (vtbl->setSourceModel == 0) {
			QIdentityProxyModel::setSourceModel(sourceModel);
			return;
		}

		QAbstractItemModel* sigval1 = sourceModel;

		vtbl->setSourceModel(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_setSourceModel(VirtualQIdentityProxyModel* self, QAbstractItemModel* sourceModel);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QIdentityProxyModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_insertColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QIdentityProxyModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_insertRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QIdentityProxyModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_removeColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QIdentityProxyModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_removeRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QIdentityProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QIdentityProxyModel_virtualbase_moveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QIdentityProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QIdentityProxyModel_virtualbase_moveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QIdentityProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_submit(VirtualQIdentityProxyModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QIdentityProxyModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QIdentityProxyModel_virtualbase_revert(VirtualQIdentityProxyModel* self);

	virtual QVariant data(const QModelIndex& proxyIndex, int role) const override {
		if (vtbl->data == 0) {
			return QIdentityProxyModel::data(proxyIndex, role);
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

	friend QVariant* QIdentityProxyModel_virtualbase_data(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QIdentityProxyModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QIdentityProxyModel_virtualbase_itemData(const VirtualQIdentityProxyModel* self, QModelIndex* index);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QIdentityProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_flags(const VirtualQIdentityProxyModel* self, QModelIndex* index);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QIdentityProxyModel::setData(index, value, role);
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

	friend bool QIdentityProxyModel_virtualbase_setData(VirtualQIdentityProxyModel* self, QModelIndex* index, QVariant* value, int role);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QIdentityProxyModel::setItemData(index, roles);
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

	friend bool QIdentityProxyModel_virtualbase_setItemData(VirtualQIdentityProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QIdentityProxyModel::setHeaderData(section, orientation, value, role);
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

	friend bool QIdentityProxyModel_virtualbase_setHeaderData(VirtualQIdentityProxyModel* self, int section, int orientation, QVariant* value, int role);

	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QIdentityProxyModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->clearItemData(this, sigval1);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_clearItemData(VirtualQIdentityProxyModel* self, QModelIndex* index);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QIdentityProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QIdentityProxyModel_virtualbase_buddy(const VirtualQIdentityProxyModel* self, QModelIndex* index);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QIdentityProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_canFetchMore(const VirtualQIdentityProxyModel* self, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QIdentityProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_fetchMore(VirtualQIdentityProxyModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QIdentityProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QIdentityProxyModel_virtualbase_sort(VirtualQIdentityProxyModel* self, int column, int order);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QIdentityProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QIdentityProxyModel_virtualbase_span(const VirtualQIdentityProxyModel* self, QModelIndex* index);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QIdentityProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_hasChildren(const VirtualQIdentityProxyModel* self, QModelIndex* parent);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QIdentityProxyModel::mimeData(indexes);
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

	friend QMimeData* QIdentityProxyModel_virtualbase_mimeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QIdentityProxyModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QIdentityProxyModel_virtualbase_canDropMimeData(const VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QIdentityProxyModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QIdentityProxyModel_virtualbase_mimeTypes(const VirtualQIdentityProxyModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QIdentityProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_supportedDragActions(const VirtualQIdentityProxyModel* self);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QIdentityProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QIdentityProxyModel_virtualbase_supportedDropActions(const VirtualQIdentityProxyModel* self);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QIdentityProxyModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QIdentityProxyModel_virtualbase_roleNames(const VirtualQIdentityProxyModel* self);

	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QIdentityProxyModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(this, sigval1, sigval2);

	}

	friend void QIdentityProxyModel_virtualbase_multiData(const VirtualQIdentityProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QIdentityProxyModel::resetInternalData();
			return;
		}


		vtbl->resetInternalData(this);

	}

	friend void QIdentityProxyModel_virtualbase_resetInternalData(VirtualQIdentityProxyModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIdentityProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_event(VirtualQIdentityProxyModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIdentityProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QIdentityProxyModel_virtualbase_eventFilter(VirtualQIdentityProxyModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIdentityProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_timerEvent(VirtualQIdentityProxyModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIdentityProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_childEvent(VirtualQIdentityProxyModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIdentityProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_customEvent(VirtualQIdentityProxyModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIdentityProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_connectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIdentityProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QIdentityProxyModel_virtualbase_disconnectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QModelIndex* QIdentityProxyModel_protectedbase_createSourceIndex(const VirtualQIdentityProxyModel* self, int row, int col, void* internalPtr);
	friend QModelIndex* QIdentityProxyModel_protectedbase_createIndex(const VirtualQIdentityProxyModel* self, int row, int column);
	friend void QIdentityProxyModel_protectedbase_encodeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QIdentityProxyModel_protectedbase_decodeData(VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QIdentityProxyModel_protectedbase_beginInsertRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QIdentityProxyModel_protectedbase_endInsertRows(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_beginRemoveRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QIdentityProxyModel_protectedbase_endRemoveRows(VirtualQIdentityProxyModel* self);
	friend bool QIdentityProxyModel_protectedbase_beginMoveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QIdentityProxyModel_protectedbase_endMoveRows(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_beginInsertColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QIdentityProxyModel_protectedbase_endInsertColumns(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_beginRemoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QIdentityProxyModel_protectedbase_endRemoveColumns(VirtualQIdentityProxyModel* self);
	friend bool QIdentityProxyModel_protectedbase_beginMoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QIdentityProxyModel_protectedbase_endMoveColumns(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_beginResetModel(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_endResetModel(VirtualQIdentityProxyModel* self);
	friend void QIdentityProxyModel_protectedbase_changePersistentIndex(VirtualQIdentityProxyModel* self, QModelIndex* from, QModelIndex* to);
	friend void QIdentityProxyModel_protectedbase_changePersistentIndexList(VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_protectedbase_persistentIndexList(const VirtualQIdentityProxyModel* self);
	friend QObject* QIdentityProxyModel_protectedbase_sender(const VirtualQIdentityProxyModel* self);
	friend int QIdentityProxyModel_protectedbase_senderSignalIndex(const VirtualQIdentityProxyModel* self);
	friend int QIdentityProxyModel_protectedbase_receivers(const VirtualQIdentityProxyModel* self, const char* signal);
	friend bool QIdentityProxyModel_protectedbase_isSignalConnected(const VirtualQIdentityProxyModel* self, QMetaMethod* signal);
};

VirtualQIdentityProxyModel* QIdentityProxyModel_new(const QIdentityProxyModel_VTable* vtbl, void* vdata) {
	return new VirtualQIdentityProxyModel(vtbl, vdata);
}

VirtualQIdentityProxyModel* QIdentityProxyModel_new2(const QIdentityProxyModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQIdentityProxyModel(vtbl, vdata, parent);
}

void QIdentityProxyModel_virtbase(QIdentityProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel) {
	*outptr_QAbstractProxyModel = static_cast<QAbstractProxyModel*>(src);
}

QMetaObject* QIdentityProxyModel_metaObject(const QIdentityProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIdentityProxyModel_metacast(QIdentityProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIdentityProxyModel_metacall(QIdentityProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QIdentityProxyModel_tr(const char* s) {
	QString _ret = QIdentityProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QIdentityProxyModel_columnCount(const QIdentityProxyModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

QModelIndex* QIdentityProxyModel_index(const QIdentityProxyModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QIdentityProxyModel_mapFromSource(const QIdentityProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QModelIndex* QIdentityProxyModel_mapToSource(const QIdentityProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QModelIndex* QIdentityProxyModel_parent(const QIdentityProxyModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

int QIdentityProxyModel_rowCount(const QIdentityProxyModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

QVariant* QIdentityProxyModel_headerData(const QIdentityProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QIdentityProxyModel_dropMimeData(QIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QModelIndex* QIdentityProxyModel_sibling(const QIdentityProxyModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QItemSelection* QIdentityProxyModel_mapSelectionFromSource(const QIdentityProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionFromSource(*selection));
}

QItemSelection* QIdentityProxyModel_mapSelectionToSource(const QIdentityProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionToSource(*selection));
}

struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_match(const QIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
	QModelIndexList _ret = self->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

void QIdentityProxyModel_setSourceModel(QIdentityProxyModel* self, QAbstractItemModel* sourceModel) {
	self->setSourceModel(sourceModel);
}

bool QIdentityProxyModel_insertColumns(QIdentityProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_insertRows(QIdentityProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_removeColumns(QIdentityProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_removeRows(QIdentityProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_moveRows(QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QIdentityProxyModel_moveColumns(QIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

struct miqt_string QIdentityProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QIdentityProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIdentityProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QIdentityProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QIdentityProxyModel_virtualbase_metaObject(const VirtualQIdentityProxyModel* self) {

	return (QMetaObject*) self->QIdentityProxyModel::metaObject();
}

void* QIdentityProxyModel_virtualbase_metacast(VirtualQIdentityProxyModel* self, const char* param1) {

	return self->QIdentityProxyModel::qt_metacast(param1);
}

int QIdentityProxyModel_virtualbase_metacall(VirtualQIdentityProxyModel* self, int param1, int param2, void** param3) {

	return self->QIdentityProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QIdentityProxyModel_virtualbase_columnCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent) {

	return self->QIdentityProxyModel::columnCount(*parent);
}

QModelIndex* QIdentityProxyModel_virtualbase_index(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QIdentityProxyModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QIdentityProxyModel_virtualbase_mapFromSource(const VirtualQIdentityProxyModel* self, QModelIndex* sourceIndex) {

	return new QModelIndex(self->QIdentityProxyModel::mapFromSource(*sourceIndex));
}

QModelIndex* QIdentityProxyModel_virtualbase_mapToSource(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex) {

	return new QModelIndex(self->QIdentityProxyModel::mapToSource(*proxyIndex));
}

QModelIndex* QIdentityProxyModel_virtualbase_parent(const VirtualQIdentityProxyModel* self, QModelIndex* child) {

	return new QModelIndex(self->QIdentityProxyModel::parent(*child));
}

int QIdentityProxyModel_virtualbase_rowCount(const VirtualQIdentityProxyModel* self, QModelIndex* parent) {

	return self->QIdentityProxyModel::rowCount(*parent);
}

QVariant* QIdentityProxyModel_virtualbase_headerData(const VirtualQIdentityProxyModel* self, int section, int orientation, int role) {

	return new QVariant(self->QIdentityProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QIdentityProxyModel_virtualbase_dropMimeData(VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QIdentityProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QModelIndex* QIdentityProxyModel_virtualbase_sibling(const VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QIdentityProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionFromSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QIdentityProxyModel::mapSelectionFromSource(*selection));
}

QItemSelection* QIdentityProxyModel_virtualbase_mapSelectionToSource(const VirtualQIdentityProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QIdentityProxyModel::mapSelectionToSource(*selection));
}

struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_virtualbase_match(const VirtualQIdentityProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QIdentityProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

void QIdentityProxyModel_virtualbase_setSourceModel(VirtualQIdentityProxyModel* self, QAbstractItemModel* sourceModel) {

	self->QIdentityProxyModel::setSourceModel(sourceModel);
}

bool QIdentityProxyModel_virtualbase_insertColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QIdentityProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_virtualbase_insertRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QIdentityProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_virtualbase_removeColumns(VirtualQIdentityProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QIdentityProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_virtualbase_removeRows(VirtualQIdentityProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QIdentityProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QIdentityProxyModel_virtualbase_moveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QIdentityProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QIdentityProxyModel_virtualbase_moveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QIdentityProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QIdentityProxyModel_virtualbase_submit(VirtualQIdentityProxyModel* self) {

	return self->QIdentityProxyModel::submit();
}

void QIdentityProxyModel_virtualbase_revert(VirtualQIdentityProxyModel* self) {

	self->QIdentityProxyModel::revert();
}

QVariant* QIdentityProxyModel_virtualbase_data(const VirtualQIdentityProxyModel* self, QModelIndex* proxyIndex, int role) {

	return new QVariant(self->QIdentityProxyModel::data(*proxyIndex, static_cast<int>(role)));
}

struct miqt_map /* of int to QVariant* */  QIdentityProxyModel_virtualbase_itemData(const VirtualQIdentityProxyModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QIdentityProxyModel::itemData(*index);
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

int QIdentityProxyModel_virtualbase_flags(const VirtualQIdentityProxyModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QIdentityProxyModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QIdentityProxyModel_virtualbase_setData(VirtualQIdentityProxyModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QIdentityProxyModel::setData(*index, *value, static_cast<int>(role));
}

bool QIdentityProxyModel_virtualbase_setItemData(VirtualQIdentityProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QIdentityProxyModel::setItemData(*index, roles_QMap);
}

bool QIdentityProxyModel_virtualbase_setHeaderData(VirtualQIdentityProxyModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QIdentityProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QIdentityProxyModel_virtualbase_clearItemData(VirtualQIdentityProxyModel* self, QModelIndex* index) {

	return self->QIdentityProxyModel::clearItemData(*index);
}

QModelIndex* QIdentityProxyModel_virtualbase_buddy(const VirtualQIdentityProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QIdentityProxyModel::buddy(*index));
}

bool QIdentityProxyModel_virtualbase_canFetchMore(const VirtualQIdentityProxyModel* self, QModelIndex* parent) {

	return self->QIdentityProxyModel::canFetchMore(*parent);
}

void QIdentityProxyModel_virtualbase_fetchMore(VirtualQIdentityProxyModel* self, QModelIndex* parent) {

	self->QIdentityProxyModel::fetchMore(*parent);
}

void QIdentityProxyModel_virtualbase_sort(VirtualQIdentityProxyModel* self, int column, int order) {

	self->QIdentityProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QSize* QIdentityProxyModel_virtualbase_span(const VirtualQIdentityProxyModel* self, QModelIndex* index) {

	return new QSize(self->QIdentityProxyModel::span(*index));
}

bool QIdentityProxyModel_virtualbase_hasChildren(const VirtualQIdentityProxyModel* self, QModelIndex* parent) {

	return self->QIdentityProxyModel::hasChildren(*parent);
}

QMimeData* QIdentityProxyModel_virtualbase_mimeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QIdentityProxyModel::mimeData(indexes_QList);
}

bool QIdentityProxyModel_virtualbase_canDropMimeData(const VirtualQIdentityProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QIdentityProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct miqt_array /* of struct miqt_string */  QIdentityProxyModel_virtualbase_mimeTypes(const VirtualQIdentityProxyModel* self) {

	QStringList _ret = self->QIdentityProxyModel::mimeTypes();
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

int QIdentityProxyModel_virtualbase_supportedDragActions(const VirtualQIdentityProxyModel* self) {

	Qt::DropActions _ret = self->QIdentityProxyModel::supportedDragActions();
	return static_cast<int>(_ret);
}

int QIdentityProxyModel_virtualbase_supportedDropActions(const VirtualQIdentityProxyModel* self) {

	Qt::DropActions _ret = self->QIdentityProxyModel::supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_map /* of int to struct miqt_string */  QIdentityProxyModel_virtualbase_roleNames(const VirtualQIdentityProxyModel* self) {

	QHash<int, QByteArray> _ret = self->QIdentityProxyModel::roleNames();
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

void QIdentityProxyModel_virtualbase_multiData(const VirtualQIdentityProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	self->QIdentityProxyModel::multiData(*index, *roleDataSpan);
}

void QIdentityProxyModel_virtualbase_resetInternalData(VirtualQIdentityProxyModel* self) {

	self->QIdentityProxyModel::resetInternalData();
}

bool QIdentityProxyModel_virtualbase_event(VirtualQIdentityProxyModel* self, QEvent* event) {

	return self->QIdentityProxyModel::event(event);
}

bool QIdentityProxyModel_virtualbase_eventFilter(VirtualQIdentityProxyModel* self, QObject* watched, QEvent* event) {

	return self->QIdentityProxyModel::eventFilter(watched, event);
}

void QIdentityProxyModel_virtualbase_timerEvent(VirtualQIdentityProxyModel* self, QTimerEvent* event) {

	self->QIdentityProxyModel::timerEvent(event);
}

void QIdentityProxyModel_virtualbase_childEvent(VirtualQIdentityProxyModel* self, QChildEvent* event) {

	self->QIdentityProxyModel::childEvent(event);
}

void QIdentityProxyModel_virtualbase_customEvent(VirtualQIdentityProxyModel* self, QEvent* event) {

	self->QIdentityProxyModel::customEvent(event);
}

void QIdentityProxyModel_virtualbase_connectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal) {

	self->QIdentityProxyModel::connectNotify(*signal);
}

void QIdentityProxyModel_virtualbase_disconnectNotify(VirtualQIdentityProxyModel* self, QMetaMethod* signal) {

	self->QIdentityProxyModel::disconnectNotify(*signal);
}

const QMetaObject* QIdentityProxyModel_staticMetaObject() { return &QIdentityProxyModel::staticMetaObject; }

const QIdentityProxyModel_VTable* QIdentityProxyModel_vtbl(const VirtualQIdentityProxyModel* self) { return self->vtbl; }
void* QIdentityProxyModel_vdata(const VirtualQIdentityProxyModel* self) { return self->vdata; }
void QIdentityProxyModel_setVdata(VirtualQIdentityProxyModel* self, void* vdata) { self->vdata = vdata; }

QModelIndex* QIdentityProxyModel_protectedbase_createSourceIndex(const VirtualQIdentityProxyModel* self, int row, int col, void* internalPtr) {
	return new QModelIndex(self->createSourceIndex(static_cast<int>(row), static_cast<int>(col), internalPtr));
}

QModelIndex* QIdentityProxyModel_protectedbase_createIndex(const VirtualQIdentityProxyModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QIdentityProxyModel_protectedbase_encodeData(const VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QIdentityProxyModel_protectedbase_decodeData(VirtualQIdentityProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QIdentityProxyModel_protectedbase_beginInsertRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QIdentityProxyModel_protectedbase_endInsertRows(VirtualQIdentityProxyModel* self) {
	self->endInsertRows();
}

void QIdentityProxyModel_protectedbase_beginRemoveRows(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QIdentityProxyModel_protectedbase_endRemoveRows(VirtualQIdentityProxyModel* self) {
	self->endRemoveRows();
}

bool QIdentityProxyModel_protectedbase_beginMoveRows(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QIdentityProxyModel_protectedbase_endMoveRows(VirtualQIdentityProxyModel* self) {
	self->endMoveRows();
}

void QIdentityProxyModel_protectedbase_beginInsertColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QIdentityProxyModel_protectedbase_endInsertColumns(VirtualQIdentityProxyModel* self) {
	self->endInsertColumns();
}

void QIdentityProxyModel_protectedbase_beginRemoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QIdentityProxyModel_protectedbase_endRemoveColumns(VirtualQIdentityProxyModel* self) {
	self->endRemoveColumns();
}

bool QIdentityProxyModel_protectedbase_beginMoveColumns(VirtualQIdentityProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QIdentityProxyModel_protectedbase_endMoveColumns(VirtualQIdentityProxyModel* self) {
	self->endMoveColumns();
}

void QIdentityProxyModel_protectedbase_beginResetModel(VirtualQIdentityProxyModel* self) {
	self->beginResetModel();
}

void QIdentityProxyModel_protectedbase_endResetModel(VirtualQIdentityProxyModel* self) {
	self->endResetModel();
}

void QIdentityProxyModel_protectedbase_changePersistentIndex(VirtualQIdentityProxyModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QIdentityProxyModel_protectedbase_changePersistentIndexList(VirtualQIdentityProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QIdentityProxyModel_protectedbase_persistentIndexList(const VirtualQIdentityProxyModel* self) {
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

QObject* QIdentityProxyModel_protectedbase_sender(const VirtualQIdentityProxyModel* self) {
	return self->sender();
}

int QIdentityProxyModel_protectedbase_senderSignalIndex(const VirtualQIdentityProxyModel* self) {
	return self->senderSignalIndex();
}

int QIdentityProxyModel_protectedbase_receivers(const VirtualQIdentityProxyModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QIdentityProxyModel_protectedbase_isSignalConnected(const VirtualQIdentityProxyModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QIdentityProxyModel_delete(QIdentityProxyModel* self) {
	delete self;
}

