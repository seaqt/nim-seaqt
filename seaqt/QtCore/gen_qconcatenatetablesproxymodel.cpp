#include <QAbstractItemModel>
#include <QByteArray>
#include <QChildEvent>
#include <QConcatenateTablesProxyModel>
#include <QDataStream>
#include <QEvent>
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
#include <qconcatenatetablesproxymodel.h>
#include "gen_qconcatenatetablesproxymodel.h"
class VirtualQConcatenateTablesProxyModel final : public QConcatenateTablesProxyModel {
	const QConcatenateTablesProxyModel_VTable* vtbl;
	void* vdata;
public:
	friend const QConcatenateTablesProxyModel_VTable* QConcatenateTablesProxyModel_vtbl(const VirtualQConcatenateTablesProxyModel* self);
	friend void* QConcatenateTablesProxyModel_vdata(const VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_setVdata(VirtualQConcatenateTablesProxyModel* self, void* vdata);

	VirtualQConcatenateTablesProxyModel(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata): QConcatenateTablesProxyModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQConcatenateTablesProxyModel(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata, QObject* parent): QConcatenateTablesProxyModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQConcatenateTablesProxyModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QConcatenateTablesProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QConcatenateTablesProxyModel_virtualbase_metaObject(const VirtualQConcatenateTablesProxyModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QConcatenateTablesProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QConcatenateTablesProxyModel_virtualbase_metacast(VirtualQConcatenateTablesProxyModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QConcatenateTablesProxyModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_metacall(VirtualQConcatenateTablesProxyModel* self, int param1, int param2, void** param3);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QConcatenateTablesProxyModel::data(index, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QConcatenateTablesProxyModel_virtualbase_data(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, int role);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QConcatenateTablesProxyModel::setData(index, value, role);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_setData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& proxyIndex) const override {
		if (vtbl->itemData == 0) {
			return QConcatenateTablesProxyModel::itemData(proxyIndex);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

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

	friend struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_virtualbase_itemData(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* proxyIndex);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QConcatenateTablesProxyModel::setItemData(index, roles);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_setItemData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QConcatenateTablesProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_flags(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QConcatenateTablesProxyModel::index(row, column, parent);
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

	friend QModelIndex* QConcatenateTablesProxyModel_virtualbase_index(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex parent(const QModelIndex& index) const override {
		if (vtbl->parent == 0) {
			return QConcatenateTablesProxyModel::parent(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QConcatenateTablesProxyModel_virtualbase_parent(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QConcatenateTablesProxyModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_rowCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QConcatenateTablesProxyModel::headerData(section, orientation, role);
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

	friend QVariant* QConcatenateTablesProxyModel_virtualbase_headerData(const VirtualQConcatenateTablesProxyModel* self, int section, int orientation, int role);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QConcatenateTablesProxyModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_columnCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QConcatenateTablesProxyModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_mimeTypes(const VirtualQConcatenateTablesProxyModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QConcatenateTablesProxyModel::mimeData(indexes);
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

	friend QMimeData* QConcatenateTablesProxyModel_virtualbase_mimeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QConcatenateTablesProxyModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_canDropMimeData(const VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QConcatenateTablesProxyModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_dropMimeData(VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QConcatenateTablesProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QConcatenateTablesProxyModel_virtualbase_span(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QConcatenateTablesProxyModel::sibling(row, column, idx);
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

	friend QModelIndex* QConcatenateTablesProxyModel_virtualbase_sibling(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* idx);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QConcatenateTablesProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_hasChildren(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QConcatenateTablesProxyModel::setHeaderData(section, orientation, value, role);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_setHeaderData(VirtualQConcatenateTablesProxyModel* self, int section, int orientation, QVariant* value, int role);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QConcatenateTablesProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_supportedDropActions(const VirtualQConcatenateTablesProxyModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QConcatenateTablesProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QConcatenateTablesProxyModel_virtualbase_supportedDragActions(const VirtualQConcatenateTablesProxyModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QConcatenateTablesProxyModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_insertRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QConcatenateTablesProxyModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_insertColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QConcatenateTablesProxyModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_removeRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QConcatenateTablesProxyModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_removeColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QConcatenateTablesProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_moveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QConcatenateTablesProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QConcatenateTablesProxyModel_virtualbase_moveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QConcatenateTablesProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_fetchMore(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QConcatenateTablesProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_canFetchMore(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QConcatenateTablesProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_sort(VirtualQConcatenateTablesProxyModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QConcatenateTablesProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QConcatenateTablesProxyModel_virtualbase_buddy(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QConcatenateTablesProxyModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_virtualbase_match(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QConcatenateTablesProxyModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_roleNames(const VirtualQConcatenateTablesProxyModel* self);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QConcatenateTablesProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_submit(VirtualQConcatenateTablesProxyModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QConcatenateTablesProxyModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_revert(VirtualQConcatenateTablesProxyModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QConcatenateTablesProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_event(VirtualQConcatenateTablesProxyModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QConcatenateTablesProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QConcatenateTablesProxyModel_virtualbase_eventFilter(VirtualQConcatenateTablesProxyModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QConcatenateTablesProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_timerEvent(VirtualQConcatenateTablesProxyModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QConcatenateTablesProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_childEvent(VirtualQConcatenateTablesProxyModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QConcatenateTablesProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_customEvent(VirtualQConcatenateTablesProxyModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QConcatenateTablesProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_connectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QConcatenateTablesProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QConcatenateTablesProxyModel_virtualbase_disconnectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QConcatenateTablesProxyModel_protectedbase_resetInternalData(VirtualQConcatenateTablesProxyModel* self);
	friend QModelIndex* QConcatenateTablesProxyModel_protectedbase_createIndex(const VirtualQConcatenateTablesProxyModel* self, int row, int column);
	friend void QConcatenateTablesProxyModel_protectedbase_encodeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QConcatenateTablesProxyModel_protectedbase_decodeData(VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QConcatenateTablesProxyModel_protectedbase_beginInsertRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QConcatenateTablesProxyModel_protectedbase_endInsertRows(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_beginRemoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QConcatenateTablesProxyModel_protectedbase_endRemoveRows(VirtualQConcatenateTablesProxyModel* self);
	friend bool QConcatenateTablesProxyModel_protectedbase_beginMoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QConcatenateTablesProxyModel_protectedbase_endMoveRows(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_beginInsertColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QConcatenateTablesProxyModel_protectedbase_endInsertColumns(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last);
	friend void QConcatenateTablesProxyModel_protectedbase_endRemoveColumns(VirtualQConcatenateTablesProxyModel* self);
	friend bool QConcatenateTablesProxyModel_protectedbase_beginMoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QConcatenateTablesProxyModel_protectedbase_endMoveColumns(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_beginResetModel(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_endResetModel(VirtualQConcatenateTablesProxyModel* self);
	friend void QConcatenateTablesProxyModel_protectedbase_changePersistentIndex(VirtualQConcatenateTablesProxyModel* self, QModelIndex* from, QModelIndex* to);
	friend void QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_protectedbase_persistentIndexList(const VirtualQConcatenateTablesProxyModel* self);
	friend QObject* QConcatenateTablesProxyModel_protectedbase_sender(const VirtualQConcatenateTablesProxyModel* self);
	friend int QConcatenateTablesProxyModel_protectedbase_senderSignalIndex(const VirtualQConcatenateTablesProxyModel* self);
	friend int QConcatenateTablesProxyModel_protectedbase_receivers(const VirtualQConcatenateTablesProxyModel* self, const char* signal);
	friend bool QConcatenateTablesProxyModel_protectedbase_isSignalConnected(const VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal);
};

VirtualQConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata) {
	return new VirtualQConcatenateTablesProxyModel(vtbl, vdata);
}

VirtualQConcatenateTablesProxyModel* QConcatenateTablesProxyModel_new2(const QConcatenateTablesProxyModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQConcatenateTablesProxyModel(vtbl, vdata, parent);
}

void QConcatenateTablesProxyModel_virtbase(QConcatenateTablesProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QConcatenateTablesProxyModel_metaObject(const QConcatenateTablesProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QConcatenateTablesProxyModel_metacast(QConcatenateTablesProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QConcatenateTablesProxyModel_metacall(QConcatenateTablesProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QConcatenateTablesProxyModel_tr(const char* s) {
	QString _ret = QConcatenateTablesProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QConcatenateTablesProxyModel_trUtf8(const char* s) {
	QString _ret = QConcatenateTablesProxyModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QAbstractItemModel* */  QConcatenateTablesProxyModel_sourceModels(const QConcatenateTablesProxyModel* self) {
	QList<QAbstractItemModel *> _ret = self->sourceModels();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractItemModel** _arr = static_cast<QAbstractItemModel**>(malloc(sizeof(QAbstractItemModel*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QConcatenateTablesProxyModel_addSourceModel(QConcatenateTablesProxyModel* self, QAbstractItemModel* sourceModel) {
	self->addSourceModel(sourceModel);
}

void QConcatenateTablesProxyModel_removeSourceModel(QConcatenateTablesProxyModel* self, QAbstractItemModel* sourceModel) {
	self->removeSourceModel(sourceModel);
}

QModelIndex* QConcatenateTablesProxyModel_mapFromSource(const QConcatenateTablesProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QModelIndex* QConcatenateTablesProxyModel_mapToSource(const QConcatenateTablesProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QVariant* QConcatenateTablesProxyModel_data(const QConcatenateTablesProxyModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QConcatenateTablesProxyModel_setData(QConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_itemData(const QConcatenateTablesProxyModel* self, QModelIndex* proxyIndex) {
	QMap<int, QVariant> _ret = self->itemData(*proxyIndex);
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

bool QConcatenateTablesProxyModel_setItemData(QConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

int QConcatenateTablesProxyModel_flags(const QConcatenateTablesProxyModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

QModelIndex* QConcatenateTablesProxyModel_index(const QConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QConcatenateTablesProxyModel_parent(const QConcatenateTablesProxyModel* self, QModelIndex* index) {
	return new QModelIndex(self->parent(*index));
}

int QConcatenateTablesProxyModel_rowCount(const QConcatenateTablesProxyModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

QVariant* QConcatenateTablesProxyModel_headerData(const QConcatenateTablesProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

int QConcatenateTablesProxyModel_columnCount(const QConcatenateTablesProxyModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_mimeTypes(const QConcatenateTablesProxyModel* self) {
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

QMimeData* QConcatenateTablesProxyModel_mimeData(const QConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QConcatenateTablesProxyModel_canDropMimeData(const QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QConcatenateTablesProxyModel_dropMimeData(QConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QSize* QConcatenateTablesProxyModel_span(const QConcatenateTablesProxyModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

struct miqt_string QConcatenateTablesProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QConcatenateTablesProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QConcatenateTablesProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QConcatenateTablesProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QConcatenateTablesProxyModel_trUtf82(const char* s, const char* c) {
	QString _ret = QConcatenateTablesProxyModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QConcatenateTablesProxyModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QConcatenateTablesProxyModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QConcatenateTablesProxyModel_virtualbase_metaObject(const VirtualQConcatenateTablesProxyModel* self) {

	return (QMetaObject*) self->QConcatenateTablesProxyModel::metaObject();
}

void* QConcatenateTablesProxyModel_virtualbase_metacast(VirtualQConcatenateTablesProxyModel* self, const char* param1) {

	return self->QConcatenateTablesProxyModel::qt_metacast(param1);
}

int QConcatenateTablesProxyModel_virtualbase_metacall(VirtualQConcatenateTablesProxyModel* self, int param1, int param2, void** param3) {

	return self->QConcatenateTablesProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QConcatenateTablesProxyModel_virtualbase_data(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QConcatenateTablesProxyModel::data(*index, static_cast<int>(role)));
}

bool QConcatenateTablesProxyModel_virtualbase_setData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QConcatenateTablesProxyModel::setData(*index, *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QConcatenateTablesProxyModel_virtualbase_itemData(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* proxyIndex) {

	QMap<int, QVariant> _ret = self->QConcatenateTablesProxyModel::itemData(*proxyIndex);
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

bool QConcatenateTablesProxyModel_virtualbase_setItemData(VirtualQConcatenateTablesProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QConcatenateTablesProxyModel::setItemData(*index, roles_QMap);
}

int QConcatenateTablesProxyModel_virtualbase_flags(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QConcatenateTablesProxyModel::flags(*index);
	return static_cast<int>(_ret);
}

QModelIndex* QConcatenateTablesProxyModel_virtualbase_index(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QConcatenateTablesProxyModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QConcatenateTablesProxyModel_virtualbase_parent(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QConcatenateTablesProxyModel::parent(*index));
}

int QConcatenateTablesProxyModel_virtualbase_rowCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::rowCount(*parent);
}

QVariant* QConcatenateTablesProxyModel_virtualbase_headerData(const VirtualQConcatenateTablesProxyModel* self, int section, int orientation, int role) {

	return new QVariant(self->QConcatenateTablesProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

int QConcatenateTablesProxyModel_virtualbase_columnCount(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::columnCount(*parent);
}

struct miqt_array /* of struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_mimeTypes(const VirtualQConcatenateTablesProxyModel* self) {

	QStringList _ret = self->QConcatenateTablesProxyModel::mimeTypes();
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

QMimeData* QConcatenateTablesProxyModel_virtualbase_mimeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QConcatenateTablesProxyModel::mimeData(indexes_QList);
}

bool QConcatenateTablesProxyModel_virtualbase_canDropMimeData(const VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QConcatenateTablesProxyModel_virtualbase_dropMimeData(VirtualQConcatenateTablesProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QSize* QConcatenateTablesProxyModel_virtualbase_span(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index) {

	return new QSize(self->QConcatenateTablesProxyModel::span(*index));
}

QModelIndex* QConcatenateTablesProxyModel_virtualbase_sibling(const VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QConcatenateTablesProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QConcatenateTablesProxyModel_virtualbase_hasChildren(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::hasChildren(*parent);
}

bool QConcatenateTablesProxyModel_virtualbase_setHeaderData(VirtualQConcatenateTablesProxyModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QConcatenateTablesProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

int QConcatenateTablesProxyModel_virtualbase_supportedDropActions(const VirtualQConcatenateTablesProxyModel* self) {

	Qt::DropActions _ret = self->QConcatenateTablesProxyModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QConcatenateTablesProxyModel_virtualbase_supportedDragActions(const VirtualQConcatenateTablesProxyModel* self) {

	Qt::DropActions _ret = self->QConcatenateTablesProxyModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QConcatenateTablesProxyModel_virtualbase_insertRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QConcatenateTablesProxyModel_virtualbase_insertColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QConcatenateTablesProxyModel_virtualbase_removeRows(VirtualQConcatenateTablesProxyModel* self, int row, int count, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QConcatenateTablesProxyModel_virtualbase_removeColumns(VirtualQConcatenateTablesProxyModel* self, int column, int count, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QConcatenateTablesProxyModel_virtualbase_moveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QConcatenateTablesProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QConcatenateTablesProxyModel_virtualbase_moveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QConcatenateTablesProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QConcatenateTablesProxyModel_virtualbase_fetchMore(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent) {

	self->QConcatenateTablesProxyModel::fetchMore(*parent);
}

bool QConcatenateTablesProxyModel_virtualbase_canFetchMore(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent) {

	return self->QConcatenateTablesProxyModel::canFetchMore(*parent);
}

void QConcatenateTablesProxyModel_virtualbase_sort(VirtualQConcatenateTablesProxyModel* self, int column, int order) {

	self->QConcatenateTablesProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QConcatenateTablesProxyModel_virtualbase_buddy(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* index) {

	return new QModelIndex(self->QConcatenateTablesProxyModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_virtualbase_match(const VirtualQConcatenateTablesProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QConcatenateTablesProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

struct miqt_map /* of int to struct miqt_string */  QConcatenateTablesProxyModel_virtualbase_roleNames(const VirtualQConcatenateTablesProxyModel* self) {

	QHash<int, QByteArray> _ret = self->QConcatenateTablesProxyModel::roleNames();
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

bool QConcatenateTablesProxyModel_virtualbase_submit(VirtualQConcatenateTablesProxyModel* self) {

	return self->QConcatenateTablesProxyModel::submit();
}

void QConcatenateTablesProxyModel_virtualbase_revert(VirtualQConcatenateTablesProxyModel* self) {

	self->QConcatenateTablesProxyModel::revert();
}

bool QConcatenateTablesProxyModel_virtualbase_event(VirtualQConcatenateTablesProxyModel* self, QEvent* event) {

	return self->QConcatenateTablesProxyModel::event(event);
}

bool QConcatenateTablesProxyModel_virtualbase_eventFilter(VirtualQConcatenateTablesProxyModel* self, QObject* watched, QEvent* event) {

	return self->QConcatenateTablesProxyModel::eventFilter(watched, event);
}

void QConcatenateTablesProxyModel_virtualbase_timerEvent(VirtualQConcatenateTablesProxyModel* self, QTimerEvent* event) {

	self->QConcatenateTablesProxyModel::timerEvent(event);
}

void QConcatenateTablesProxyModel_virtualbase_childEvent(VirtualQConcatenateTablesProxyModel* self, QChildEvent* event) {

	self->QConcatenateTablesProxyModel::childEvent(event);
}

void QConcatenateTablesProxyModel_virtualbase_customEvent(VirtualQConcatenateTablesProxyModel* self, QEvent* event) {

	self->QConcatenateTablesProxyModel::customEvent(event);
}

void QConcatenateTablesProxyModel_virtualbase_connectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal) {

	self->QConcatenateTablesProxyModel::connectNotify(*signal);
}

void QConcatenateTablesProxyModel_virtualbase_disconnectNotify(VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal) {

	self->QConcatenateTablesProxyModel::disconnectNotify(*signal);
}

const QMetaObject* QConcatenateTablesProxyModel_staticMetaObject() { return &QConcatenateTablesProxyModel::staticMetaObject; }

const QConcatenateTablesProxyModel_VTable* QConcatenateTablesProxyModel_vtbl(const VirtualQConcatenateTablesProxyModel* self) { return self->vtbl; }
void* QConcatenateTablesProxyModel_vdata(const VirtualQConcatenateTablesProxyModel* self) { return self->vdata; }
void QConcatenateTablesProxyModel_setVdata(VirtualQConcatenateTablesProxyModel* self, void* vdata) { self->vdata = vdata; }

void QConcatenateTablesProxyModel_protectedbase_resetInternalData(VirtualQConcatenateTablesProxyModel* self) {
	self->resetInternalData();
}

QModelIndex* QConcatenateTablesProxyModel_protectedbase_createIndex(const VirtualQConcatenateTablesProxyModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QConcatenateTablesProxyModel_protectedbase_encodeData(const VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QConcatenateTablesProxyModel_protectedbase_decodeData(VirtualQConcatenateTablesProxyModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QConcatenateTablesProxyModel_protectedbase_beginInsertRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QConcatenateTablesProxyModel_protectedbase_endInsertRows(VirtualQConcatenateTablesProxyModel* self) {
	self->endInsertRows();
}

void QConcatenateTablesProxyModel_protectedbase_beginRemoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QConcatenateTablesProxyModel_protectedbase_endRemoveRows(VirtualQConcatenateTablesProxyModel* self) {
	self->endRemoveRows();
}

bool QConcatenateTablesProxyModel_protectedbase_beginMoveRows(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QConcatenateTablesProxyModel_protectedbase_endMoveRows(VirtualQConcatenateTablesProxyModel* self) {
	self->endMoveRows();
}

void QConcatenateTablesProxyModel_protectedbase_beginInsertColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QConcatenateTablesProxyModel_protectedbase_endInsertColumns(VirtualQConcatenateTablesProxyModel* self) {
	self->endInsertColumns();
}

void QConcatenateTablesProxyModel_protectedbase_beginRemoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QConcatenateTablesProxyModel_protectedbase_endRemoveColumns(VirtualQConcatenateTablesProxyModel* self) {
	self->endRemoveColumns();
}

bool QConcatenateTablesProxyModel_protectedbase_beginMoveColumns(VirtualQConcatenateTablesProxyModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QConcatenateTablesProxyModel_protectedbase_endMoveColumns(VirtualQConcatenateTablesProxyModel* self) {
	self->endMoveColumns();
}

void QConcatenateTablesProxyModel_protectedbase_beginResetModel(VirtualQConcatenateTablesProxyModel* self) {
	self->beginResetModel();
}

void QConcatenateTablesProxyModel_protectedbase_endResetModel(VirtualQConcatenateTablesProxyModel* self) {
	self->endResetModel();
}

void QConcatenateTablesProxyModel_protectedbase_changePersistentIndex(VirtualQConcatenateTablesProxyModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QConcatenateTablesProxyModel_protectedbase_changePersistentIndexList(VirtualQConcatenateTablesProxyModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QConcatenateTablesProxyModel_protectedbase_persistentIndexList(const VirtualQConcatenateTablesProxyModel* self) {
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

QObject* QConcatenateTablesProxyModel_protectedbase_sender(const VirtualQConcatenateTablesProxyModel* self) {
	return self->sender();
}

int QConcatenateTablesProxyModel_protectedbase_senderSignalIndex(const VirtualQConcatenateTablesProxyModel* self) {
	return self->senderSignalIndex();
}

int QConcatenateTablesProxyModel_protectedbase_receivers(const VirtualQConcatenateTablesProxyModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QConcatenateTablesProxyModel_protectedbase_isSignalConnected(const VirtualQConcatenateTablesProxyModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QConcatenateTablesProxyModel_delete(QConcatenateTablesProxyModel* self) {
	delete self;
}

