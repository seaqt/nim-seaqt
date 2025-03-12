#include <QAbstractItemModel>
#include <QAbstractListModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QEvent>
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
#include <QStringListModel>
#include <QTimerEvent>
#include <QVariant>
#include <qstringlistmodel.h>
#include "gen_qstringlistmodel.h"
class VirtualQStringListModel final : public QStringListModel {
	const QStringListModel_VTable* vtbl;
	void* vdata;
public:
	friend const QStringListModel_VTable* QStringListModel_vtbl(const VirtualQStringListModel* self);
	friend void* QStringListModel_vdata(const VirtualQStringListModel* self);
	friend void QStringListModel_setVdata(VirtualQStringListModel* self, void* vdata);

	VirtualQStringListModel(const QStringListModel_VTable* vtbl, void* vdata): QStringListModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQStringListModel(const QStringListModel_VTable* vtbl, void* vdata, const QStringList& strings): QStringListModel(strings), vtbl(vtbl), vdata(vdata) {}
	VirtualQStringListModel(const QStringListModel_VTable* vtbl, void* vdata, QObject* parent): QStringListModel(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQStringListModel(const QStringListModel_VTable* vtbl, void* vdata, const QStringList& strings, QObject* parent): QStringListModel(strings, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStringListModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStringListModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QStringListModel_virtualbase_metaObject(const VirtualQStringListModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStringListModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QStringListModel_virtualbase_metacast(VirtualQStringListModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStringListModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStringListModel_virtualbase_metacall(VirtualQStringListModel* self, int param1, int param2, void** param3);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QStringListModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStringListModel_virtualbase_rowCount(const VirtualQStringListModel* self, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QStringListModel::sibling(row, column, idx);
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

	friend QModelIndex* QStringListModel_virtualbase_sibling(const VirtualQStringListModel* self, int row, int column, QModelIndex* idx);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QStringListModel::data(index, role);
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

	friend QVariant* QStringListModel_virtualbase_data(const VirtualQStringListModel* self, QModelIndex* index, int role);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QStringListModel::setData(index, value, role);
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

	friend bool QStringListModel_virtualbase_setData(VirtualQStringListModel* self, QModelIndex* index, QVariant* value, int role);

	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QStringListModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->clearItemData(this, sigval1);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_clearItemData(VirtualQStringListModel* self, QModelIndex* index);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QStringListModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QStringListModel_virtualbase_flags(const VirtualQStringListModel* self, QModelIndex* index);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QStringListModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_insertRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QStringListModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_removeRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QStringListModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QStringListModel_virtualbase_moveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QStringListModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QStringListModel_virtualbase_itemData(const VirtualQStringListModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QStringListModel::setItemData(index, roles);
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

	friend bool QStringListModel_virtualbase_setItemData(VirtualQStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QStringListModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QStringListModel_virtualbase_sort(VirtualQStringListModel* self, int column, int order);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QStringListModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QStringListModel_virtualbase_supportedDropActions(const VirtualQStringListModel* self);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QStringListModel::index(row, column, parent);
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

	friend QModelIndex* QStringListModel_virtualbase_index(const VirtualQStringListModel* self, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QStringListModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QStringListModel_virtualbase_dropMimeData(VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QStringListModel::headerData(section, orientation, role);
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

	friend QVariant* QStringListModel_virtualbase_headerData(const VirtualQStringListModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QStringListModel::setHeaderData(section, orientation, value, role);
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

	friend bool QStringListModel_virtualbase_setHeaderData(VirtualQStringListModel* self, int section, int orientation, QVariant* value, int role);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QStringListModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QStringListModel_virtualbase_mimeTypes(const VirtualQStringListModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QStringListModel::mimeData(indexes);
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

	friend QMimeData* QStringListModel_virtualbase_mimeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QStringListModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QStringListModel_virtualbase_canDropMimeData(const VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QStringListModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QStringListModel_virtualbase_supportedDragActions(const VirtualQStringListModel* self);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QStringListModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_insertColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QStringListModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_removeColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QStringListModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QStringListModel_virtualbase_moveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QStringListModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QStringListModel_virtualbase_fetchMore(VirtualQStringListModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QStringListModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_canFetchMore(const VirtualQStringListModel* self, QModelIndex* parent);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QStringListModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QStringListModel_virtualbase_buddy(const VirtualQStringListModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QStringListModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QStringListModel_virtualbase_match(const VirtualQStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QStringListModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStringListModel_virtualbase_span(const VirtualQStringListModel* self, QModelIndex* index);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QStringListModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QStringListModel_virtualbase_roleNames(const VirtualQStringListModel* self);

	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QStringListModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(this, sigval1, sigval2);

	}

	friend void QStringListModel_virtualbase_multiData(const VirtualQStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QStringListModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_submit(VirtualQStringListModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QStringListModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QStringListModel_virtualbase_revert(VirtualQStringListModel* self);

	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QStringListModel::resetInternalData();
			return;
		}


		vtbl->resetInternalData(this);

	}

	friend void QStringListModel_virtualbase_resetInternalData(VirtualQStringListModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStringListModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_event(VirtualQStringListModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStringListModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStringListModel_virtualbase_eventFilter(VirtualQStringListModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStringListModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QStringListModel_virtualbase_timerEvent(VirtualQStringListModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStringListModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QStringListModel_virtualbase_childEvent(VirtualQStringListModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStringListModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QStringListModel_virtualbase_customEvent(VirtualQStringListModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStringListModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QStringListModel_virtualbase_connectNotify(VirtualQStringListModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStringListModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QStringListModel_virtualbase_disconnectNotify(VirtualQStringListModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QModelIndex* QStringListModel_protectedbase_createIndex(const VirtualQStringListModel* self, int row, int column);
	friend void QStringListModel_protectedbase_encodeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QStringListModel_protectedbase_decodeData(VirtualQStringListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QStringListModel_protectedbase_beginInsertRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
	friend void QStringListModel_protectedbase_endInsertRows(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_beginRemoveRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
	friend void QStringListModel_protectedbase_endRemoveRows(VirtualQStringListModel* self);
	friend bool QStringListModel_protectedbase_beginMoveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QStringListModel_protectedbase_endMoveRows(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_beginInsertColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
	friend void QStringListModel_protectedbase_endInsertColumns(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_beginRemoveColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last);
	friend void QStringListModel_protectedbase_endRemoveColumns(VirtualQStringListModel* self);
	friend bool QStringListModel_protectedbase_beginMoveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QStringListModel_protectedbase_endMoveColumns(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_beginResetModel(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_endResetModel(VirtualQStringListModel* self);
	friend void QStringListModel_protectedbase_changePersistentIndex(VirtualQStringListModel* self, QModelIndex* from, QModelIndex* to);
	friend void QStringListModel_protectedbase_changePersistentIndexList(VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QStringListModel_protectedbase_persistentIndexList(const VirtualQStringListModel* self);
	friend QObject* QStringListModel_protectedbase_sender(const VirtualQStringListModel* self);
	friend int QStringListModel_protectedbase_senderSignalIndex(const VirtualQStringListModel* self);
	friend int QStringListModel_protectedbase_receivers(const VirtualQStringListModel* self, const char* signal);
	friend bool QStringListModel_protectedbase_isSignalConnected(const VirtualQStringListModel* self, QMetaMethod* signal);
};

VirtualQStringListModel* QStringListModel_new(const QStringListModel_VTable* vtbl, void* vdata) {
	return new VirtualQStringListModel(vtbl, vdata);
}

VirtualQStringListModel* QStringListModel_new2(const QStringListModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQStringListModel(vtbl, vdata, strings_QList);
}

VirtualQStringListModel* QStringListModel_new3(const QStringListModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQStringListModel(vtbl, vdata, parent);
}

VirtualQStringListModel* QStringListModel_new4(const QStringListModel_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings, QObject* parent) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQStringListModel(vtbl, vdata, strings_QList, parent);
}

void QStringListModel_virtbase(QStringListModel* src, QAbstractListModel** outptr_QAbstractListModel) {
	*outptr_QAbstractListModel = static_cast<QAbstractListModel*>(src);
}

QMetaObject* QStringListModel_metaObject(const QStringListModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStringListModel_metacast(QStringListModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStringListModel_metacall(QStringListModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStringListModel_tr(const char* s) {
	QString _ret = QStringListModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStringListModel_rowCount(const QStringListModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

QModelIndex* QStringListModel_sibling(const QStringListModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QVariant* QStringListModel_data(const QStringListModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QStringListModel_setData(QStringListModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

bool QStringListModel_clearItemData(QStringListModel* self, QModelIndex* index) {
	return self->clearItemData(*index);
}

int QStringListModel_flags(const QStringListModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

bool QStringListModel_insertRows(QStringListModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStringListModel_removeRows(QStringListModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStringListModel_moveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

struct miqt_map /* of int to QVariant* */  QStringListModel_itemData(const QStringListModel* self, QModelIndex* index) {
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

bool QStringListModel_setItemData(QStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

void QStringListModel_sort(QStringListModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QStringListModel_stringList(const QStringListModel* self) {
	QStringList _ret = self->stringList();
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

void QStringListModel_setStringList(QStringListModel* self, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	self->setStringList(strings_QList);
}

int QStringListModel_supportedDropActions(const QStringListModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_string QStringListModel_tr2(const char* s, const char* c) {
	QString _ret = QStringListModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStringListModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QStringListModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStringListModel_virtualbase_metaObject(const VirtualQStringListModel* self) {

	return (QMetaObject*) self->QStringListModel::metaObject();
}

void* QStringListModel_virtualbase_metacast(VirtualQStringListModel* self, const char* param1) {

	return self->QStringListModel::qt_metacast(param1);
}

int QStringListModel_virtualbase_metacall(VirtualQStringListModel* self, int param1, int param2, void** param3) {

	return self->QStringListModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QStringListModel_virtualbase_rowCount(const VirtualQStringListModel* self, QModelIndex* parent) {

	return self->QStringListModel::rowCount(*parent);
}

QModelIndex* QStringListModel_virtualbase_sibling(const VirtualQStringListModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QStringListModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QVariant* QStringListModel_virtualbase_data(const VirtualQStringListModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QStringListModel::data(*index, static_cast<int>(role)));
}

bool QStringListModel_virtualbase_setData(VirtualQStringListModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QStringListModel::setData(*index, *value, static_cast<int>(role));
}

bool QStringListModel_virtualbase_clearItemData(VirtualQStringListModel* self, QModelIndex* index) {

	return self->QStringListModel::clearItemData(*index);
}

int QStringListModel_virtualbase_flags(const VirtualQStringListModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QStringListModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QStringListModel_virtualbase_insertRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent) {

	return self->QStringListModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStringListModel_virtualbase_removeRows(VirtualQStringListModel* self, int row, int count, QModelIndex* parent) {

	return self->QStringListModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStringListModel_virtualbase_moveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QStringListModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

struct miqt_map /* of int to QVariant* */  QStringListModel_virtualbase_itemData(const VirtualQStringListModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QStringListModel::itemData(*index);
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

bool QStringListModel_virtualbase_setItemData(VirtualQStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QStringListModel::setItemData(*index, roles_QMap);
}

void QStringListModel_virtualbase_sort(VirtualQStringListModel* self, int column, int order) {

	self->QStringListModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

int QStringListModel_virtualbase_supportedDropActions(const VirtualQStringListModel* self) {

	Qt::DropActions _ret = self->QStringListModel::supportedDropActions();
	return static_cast<int>(_ret);
}

QModelIndex* QStringListModel_virtualbase_index(const VirtualQStringListModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QStringListModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

bool QStringListModel_virtualbase_dropMimeData(VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QStringListModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

QVariant* QStringListModel_virtualbase_headerData(const VirtualQStringListModel* self, int section, int orientation, int role) {

	return new QVariant(self->QStringListModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QStringListModel_virtualbase_setHeaderData(VirtualQStringListModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QStringListModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_array /* of struct miqt_string */  QStringListModel_virtualbase_mimeTypes(const VirtualQStringListModel* self) {

	QStringList _ret = self->QStringListModel::mimeTypes();
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

QMimeData* QStringListModel_virtualbase_mimeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QStringListModel::mimeData(indexes_QList);
}

bool QStringListModel_virtualbase_canDropMimeData(const VirtualQStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QStringListModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QStringListModel_virtualbase_supportedDragActions(const VirtualQStringListModel* self) {

	Qt::DropActions _ret = self->QStringListModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QStringListModel_virtualbase_insertColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent) {

	return self->QStringListModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QStringListModel_virtualbase_removeColumns(VirtualQStringListModel* self, int column, int count, QModelIndex* parent) {

	return self->QStringListModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QStringListModel_virtualbase_moveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QStringListModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QStringListModel_virtualbase_fetchMore(VirtualQStringListModel* self, QModelIndex* parent) {

	self->QStringListModel::fetchMore(*parent);
}

bool QStringListModel_virtualbase_canFetchMore(const VirtualQStringListModel* self, QModelIndex* parent) {

	return self->QStringListModel::canFetchMore(*parent);
}

QModelIndex* QStringListModel_virtualbase_buddy(const VirtualQStringListModel* self, QModelIndex* index) {

	return new QModelIndex(self->QStringListModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QStringListModel_virtualbase_match(const VirtualQStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QStringListModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QStringListModel_virtualbase_span(const VirtualQStringListModel* self, QModelIndex* index) {

	return new QSize(self->QStringListModel::span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QStringListModel_virtualbase_roleNames(const VirtualQStringListModel* self) {

	QHash<int, QByteArray> _ret = self->QStringListModel::roleNames();
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

void QStringListModel_virtualbase_multiData(const VirtualQStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	self->QStringListModel::multiData(*index, *roleDataSpan);
}

bool QStringListModel_virtualbase_submit(VirtualQStringListModel* self) {

	return self->QStringListModel::submit();
}

void QStringListModel_virtualbase_revert(VirtualQStringListModel* self) {

	self->QStringListModel::revert();
}

void QStringListModel_virtualbase_resetInternalData(VirtualQStringListModel* self) {

	self->QStringListModel::resetInternalData();
}

bool QStringListModel_virtualbase_event(VirtualQStringListModel* self, QEvent* event) {

	return self->QStringListModel::event(event);
}

bool QStringListModel_virtualbase_eventFilter(VirtualQStringListModel* self, QObject* watched, QEvent* event) {

	return self->QStringListModel::eventFilter(watched, event);
}

void QStringListModel_virtualbase_timerEvent(VirtualQStringListModel* self, QTimerEvent* event) {

	self->QStringListModel::timerEvent(event);
}

void QStringListModel_virtualbase_childEvent(VirtualQStringListModel* self, QChildEvent* event) {

	self->QStringListModel::childEvent(event);
}

void QStringListModel_virtualbase_customEvent(VirtualQStringListModel* self, QEvent* event) {

	self->QStringListModel::customEvent(event);
}

void QStringListModel_virtualbase_connectNotify(VirtualQStringListModel* self, QMetaMethod* signal) {

	self->QStringListModel::connectNotify(*signal);
}

void QStringListModel_virtualbase_disconnectNotify(VirtualQStringListModel* self, QMetaMethod* signal) {

	self->QStringListModel::disconnectNotify(*signal);
}

const QMetaObject* QStringListModel_staticMetaObject() { return &QStringListModel::staticMetaObject; }

const QStringListModel_VTable* QStringListModel_vtbl(const VirtualQStringListModel* self) { return self->vtbl; }
void* QStringListModel_vdata(const VirtualQStringListModel* self) { return self->vdata; }
void QStringListModel_setVdata(VirtualQStringListModel* self, void* vdata) { self->vdata = vdata; }

QModelIndex* QStringListModel_protectedbase_createIndex(const VirtualQStringListModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QStringListModel_protectedbase_encodeData(const VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QStringListModel_protectedbase_decodeData(VirtualQStringListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QStringListModel_protectedbase_beginInsertRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QStringListModel_protectedbase_endInsertRows(VirtualQStringListModel* self) {
	self->endInsertRows();
}

void QStringListModel_protectedbase_beginRemoveRows(VirtualQStringListModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QStringListModel_protectedbase_endRemoveRows(VirtualQStringListModel* self) {
	self->endRemoveRows();
}

bool QStringListModel_protectedbase_beginMoveRows(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QStringListModel_protectedbase_endMoveRows(VirtualQStringListModel* self) {
	self->endMoveRows();
}

void QStringListModel_protectedbase_beginInsertColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QStringListModel_protectedbase_endInsertColumns(VirtualQStringListModel* self) {
	self->endInsertColumns();
}

void QStringListModel_protectedbase_beginRemoveColumns(VirtualQStringListModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QStringListModel_protectedbase_endRemoveColumns(VirtualQStringListModel* self) {
	self->endRemoveColumns();
}

bool QStringListModel_protectedbase_beginMoveColumns(VirtualQStringListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QStringListModel_protectedbase_endMoveColumns(VirtualQStringListModel* self) {
	self->endMoveColumns();
}

void QStringListModel_protectedbase_beginResetModel(VirtualQStringListModel* self) {
	self->beginResetModel();
}

void QStringListModel_protectedbase_endResetModel(VirtualQStringListModel* self) {
	self->endResetModel();
}

void QStringListModel_protectedbase_changePersistentIndex(VirtualQStringListModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QStringListModel_protectedbase_changePersistentIndexList(VirtualQStringListModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QStringListModel_protectedbase_persistentIndexList(const VirtualQStringListModel* self) {
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

QObject* QStringListModel_protectedbase_sender(const VirtualQStringListModel* self) {
	return self->sender();
}

int QStringListModel_protectedbase_senderSignalIndex(const VirtualQStringListModel* self) {
	return self->senderSignalIndex();
}

int QStringListModel_protectedbase_receivers(const VirtualQStringListModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QStringListModel_protectedbase_isSignalConnected(const VirtualQStringListModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStringListModel_delete(QStringListModel* self) {
	delete self;
}

