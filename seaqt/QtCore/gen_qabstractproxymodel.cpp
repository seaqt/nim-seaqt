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
#include <QVariant>
#include <qabstractproxymodel.h>
#include "gen_qabstractproxymodel.h"
class VirtualQAbstractProxyModel final : public QAbstractProxyModel {
	const QAbstractProxyModel_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractProxyModel_VTable* QAbstractProxyModel_vtbl(const VirtualQAbstractProxyModel* self);
	friend void* QAbstractProxyModel_vdata(const VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_setVdata(VirtualQAbstractProxyModel* self, void* vdata);

	VirtualQAbstractProxyModel(const QAbstractProxyModel_VTable* vtbl, void* vdata): QAbstractProxyModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractProxyModel(const QAbstractProxyModel_VTable* vtbl, void* vdata, QObject* parent): QAbstractProxyModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractProxyModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractProxyModel_virtualbase_metaObject(const VirtualQAbstractProxyModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractProxyModel_virtualbase_metacast(VirtualQAbstractProxyModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractProxyModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractProxyModel_virtualbase_metacall(VirtualQAbstractProxyModel* self, int param1, int param2, void** param3);

	virtual void setSourceModel(QAbstractItemModel* sourceModel) override {
		if (vtbl->setSourceModel == 0) {
			QAbstractProxyModel::setSourceModel(sourceModel);
			return;
		}

		QAbstractItemModel* sigval1 = sourceModel;

		vtbl->setSourceModel(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_setSourceModel(VirtualQAbstractProxyModel* self, QAbstractItemModel* sourceModel);

	virtual QModelIndex mapToSource(const QModelIndex& proxyIndex) const override {
		if (vtbl->mapToSource == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QModelIndex mapFromSource(const QModelIndex& sourceIndex) const override {
		if (vtbl->mapFromSource == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& sourceIndex_ret = sourceIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QItemSelection mapSelectionToSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionToSource == 0) {
			return QAbstractProxyModel::mapSelectionToSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionToSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionToSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection);

	virtual QItemSelection mapSelectionFromSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionFromSource == 0) {
			return QAbstractProxyModel::mapSelectionFromSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionFromSource(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionFromSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QAbstractProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_submit(VirtualQAbstractProxyModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QAbstractProxyModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QAbstractProxyModel_virtualbase_revert(VirtualQAbstractProxyModel* self);

	virtual QVariant data(const QModelIndex& proxyIndex, int role) const override {
		if (vtbl->data == 0) {
			return QAbstractProxyModel::data(proxyIndex, role);
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

	friend QVariant* QAbstractProxyModel_virtualbase_data(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QAbstractProxyModel::headerData(section, orientation, role);
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

	friend QVariant* QAbstractProxyModel_virtualbase_headerData(const VirtualQAbstractProxyModel* self, int section, int orientation, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QAbstractProxyModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_virtualbase_itemData(const VirtualQAbstractProxyModel* self, QModelIndex* index);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QAbstractProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QAbstractProxyModel_virtualbase_flags(const VirtualQAbstractProxyModel* self, QModelIndex* index);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QAbstractProxyModel::setData(index, value, role);
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

	friend bool QAbstractProxyModel_virtualbase_setData(VirtualQAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QAbstractProxyModel::setItemData(index, roles);
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

	friend bool QAbstractProxyModel_virtualbase_setItemData(VirtualQAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QAbstractProxyModel::setHeaderData(section, orientation, value, role);
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

	friend bool QAbstractProxyModel_virtualbase_setHeaderData(VirtualQAbstractProxyModel* self, int section, int orientation, QVariant* value, int role);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QAbstractProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QAbstractProxyModel_virtualbase_buddy(const VirtualQAbstractProxyModel* self, QModelIndex* index);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QAbstractProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_canFetchMore(const VirtualQAbstractProxyModel* self, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QAbstractProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_fetchMore(VirtualQAbstractProxyModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QAbstractProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QAbstractProxyModel_virtualbase_sort(VirtualQAbstractProxyModel* self, int column, int order);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QAbstractProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractProxyModel_virtualbase_span(const VirtualQAbstractProxyModel* self, QModelIndex* index);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QAbstractProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_hasChildren(const VirtualQAbstractProxyModel* self, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QAbstractProxyModel::sibling(row, column, idx);
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

	friend QModelIndex* QAbstractProxyModel_virtualbase_sibling(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* idx);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QAbstractProxyModel::mimeData(indexes);
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

	friend QMimeData* QAbstractProxyModel_virtualbase_mimeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QAbstractProxyModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractProxyModel_virtualbase_canDropMimeData(const VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QAbstractProxyModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractProxyModel_virtualbase_dropMimeData(VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QAbstractProxyModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_virtualbase_mimeTypes(const VirtualQAbstractProxyModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QAbstractProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractProxyModel_virtualbase_supportedDragActions(const VirtualQAbstractProxyModel* self);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QAbstractProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractProxyModel_virtualbase_supportedDropActions(const VirtualQAbstractProxyModel* self);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
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

	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QAbstractProxyModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_insertRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QAbstractProxyModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_insertColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QAbstractProxyModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_removeRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QAbstractProxyModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_removeColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QAbstractProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QAbstractProxyModel_virtualbase_moveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QAbstractProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QAbstractProxyModel_virtualbase_moveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QAbstractProxyModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_virtualbase_match(const VirtualQAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QAbstractProxyModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_virtualbase_roleNames(const VirtualQAbstractProxyModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_event(VirtualQAbstractProxyModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractProxyModel_virtualbase_eventFilter(VirtualQAbstractProxyModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_timerEvent(VirtualQAbstractProxyModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_childEvent(VirtualQAbstractProxyModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_customEvent(VirtualQAbstractProxyModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_connectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractProxyModel_virtualbase_disconnectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractProxyModel_protectedbase_resetInternalData(VirtualQAbstractProxyModel* self);
	friend QModelIndex* QAbstractProxyModel_protectedbase_createIndex(const VirtualQAbstractProxyModel* self, int row, int column);
	friend void QAbstractProxyModel_protectedbase_encodeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QAbstractProxyModel_protectedbase_decodeData(VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QAbstractProxyModel_protectedbase_beginInsertRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractProxyModel_protectedbase_endInsertRows(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_beginRemoveRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractProxyModel_protectedbase_endRemoveRows(VirtualQAbstractProxyModel* self);
	friend bool QAbstractProxyModel_protectedbase_beginMoveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QAbstractProxyModel_protectedbase_endMoveRows(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_beginInsertColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractProxyModel_protectedbase_endInsertColumns(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_beginRemoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractProxyModel_protectedbase_endRemoveColumns(VirtualQAbstractProxyModel* self);
	friend bool QAbstractProxyModel_protectedbase_beginMoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QAbstractProxyModel_protectedbase_endMoveColumns(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_beginResetModel(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_endResetModel(VirtualQAbstractProxyModel* self);
	friend void QAbstractProxyModel_protectedbase_changePersistentIndex(VirtualQAbstractProxyModel* self, QModelIndex* from, QModelIndex* to);
	friend void QAbstractProxyModel_protectedbase_changePersistentIndexList(VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_protectedbase_persistentIndexList(const VirtualQAbstractProxyModel* self);
	friend QObject* QAbstractProxyModel_protectedbase_sender(const VirtualQAbstractProxyModel* self);
	friend int QAbstractProxyModel_protectedbase_senderSignalIndex(const VirtualQAbstractProxyModel* self);
	friend int QAbstractProxyModel_protectedbase_receivers(const VirtualQAbstractProxyModel* self, const char* signal);
	friend bool QAbstractProxyModel_protectedbase_isSignalConnected(const VirtualQAbstractProxyModel* self, QMetaMethod* signal);
};

VirtualQAbstractProxyModel* QAbstractProxyModel_new(const QAbstractProxyModel_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractProxyModel(vtbl, vdata);
}

VirtualQAbstractProxyModel* QAbstractProxyModel_new2(const QAbstractProxyModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAbstractProxyModel(vtbl, vdata, parent);
}

void QAbstractProxyModel_virtbase(QAbstractProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QAbstractProxyModel_metaObject(const QAbstractProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractProxyModel_metacast(QAbstractProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractProxyModel_metacall(QAbstractProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractProxyModel_tr(const char* s) {
	QString _ret = QAbstractProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf8(const char* s) {
	QString _ret = QAbstractProxyModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractProxyModel_setSourceModel(QAbstractProxyModel* self, QAbstractItemModel* sourceModel) {
	self->setSourceModel(sourceModel);
}

QAbstractItemModel* QAbstractProxyModel_sourceModel(const QAbstractProxyModel* self) {
	return self->sourceModel();
}

QModelIndex* QAbstractProxyModel_mapToSource(const QAbstractProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QModelIndex* QAbstractProxyModel_mapFromSource(const QAbstractProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QItemSelection* QAbstractProxyModel_mapSelectionToSource(const QAbstractProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionToSource(*selection));
}

QItemSelection* QAbstractProxyModel_mapSelectionFromSource(const QAbstractProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionFromSource(*selection));
}

bool QAbstractProxyModel_submit(QAbstractProxyModel* self) {
	return self->submit();
}

void QAbstractProxyModel_revert(QAbstractProxyModel* self) {
	self->revert();
}

QVariant* QAbstractProxyModel_data(const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role) {
	return new QVariant(self->data(*proxyIndex, static_cast<int>(role)));
}

QVariant* QAbstractProxyModel_headerData(const QAbstractProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_itemData(const QAbstractProxyModel* self, QModelIndex* index) {
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

int QAbstractProxyModel_flags(const QAbstractProxyModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

bool QAbstractProxyModel_setData(QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

bool QAbstractProxyModel_setItemData(QAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

bool QAbstractProxyModel_setHeaderData(QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

QModelIndex* QAbstractProxyModel_buddy(const QAbstractProxyModel* self, QModelIndex* index) {
	return new QModelIndex(self->buddy(*index));
}

bool QAbstractProxyModel_canFetchMore(const QAbstractProxyModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

void QAbstractProxyModel_fetchMore(QAbstractProxyModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

void QAbstractProxyModel_sort(QAbstractProxyModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QSize* QAbstractProxyModel_span(const QAbstractProxyModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

bool QAbstractProxyModel_hasChildren(const QAbstractProxyModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

QModelIndex* QAbstractProxyModel_sibling(const QAbstractProxyModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QMimeData* QAbstractProxyModel_mimeData(const QAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QAbstractProxyModel_canDropMimeData(const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractProxyModel_dropMimeData(QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_mimeTypes(const QAbstractProxyModel* self) {
	QStringList _ret = self->mimeTypes();
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

int QAbstractProxyModel_supportedDragActions(const QAbstractProxyModel* self) {
	Qt::DropActions _ret = self->supportedDragActions();
	return static_cast<int>(_ret);
}

int QAbstractProxyModel_supportedDropActions(const QAbstractProxyModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_string QAbstractProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QAbstractProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractProxyModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractProxyModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractProxyModel_virtualbase_metaObject(const VirtualQAbstractProxyModel* self) {

	return (QMetaObject*) self->QAbstractProxyModel::metaObject();
}

void* QAbstractProxyModel_virtualbase_metacast(VirtualQAbstractProxyModel* self, const char* param1) {

	return self->QAbstractProxyModel::qt_metacast(param1);
}

int QAbstractProxyModel_virtualbase_metacall(VirtualQAbstractProxyModel* self, int param1, int param2, void** param3) {

	return self->QAbstractProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QAbstractProxyModel_virtualbase_setSourceModel(VirtualQAbstractProxyModel* self, QAbstractItemModel* sourceModel) {

	self->QAbstractProxyModel::setSourceModel(sourceModel);
}

QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionToSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QAbstractProxyModel::mapSelectionToSource(*selection));
}

QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionFromSource(const VirtualQAbstractProxyModel* self, QItemSelection* selection) {

	return new QItemSelection(self->QAbstractProxyModel::mapSelectionFromSource(*selection));
}

bool QAbstractProxyModel_virtualbase_submit(VirtualQAbstractProxyModel* self) {

	return self->QAbstractProxyModel::submit();
}

void QAbstractProxyModel_virtualbase_revert(VirtualQAbstractProxyModel* self) {

	self->QAbstractProxyModel::revert();
}

QVariant* QAbstractProxyModel_virtualbase_data(const VirtualQAbstractProxyModel* self, QModelIndex* proxyIndex, int role) {

	return new QVariant(self->QAbstractProxyModel::data(*proxyIndex, static_cast<int>(role)));
}

QVariant* QAbstractProxyModel_virtualbase_headerData(const VirtualQAbstractProxyModel* self, int section, int orientation, int role) {

	return new QVariant(self->QAbstractProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_virtualbase_itemData(const VirtualQAbstractProxyModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QAbstractProxyModel::itemData(*index);
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

int QAbstractProxyModel_virtualbase_flags(const VirtualQAbstractProxyModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QAbstractProxyModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QAbstractProxyModel_virtualbase_setData(VirtualQAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QAbstractProxyModel::setData(*index, *value, static_cast<int>(role));
}

bool QAbstractProxyModel_virtualbase_setItemData(VirtualQAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QAbstractProxyModel::setItemData(*index, roles_QMap);
}

bool QAbstractProxyModel_virtualbase_setHeaderData(VirtualQAbstractProxyModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QAbstractProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

QModelIndex* QAbstractProxyModel_virtualbase_buddy(const VirtualQAbstractProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QAbstractProxyModel::buddy(*index));
}

bool QAbstractProxyModel_virtualbase_canFetchMore(const VirtualQAbstractProxyModel* self, QModelIndex* parent) {

	return self->QAbstractProxyModel::canFetchMore(*parent);
}

void QAbstractProxyModel_virtualbase_fetchMore(VirtualQAbstractProxyModel* self, QModelIndex* parent) {

	self->QAbstractProxyModel::fetchMore(*parent);
}

void QAbstractProxyModel_virtualbase_sort(VirtualQAbstractProxyModel* self, int column, int order) {

	self->QAbstractProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QSize* QAbstractProxyModel_virtualbase_span(const VirtualQAbstractProxyModel* self, QModelIndex* index) {

	return new QSize(self->QAbstractProxyModel::span(*index));
}

bool QAbstractProxyModel_virtualbase_hasChildren(const VirtualQAbstractProxyModel* self, QModelIndex* parent) {

	return self->QAbstractProxyModel::hasChildren(*parent);
}

QModelIndex* QAbstractProxyModel_virtualbase_sibling(const VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QAbstractProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QMimeData* QAbstractProxyModel_virtualbase_mimeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QAbstractProxyModel::mimeData(indexes_QList);
}

bool QAbstractProxyModel_virtualbase_canDropMimeData(const VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractProxyModel_virtualbase_dropMimeData(VirtualQAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_virtualbase_mimeTypes(const VirtualQAbstractProxyModel* self) {

	QStringList _ret = self->QAbstractProxyModel::mimeTypes();
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

int QAbstractProxyModel_virtualbase_supportedDragActions(const VirtualQAbstractProxyModel* self) {

	Qt::DropActions _ret = self->QAbstractProxyModel::supportedDragActions();
	return static_cast<int>(_ret);
}

int QAbstractProxyModel_virtualbase_supportedDropActions(const VirtualQAbstractProxyModel* self) {

	Qt::DropActions _ret = self->QAbstractProxyModel::supportedDropActions();
	return static_cast<int>(_ret);
}

bool QAbstractProxyModel_virtualbase_insertRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractProxyModel_virtualbase_insertColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractProxyModel_virtualbase_removeRows(VirtualQAbstractProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractProxyModel_virtualbase_removeColumns(VirtualQAbstractProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractProxyModel_virtualbase_moveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractProxyModel_virtualbase_moveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_virtualbase_match(const VirtualQAbstractProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QAbstractProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_virtualbase_roleNames(const VirtualQAbstractProxyModel* self) {

	QHash<int, QByteArray> _ret = self->QAbstractProxyModel::roleNames();
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

bool QAbstractProxyModel_virtualbase_event(VirtualQAbstractProxyModel* self, QEvent* event) {

	return self->QAbstractProxyModel::event(event);
}

bool QAbstractProxyModel_virtualbase_eventFilter(VirtualQAbstractProxyModel* self, QObject* watched, QEvent* event) {

	return self->QAbstractProxyModel::eventFilter(watched, event);
}

void QAbstractProxyModel_virtualbase_timerEvent(VirtualQAbstractProxyModel* self, QTimerEvent* event) {

	self->QAbstractProxyModel::timerEvent(event);
}

void QAbstractProxyModel_virtualbase_childEvent(VirtualQAbstractProxyModel* self, QChildEvent* event) {

	self->QAbstractProxyModel::childEvent(event);
}

void QAbstractProxyModel_virtualbase_customEvent(VirtualQAbstractProxyModel* self, QEvent* event) {

	self->QAbstractProxyModel::customEvent(event);
}

void QAbstractProxyModel_virtualbase_connectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal) {

	self->QAbstractProxyModel::connectNotify(*signal);
}

void QAbstractProxyModel_virtualbase_disconnectNotify(VirtualQAbstractProxyModel* self, QMetaMethod* signal) {

	self->QAbstractProxyModel::disconnectNotify(*signal);
}

const QMetaObject* QAbstractProxyModel_staticMetaObject() { return &QAbstractProxyModel::staticMetaObject; }

const QAbstractProxyModel_VTable* QAbstractProxyModel_vtbl(const VirtualQAbstractProxyModel* self) { return self->vtbl; }
void* QAbstractProxyModel_vdata(const VirtualQAbstractProxyModel* self) { return self->vdata; }
void QAbstractProxyModel_setVdata(VirtualQAbstractProxyModel* self, void* vdata) { self->vdata = vdata; }

void QAbstractProxyModel_protectedbase_resetInternalData(VirtualQAbstractProxyModel* self) {
	self->resetInternalData();
}

QModelIndex* QAbstractProxyModel_protectedbase_createIndex(const VirtualQAbstractProxyModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QAbstractProxyModel_protectedbase_encodeData(const VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QAbstractProxyModel_protectedbase_decodeData(VirtualQAbstractProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QAbstractProxyModel_protectedbase_beginInsertRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractProxyModel_protectedbase_endInsertRows(VirtualQAbstractProxyModel* self) {
	self->endInsertRows();
}

void QAbstractProxyModel_protectedbase_beginRemoveRows(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractProxyModel_protectedbase_endRemoveRows(VirtualQAbstractProxyModel* self) {
	self->endRemoveRows();
}

bool QAbstractProxyModel_protectedbase_beginMoveRows(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QAbstractProxyModel_protectedbase_endMoveRows(VirtualQAbstractProxyModel* self) {
	self->endMoveRows();
}

void QAbstractProxyModel_protectedbase_beginInsertColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractProxyModel_protectedbase_endInsertColumns(VirtualQAbstractProxyModel* self) {
	self->endInsertColumns();
}

void QAbstractProxyModel_protectedbase_beginRemoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractProxyModel_protectedbase_endRemoveColumns(VirtualQAbstractProxyModel* self) {
	self->endRemoveColumns();
}

bool QAbstractProxyModel_protectedbase_beginMoveColumns(VirtualQAbstractProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QAbstractProxyModel_protectedbase_endMoveColumns(VirtualQAbstractProxyModel* self) {
	self->endMoveColumns();
}

void QAbstractProxyModel_protectedbase_beginResetModel(VirtualQAbstractProxyModel* self) {
	self->beginResetModel();
}

void QAbstractProxyModel_protectedbase_endResetModel(VirtualQAbstractProxyModel* self) {
	self->endResetModel();
}

void QAbstractProxyModel_protectedbase_changePersistentIndex(VirtualQAbstractProxyModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QAbstractProxyModel_protectedbase_changePersistentIndexList(VirtualQAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_protectedbase_persistentIndexList(const VirtualQAbstractProxyModel* self) {
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

QObject* QAbstractProxyModel_protectedbase_sender(const VirtualQAbstractProxyModel* self) {
	return self->sender();
}

int QAbstractProxyModel_protectedbase_senderSignalIndex(const VirtualQAbstractProxyModel* self) {
	return self->senderSignalIndex();
}

int QAbstractProxyModel_protectedbase_receivers(const VirtualQAbstractProxyModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractProxyModel_protectedbase_isSignalConnected(const VirtualQAbstractProxyModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractProxyModel_delete(QAbstractProxyModel* self) {
	delete self;
}

