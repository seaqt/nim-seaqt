#include <QAbstractItemModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QDirModel>
#include <QEvent>
#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
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
#include <qdirmodel.h>
#include "gen_qdirmodel.h"
class VirtualQDirModel final : public QDirModel {
	const QDirModel_VTable* vtbl;
	void* vdata;
public:
	friend const QDirModel_VTable* QDirModel_vtbl(const VirtualQDirModel* self);
	friend void* QDirModel_vdata(const VirtualQDirModel* self);
	friend void QDirModel_setVdata(VirtualQDirModel* self, void* vdata);

	VirtualQDirModel(const QDirModel_VTable* vtbl, void* vdata, const QStringList& nameFilters, QDir::Filters filters, QDir::SortFlags sort): QDirModel(nameFilters, filters, sort), vtbl(vtbl), vdata(vdata) {}
	VirtualQDirModel(const QDirModel_VTable* vtbl, void* vdata): QDirModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDirModel(const QDirModel_VTable* vtbl, void* vdata, const QStringList& nameFilters, QDir::Filters filters, QDir::SortFlags sort, QObject* parent): QDirModel(nameFilters, filters, sort, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDirModel(const QDirModel_VTable* vtbl, void* vdata, QObject* parent): QDirModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDirModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDirModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDirModel_virtualbase_metaObject(const VirtualQDirModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDirModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDirModel_virtualbase_metacast(VirtualQDirModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDirModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDirModel_virtualbase_metacall(VirtualQDirModel* self, int param1, int param2, void** param3);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QDirModel::index(row, column, parent);
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

	friend QModelIndex* QDirModel_virtualbase_index(const VirtualQDirModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QDirModel::parent(child);
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QDirModel_virtualbase_parent(const VirtualQDirModel* self, QModelIndex* child);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QDirModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDirModel_virtualbase_rowCount(const VirtualQDirModel* self, QModelIndex* parent);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QDirModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDirModel_virtualbase_columnCount(const VirtualQDirModel* self, QModelIndex* parent);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QDirModel::data(index, role);
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

	friend QVariant* QDirModel_virtualbase_data(const VirtualQDirModel* self, QModelIndex* index, int role);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QDirModel::setData(index, value, role);
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

	friend bool QDirModel_virtualbase_setData(VirtualQDirModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QDirModel::headerData(section, orientation, role);
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

	friend QVariant* QDirModel_virtualbase_headerData(const VirtualQDirModel* self, int section, int orientation, int role);

	virtual bool hasChildren(const QModelIndex& index) const override {
		if (vtbl->hasChildren == 0) {
			return QDirModel::hasChildren(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_hasChildren(const VirtualQDirModel* self, QModelIndex* index);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QDirModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QDirModel_virtualbase_flags(const VirtualQDirModel* self, QModelIndex* index);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QDirModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QDirModel_virtualbase_sort(VirtualQDirModel* self, int column, int order);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QDirModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QDirModel_virtualbase_mimeTypes(const VirtualQDirModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QDirModel::mimeData(indexes);
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

	friend QMimeData* QDirModel_virtualbase_mimeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QDirModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QDirModel_virtualbase_dropMimeData(VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QDirModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QDirModel_virtualbase_supportedDropActions(const VirtualQDirModel* self);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QDirModel::sibling(row, column, idx);
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

	friend QModelIndex* QDirModel_virtualbase_sibling(const VirtualQDirModel* self, int row, int column, QModelIndex* idx);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QDirModel::setHeaderData(section, orientation, value, role);
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

	friend bool QDirModel_virtualbase_setHeaderData(VirtualQDirModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QDirModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QDirModel_virtualbase_itemData(const VirtualQDirModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QDirModel::setItemData(index, roles);
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

	friend bool QDirModel_virtualbase_setItemData(VirtualQDirModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QDirModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QDirModel_virtualbase_canDropMimeData(const VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QDirModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QDirModel_virtualbase_supportedDragActions(const VirtualQDirModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QDirModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_insertRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QDirModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_insertColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QDirModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_removeRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QDirModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_removeColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QDirModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QDirModel_virtualbase_moveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QDirModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QDirModel_virtualbase_moveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QDirModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QDirModel_virtualbase_fetchMore(VirtualQDirModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QDirModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_canFetchMore(const VirtualQDirModel* self, QModelIndex* parent);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QDirModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QDirModel_virtualbase_buddy(const VirtualQDirModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QDirModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QDirModel_virtualbase_match(const VirtualQDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QDirModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDirModel_virtualbase_span(const VirtualQDirModel* self, QModelIndex* index);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QDirModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QDirModel_virtualbase_roleNames(const VirtualQDirModel* self);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QDirModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_submit(VirtualQDirModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QDirModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QDirModel_virtualbase_revert(VirtualQDirModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDirModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_event(VirtualQDirModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDirModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDirModel_virtualbase_eventFilter(VirtualQDirModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDirModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDirModel_virtualbase_timerEvent(VirtualQDirModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDirModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDirModel_virtualbase_childEvent(VirtualQDirModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDirModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDirModel_virtualbase_customEvent(VirtualQDirModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDirModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDirModel_virtualbase_connectNotify(VirtualQDirModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDirModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDirModel_virtualbase_disconnectNotify(VirtualQDirModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDirModel_protectedbase_resetInternalData(VirtualQDirModel* self);
	friend QModelIndex* QDirModel_protectedbase_createIndex(const VirtualQDirModel* self, int row, int column);
	friend void QDirModel_protectedbase_encodeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QDirModel_protectedbase_decodeData(VirtualQDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QDirModel_protectedbase_beginInsertRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
	friend void QDirModel_protectedbase_endInsertRows(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_beginRemoveRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
	friend void QDirModel_protectedbase_endRemoveRows(VirtualQDirModel* self);
	friend bool QDirModel_protectedbase_beginMoveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QDirModel_protectedbase_endMoveRows(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_beginInsertColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
	friend void QDirModel_protectedbase_endInsertColumns(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_beginRemoveColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last);
	friend void QDirModel_protectedbase_endRemoveColumns(VirtualQDirModel* self);
	friend bool QDirModel_protectedbase_beginMoveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QDirModel_protectedbase_endMoveColumns(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_beginResetModel(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_endResetModel(VirtualQDirModel* self);
	friend void QDirModel_protectedbase_changePersistentIndex(VirtualQDirModel* self, QModelIndex* from, QModelIndex* to);
	friend void QDirModel_protectedbase_changePersistentIndexList(VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QDirModel_protectedbase_persistentIndexList(const VirtualQDirModel* self);
	friend QObject* QDirModel_protectedbase_sender(const VirtualQDirModel* self);
	friend int QDirModel_protectedbase_senderSignalIndex(const VirtualQDirModel* self);
	friend int QDirModel_protectedbase_receivers(const VirtualQDirModel* self, const char* signal);
	friend bool QDirModel_protectedbase_isSignalConnected(const VirtualQDirModel* self, QMetaMethod* signal);
};

VirtualQDirModel* QDirModel_new(const QDirModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort) {
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct miqt_string* nameFilters_arr = static_cast<struct miqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new VirtualQDirModel(vtbl, vdata, nameFilters_QList, static_cast<QDir::Filters>(filters), static_cast<QDir::SortFlags>(sort));
}

VirtualQDirModel* QDirModel_new2(const QDirModel_VTable* vtbl, void* vdata) {
	return new VirtualQDirModel(vtbl, vdata);
}

VirtualQDirModel* QDirModel_new3(const QDirModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  nameFilters, int filters, int sort, QObject* parent) {
	QStringList nameFilters_QList;
	nameFilters_QList.reserve(nameFilters.len);
	struct miqt_string* nameFilters_arr = static_cast<struct miqt_string*>(nameFilters.data);
	for(size_t i = 0; i < nameFilters.len; ++i) {
		QString nameFilters_arr_i_QString = QString::fromUtf8(nameFilters_arr[i].data, nameFilters_arr[i].len);
		nameFilters_QList.push_back(nameFilters_arr_i_QString);
	}
	return new VirtualQDirModel(vtbl, vdata, nameFilters_QList, static_cast<QDir::Filters>(filters), static_cast<QDir::SortFlags>(sort), parent);
}

VirtualQDirModel* QDirModel_new4(const QDirModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQDirModel(vtbl, vdata, parent);
}

void QDirModel_virtbase(QDirModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QDirModel_metaObject(const QDirModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDirModel_metacast(QDirModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDirModel_metacall(QDirModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDirModel_tr(const char* s) {
	QString _ret = QDirModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDirModel_trUtf8(const char* s) {
	QString _ret = QDirModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QDirModel_index(const QDirModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QDirModel_parent(const QDirModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

int QDirModel_rowCount(const QDirModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QDirModel_columnCount(const QDirModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

QVariant* QDirModel_data(const QDirModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QDirModel_setData(QDirModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QVariant* QDirModel_headerData(const QDirModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QDirModel_hasChildren(const QDirModel* self, QModelIndex* index) {
	return self->hasChildren(*index);
}

int QDirModel_flags(const QDirModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

void QDirModel_sort(QDirModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QDirModel_mimeTypes(const QDirModel* self) {
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

QMimeData* QDirModel_mimeData(const QDirModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QDirModel_dropMimeData(QDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QDirModel_supportedDropActions(const QDirModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

void QDirModel_setIconProvider(QDirModel* self, QFileIconProvider* provider) {
	self->setIconProvider(provider);
}

QFileIconProvider* QDirModel_iconProvider(const QDirModel* self) {
	return self->iconProvider();
}

void QDirModel_setNameFilters(QDirModel* self, struct miqt_array /* of struct miqt_string */  filters) {
	QStringList filters_QList;
	filters_QList.reserve(filters.len);
	struct miqt_string* filters_arr = static_cast<struct miqt_string*>(filters.data);
	for(size_t i = 0; i < filters.len; ++i) {
		QString filters_arr_i_QString = QString::fromUtf8(filters_arr[i].data, filters_arr[i].len);
		filters_QList.push_back(filters_arr_i_QString);
	}
	self->setNameFilters(filters_QList);
}

struct miqt_array /* of struct miqt_string */  QDirModel_nameFilters(const QDirModel* self) {
	QStringList _ret = self->nameFilters();
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

void QDirModel_setFilter(QDirModel* self, int filters) {
	self->setFilter(static_cast<QDir::Filters>(filters));
}

int QDirModel_filter(const QDirModel* self) {
	QDir::Filters _ret = self->filter();
	return static_cast<int>(_ret);
}

void QDirModel_setSorting(QDirModel* self, int sort) {
	self->setSorting(static_cast<QDir::SortFlags>(sort));
}

int QDirModel_sorting(const QDirModel* self) {
	QDir::SortFlags _ret = self->sorting();
	return static_cast<int>(_ret);
}

void QDirModel_setResolveSymlinks(QDirModel* self, bool enable) {
	self->setResolveSymlinks(enable);
}

bool QDirModel_resolveSymlinks(const QDirModel* self) {
	return self->resolveSymlinks();
}

void QDirModel_setReadOnly(QDirModel* self, bool enable) {
	self->setReadOnly(enable);
}

bool QDirModel_isReadOnly(const QDirModel* self) {
	return self->isReadOnly();
}

void QDirModel_setLazyChildCount(QDirModel* self, bool enable) {
	self->setLazyChildCount(enable);
}

bool QDirModel_lazyChildCount(const QDirModel* self) {
	return self->lazyChildCount();
}

QModelIndex* QDirModel_indexWithPath(const QDirModel* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QModelIndex(self->index(path_QString));
}

bool QDirModel_isDir(const QDirModel* self, QModelIndex* index) {
	return self->isDir(*index);
}

QModelIndex* QDirModel_mkdir(QDirModel* self, QModelIndex* parent, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QModelIndex(self->mkdir(*parent, name_QString));
}

bool QDirModel_rmdir(QDirModel* self, QModelIndex* index) {
	return self->rmdir(*index);
}

bool QDirModel_remove(QDirModel* self, QModelIndex* index) {
	return self->remove(*index);
}

struct miqt_string QDirModel_filePath(const QDirModel* self, QModelIndex* index) {
	QString _ret = self->filePath(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDirModel_fileName(const QDirModel* self, QModelIndex* index) {
	QString _ret = self->fileName(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QDirModel_fileIcon(const QDirModel* self, QModelIndex* index) {
	return new QIcon(self->fileIcon(*index));
}

QFileInfo* QDirModel_fileInfo(const QDirModel* self, QModelIndex* index) {
	return new QFileInfo(self->fileInfo(*index));
}

void QDirModel_refresh(QDirModel* self) {
	self->refresh();
}

struct miqt_string QDirModel_tr2(const char* s, const char* c) {
	QString _ret = QDirModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDirModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QDirModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDirModel_trUtf82(const char* s, const char* c) {
	QString _ret = QDirModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDirModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDirModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QDirModel_index2(const QDirModel* self, struct miqt_string path, int column) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QModelIndex(self->index(path_QString, static_cast<int>(column)));
}

void QDirModel_refresh1(QDirModel* self, QModelIndex* parent) {
	self->refresh(*parent);
}

QMetaObject* QDirModel_virtualbase_metaObject(const VirtualQDirModel* self) {

	return (QMetaObject*) self->QDirModel::metaObject();
}

void* QDirModel_virtualbase_metacast(VirtualQDirModel* self, const char* param1) {

	return self->QDirModel::qt_metacast(param1);
}

int QDirModel_virtualbase_metacall(VirtualQDirModel* self, int param1, int param2, void** param3) {

	return self->QDirModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QDirModel_virtualbase_index(const VirtualQDirModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QDirModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QDirModel_virtualbase_parent(const VirtualQDirModel* self, QModelIndex* child) {

	return new QModelIndex(self->QDirModel::parent(*child));
}

int QDirModel_virtualbase_rowCount(const VirtualQDirModel* self, QModelIndex* parent) {

	return self->QDirModel::rowCount(*parent);
}

int QDirModel_virtualbase_columnCount(const VirtualQDirModel* self, QModelIndex* parent) {

	return self->QDirModel::columnCount(*parent);
}

QVariant* QDirModel_virtualbase_data(const VirtualQDirModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QDirModel::data(*index, static_cast<int>(role)));
}

bool QDirModel_virtualbase_setData(VirtualQDirModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QDirModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QDirModel_virtualbase_headerData(const VirtualQDirModel* self, int section, int orientation, int role) {

	return new QVariant(self->QDirModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QDirModel_virtualbase_hasChildren(const VirtualQDirModel* self, QModelIndex* index) {

	return self->QDirModel::hasChildren(*index);
}

int QDirModel_virtualbase_flags(const VirtualQDirModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QDirModel::flags(*index);
	return static_cast<int>(_ret);
}

void QDirModel_virtualbase_sort(VirtualQDirModel* self, int column, int order) {

	self->QDirModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QDirModel_virtualbase_mimeTypes(const VirtualQDirModel* self) {

	QStringList _ret = self->QDirModel::mimeTypes();
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

QMimeData* QDirModel_virtualbase_mimeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QDirModel::mimeData(indexes_QList);
}

bool QDirModel_virtualbase_dropMimeData(VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QDirModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QDirModel_virtualbase_supportedDropActions(const VirtualQDirModel* self) {

	Qt::DropActions _ret = self->QDirModel::supportedDropActions();
	return static_cast<int>(_ret);
}

QModelIndex* QDirModel_virtualbase_sibling(const VirtualQDirModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QDirModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QDirModel_virtualbase_setHeaderData(VirtualQDirModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QDirModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QDirModel_virtualbase_itemData(const VirtualQDirModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QDirModel::itemData(*index);
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

bool QDirModel_virtualbase_setItemData(VirtualQDirModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QDirModel::setItemData(*index, roles_QMap);
}

bool QDirModel_virtualbase_canDropMimeData(const VirtualQDirModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QDirModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QDirModel_virtualbase_supportedDragActions(const VirtualQDirModel* self) {

	Qt::DropActions _ret = self->QDirModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QDirModel_virtualbase_insertRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent) {

	return self->QDirModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QDirModel_virtualbase_insertColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent) {

	return self->QDirModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QDirModel_virtualbase_removeRows(VirtualQDirModel* self, int row, int count, QModelIndex* parent) {

	return self->QDirModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QDirModel_virtualbase_removeColumns(VirtualQDirModel* self, int column, int count, QModelIndex* parent) {

	return self->QDirModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QDirModel_virtualbase_moveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QDirModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QDirModel_virtualbase_moveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QDirModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QDirModel_virtualbase_fetchMore(VirtualQDirModel* self, QModelIndex* parent) {

	self->QDirModel::fetchMore(*parent);
}

bool QDirModel_virtualbase_canFetchMore(const VirtualQDirModel* self, QModelIndex* parent) {

	return self->QDirModel::canFetchMore(*parent);
}

QModelIndex* QDirModel_virtualbase_buddy(const VirtualQDirModel* self, QModelIndex* index) {

	return new QModelIndex(self->QDirModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QDirModel_virtualbase_match(const VirtualQDirModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QDirModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QDirModel_virtualbase_span(const VirtualQDirModel* self, QModelIndex* index) {

	return new QSize(self->QDirModel::span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QDirModel_virtualbase_roleNames(const VirtualQDirModel* self) {

	QHash<int, QByteArray> _ret = self->QDirModel::roleNames();
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

bool QDirModel_virtualbase_submit(VirtualQDirModel* self) {

	return self->QDirModel::submit();
}

void QDirModel_virtualbase_revert(VirtualQDirModel* self) {

	self->QDirModel::revert();
}

bool QDirModel_virtualbase_event(VirtualQDirModel* self, QEvent* event) {

	return self->QDirModel::event(event);
}

bool QDirModel_virtualbase_eventFilter(VirtualQDirModel* self, QObject* watched, QEvent* event) {

	return self->QDirModel::eventFilter(watched, event);
}

void QDirModel_virtualbase_timerEvent(VirtualQDirModel* self, QTimerEvent* event) {

	self->QDirModel::timerEvent(event);
}

void QDirModel_virtualbase_childEvent(VirtualQDirModel* self, QChildEvent* event) {

	self->QDirModel::childEvent(event);
}

void QDirModel_virtualbase_customEvent(VirtualQDirModel* self, QEvent* event) {

	self->QDirModel::customEvent(event);
}

void QDirModel_virtualbase_connectNotify(VirtualQDirModel* self, QMetaMethod* signal) {

	self->QDirModel::connectNotify(*signal);
}

void QDirModel_virtualbase_disconnectNotify(VirtualQDirModel* self, QMetaMethod* signal) {

	self->QDirModel::disconnectNotify(*signal);
}

const QMetaObject* QDirModel_staticMetaObject() { return &QDirModel::staticMetaObject; }

const QDirModel_VTable* QDirModel_vtbl(const VirtualQDirModel* self) { return self->vtbl; }
void* QDirModel_vdata(const VirtualQDirModel* self) { return self->vdata; }
void QDirModel_setVdata(VirtualQDirModel* self, void* vdata) { self->vdata = vdata; }

void QDirModel_protectedbase_resetInternalData(VirtualQDirModel* self) {
	self->resetInternalData();
}

QModelIndex* QDirModel_protectedbase_createIndex(const VirtualQDirModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QDirModel_protectedbase_encodeData(const VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QDirModel_protectedbase_decodeData(VirtualQDirModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QDirModel_protectedbase_beginInsertRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QDirModel_protectedbase_endInsertRows(VirtualQDirModel* self) {
	self->endInsertRows();
}

void QDirModel_protectedbase_beginRemoveRows(VirtualQDirModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QDirModel_protectedbase_endRemoveRows(VirtualQDirModel* self) {
	self->endRemoveRows();
}

bool QDirModel_protectedbase_beginMoveRows(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QDirModel_protectedbase_endMoveRows(VirtualQDirModel* self) {
	self->endMoveRows();
}

void QDirModel_protectedbase_beginInsertColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QDirModel_protectedbase_endInsertColumns(VirtualQDirModel* self) {
	self->endInsertColumns();
}

void QDirModel_protectedbase_beginRemoveColumns(VirtualQDirModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QDirModel_protectedbase_endRemoveColumns(VirtualQDirModel* self) {
	self->endRemoveColumns();
}

bool QDirModel_protectedbase_beginMoveColumns(VirtualQDirModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QDirModel_protectedbase_endMoveColumns(VirtualQDirModel* self) {
	self->endMoveColumns();
}

void QDirModel_protectedbase_beginResetModel(VirtualQDirModel* self) {
	self->beginResetModel();
}

void QDirModel_protectedbase_endResetModel(VirtualQDirModel* self) {
	self->endResetModel();
}

void QDirModel_protectedbase_changePersistentIndex(VirtualQDirModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QDirModel_protectedbase_changePersistentIndexList(VirtualQDirModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QDirModel_protectedbase_persistentIndexList(const VirtualQDirModel* self) {
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

QObject* QDirModel_protectedbase_sender(const VirtualQDirModel* self) {
	return self->sender();
}

int QDirModel_protectedbase_senderSignalIndex(const VirtualQDirModel* self) {
	return self->senderSignalIndex();
}

int QDirModel_protectedbase_receivers(const VirtualQDirModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QDirModel_protectedbase_isSignalConnected(const VirtualQDirModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDirModel_delete(QDirModel* self) {
	delete self;
}

