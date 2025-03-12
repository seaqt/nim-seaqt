#include <QAbstractFileIconProvider>
#include <QAbstractItemModel>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QDateTime>
#include <QDir>
#include <QEvent>
#include <QFileInfo>
#include <QFileSystemModel>
#include <QIcon>
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
#include <qfilesystemmodel.h>
#include "gen_qfilesystemmodel.h"
class VirtualQFileSystemModel final : public QFileSystemModel {
	const QFileSystemModel_VTable* vtbl;
	void* vdata;
public:
	friend const QFileSystemModel_VTable* QFileSystemModel_vtbl(const VirtualQFileSystemModel* self);
	friend void* QFileSystemModel_vdata(const VirtualQFileSystemModel* self);
	friend void QFileSystemModel_setVdata(VirtualQFileSystemModel* self, void* vdata);

	VirtualQFileSystemModel(const QFileSystemModel_VTable* vtbl, void* vdata): QFileSystemModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQFileSystemModel(const QFileSystemModel_VTable* vtbl, void* vdata, QObject* parent): QFileSystemModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFileSystemModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSystemModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFileSystemModel_virtualbase_metaObject(const VirtualQFileSystemModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSystemModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFileSystemModel_virtualbase_metacast(VirtualQFileSystemModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSystemModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_metacall(VirtualQFileSystemModel* self, int param1, int param2, void** param3);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QFileSystemModel::index(row, column, parent);
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

	friend QModelIndex* QFileSystemModel_virtualbase_index(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QFileSystemModel::parent(child);
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QFileSystemModel_virtualbase_parent(const VirtualQFileSystemModel* self, QModelIndex* child);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QFileSystemModel::sibling(row, column, idx);
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

	friend QModelIndex* QFileSystemModel_virtualbase_sibling(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* idx);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QFileSystemModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_hasChildren(const VirtualQFileSystemModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QFileSystemModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_canFetchMore(const VirtualQFileSystemModel* self, QModelIndex* parent);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QFileSystemModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_fetchMore(VirtualQFileSystemModel* self, QModelIndex* parent);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QFileSystemModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_rowCount(const VirtualQFileSystemModel* self, QModelIndex* parent);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QFileSystemModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_columnCount(const VirtualQFileSystemModel* self, QModelIndex* parent);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QFileSystemModel::data(index, role);
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

	friend QVariant* QFileSystemModel_virtualbase_data(const VirtualQFileSystemModel* self, QModelIndex* index, int role);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QFileSystemModel::setData(index, value, role);
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

	friend bool QFileSystemModel_virtualbase_setData(VirtualQFileSystemModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QFileSystemModel::headerData(section, orientation, role);
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

	friend QVariant* QFileSystemModel_virtualbase_headerData(const VirtualQFileSystemModel* self, int section, int orientation, int role);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QFileSystemModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_flags(const VirtualQFileSystemModel* self, QModelIndex* index);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QFileSystemModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QFileSystemModel_virtualbase_sort(VirtualQFileSystemModel* self, int column, int order);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QFileSystemModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QFileSystemModel_virtualbase_mimeTypes(const VirtualQFileSystemModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QFileSystemModel::mimeData(indexes);
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

	friend QMimeData* QFileSystemModel_virtualbase_mimeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QFileSystemModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QFileSystemModel_virtualbase_dropMimeData(VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QFileSystemModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_supportedDropActions(const VirtualQFileSystemModel* self);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QFileSystemModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_virtualbase_roleNames(const VirtualQFileSystemModel* self);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSystemModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_timerEvent(VirtualQFileSystemModel* self, QTimerEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSystemModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_event(VirtualQFileSystemModel* self, QEvent* event);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QFileSystemModel::setHeaderData(section, orientation, value, role);
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

	friend bool QFileSystemModel_virtualbase_setHeaderData(VirtualQFileSystemModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QFileSystemModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QFileSystemModel_virtualbase_itemData(const VirtualQFileSystemModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QFileSystemModel::setItemData(index, roles);
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

	friend bool QFileSystemModel_virtualbase_setItemData(VirtualQFileSystemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QFileSystemModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->clearItemData(this, sigval1);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_clearItemData(VirtualQFileSystemModel* self, QModelIndex* index);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QFileSystemModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QFileSystemModel_virtualbase_canDropMimeData(const VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QFileSystemModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QFileSystemModel_virtualbase_supportedDragActions(const VirtualQFileSystemModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QFileSystemModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_insertRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QFileSystemModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_insertColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QFileSystemModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_removeRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QFileSystemModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_removeColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QFileSystemModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QFileSystemModel_virtualbase_moveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QFileSystemModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QFileSystemModel_virtualbase_moveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QFileSystemModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QFileSystemModel_virtualbase_buddy(const VirtualQFileSystemModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QFileSystemModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QFileSystemModel_virtualbase_match(const VirtualQFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QFileSystemModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFileSystemModel_virtualbase_span(const VirtualQFileSystemModel* self, QModelIndex* index);

	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QFileSystemModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(this, sigval1, sigval2);

	}

	friend void QFileSystemModel_virtualbase_multiData(const VirtualQFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QFileSystemModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_submit(VirtualQFileSystemModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QFileSystemModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QFileSystemModel_virtualbase_revert(VirtualQFileSystemModel* self);

	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QFileSystemModel::resetInternalData();
			return;
		}


		vtbl->resetInternalData(this);

	}

	friend void QFileSystemModel_virtualbase_resetInternalData(VirtualQFileSystemModel* self);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSystemModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFileSystemModel_virtualbase_eventFilter(VirtualQFileSystemModel* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSystemModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_childEvent(VirtualQFileSystemModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSystemModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_customEvent(VirtualQFileSystemModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSystemModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_connectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSystemModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFileSystemModel_virtualbase_disconnectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QModelIndex* QFileSystemModel_protectedbase_createIndex(const VirtualQFileSystemModel* self, int row, int column);
	friend void QFileSystemModel_protectedbase_encodeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QFileSystemModel_protectedbase_decodeData(VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QFileSystemModel_protectedbase_beginInsertRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
	friend void QFileSystemModel_protectedbase_endInsertRows(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_beginRemoveRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
	friend void QFileSystemModel_protectedbase_endRemoveRows(VirtualQFileSystemModel* self);
	friend bool QFileSystemModel_protectedbase_beginMoveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QFileSystemModel_protectedbase_endMoveRows(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_beginInsertColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
	friend void QFileSystemModel_protectedbase_endInsertColumns(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_beginRemoveColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last);
	friend void QFileSystemModel_protectedbase_endRemoveColumns(VirtualQFileSystemModel* self);
	friend bool QFileSystemModel_protectedbase_beginMoveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QFileSystemModel_protectedbase_endMoveColumns(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_beginResetModel(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_endResetModel(VirtualQFileSystemModel* self);
	friend void QFileSystemModel_protectedbase_changePersistentIndex(VirtualQFileSystemModel* self, QModelIndex* from, QModelIndex* to);
	friend void QFileSystemModel_protectedbase_changePersistentIndexList(VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QFileSystemModel_protectedbase_persistentIndexList(const VirtualQFileSystemModel* self);
	friend QObject* QFileSystemModel_protectedbase_sender(const VirtualQFileSystemModel* self);
	friend int QFileSystemModel_protectedbase_senderSignalIndex(const VirtualQFileSystemModel* self);
	friend int QFileSystemModel_protectedbase_receivers(const VirtualQFileSystemModel* self, const char* signal);
	friend bool QFileSystemModel_protectedbase_isSignalConnected(const VirtualQFileSystemModel* self, QMetaMethod* signal);
};

VirtualQFileSystemModel* QFileSystemModel_new(const QFileSystemModel_VTable* vtbl, void* vdata) {
	return new VirtualQFileSystemModel(vtbl, vdata);
}

VirtualQFileSystemModel* QFileSystemModel_new2(const QFileSystemModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQFileSystemModel(vtbl, vdata, parent);
}

void QFileSystemModel_virtbase(QFileSystemModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QFileSystemModel_metaObject(const QFileSystemModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileSystemModel_metacast(QFileSystemModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileSystemModel_metacall(QFileSystemModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFileSystemModel_tr(const char* s) {
	QString _ret = QFileSystemModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileSystemModel_rootPathChanged(QFileSystemModel* self, struct miqt_string newPath) {
	QString newPath_QString = QString::fromUtf8(newPath.data, newPath.len);
	self->rootPathChanged(newPath_QString);
}

void QFileSystemModel_connect_rootPathChanged(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& newPath) {
			const QString newPath_ret = newPath;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray newPath_b = newPath_ret.toUtf8();
			struct miqt_string newPath_ms;
			newPath_ms.len = newPath_b.length();
			newPath_ms.data = static_cast<char*>(malloc(newPath_ms.len));
			memcpy(newPath_ms.data, newPath_b.data(), newPath_ms.len);
			struct miqt_string sigval1 = newPath_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileSystemModel::connect(self, static_cast<void (QFileSystemModel::*)(const QString&)>(&QFileSystemModel::rootPathChanged), self, local_caller{slot, callback, release});
}

void QFileSystemModel_fileRenamed(QFileSystemModel* self, struct miqt_string path, struct miqt_string oldName, struct miqt_string newName) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QString oldName_QString = QString::fromUtf8(oldName.data, oldName.len);
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	self->fileRenamed(path_QString, oldName_QString, newName_QString);
}

void QFileSystemModel_connect_fileRenamed(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, struct miqt_string, struct miqt_string);
		void operator()(const QString& path, const QString& oldName, const QString& newName) {
			const QString path_ret = path;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray path_b = path_ret.toUtf8();
			struct miqt_string path_ms;
			path_ms.len = path_b.length();
			path_ms.data = static_cast<char*>(malloc(path_ms.len));
			memcpy(path_ms.data, path_b.data(), path_ms.len);
			struct miqt_string sigval1 = path_ms;
			const QString oldName_ret = oldName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray oldName_b = oldName_ret.toUtf8();
			struct miqt_string oldName_ms;
			oldName_ms.len = oldName_b.length();
			oldName_ms.data = static_cast<char*>(malloc(oldName_ms.len));
			memcpy(oldName_ms.data, oldName_b.data(), oldName_ms.len);
			struct miqt_string sigval2 = oldName_ms;
			const QString newName_ret = newName;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray newName_b = newName_ret.toUtf8();
			struct miqt_string newName_ms;
			newName_ms.len = newName_b.length();
			newName_ms.data = static_cast<char*>(malloc(newName_ms.len));
			memcpy(newName_ms.data, newName_b.data(), newName_ms.len);
			struct miqt_string sigval3 = newName_ms;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQFileSystemModel::connect(self, static_cast<void (QFileSystemModel::*)(const QString&, const QString&, const QString&)>(&QFileSystemModel::fileRenamed), self, local_caller{slot, callback, release});
}

void QFileSystemModel_directoryLoaded(QFileSystemModel* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->directoryLoaded(path_QString);
}

void QFileSystemModel_connect_directoryLoaded(VirtualQFileSystemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& path) {
			const QString path_ret = path;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray path_b = path_ret.toUtf8();
			struct miqt_string path_ms;
			path_ms.len = path_b.length();
			path_ms.data = static_cast<char*>(malloc(path_ms.len));
			memcpy(path_ms.data, path_b.data(), path_ms.len);
			struct miqt_string sigval1 = path_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileSystemModel::connect(self, static_cast<void (QFileSystemModel::*)(const QString&)>(&QFileSystemModel::directoryLoaded), self, local_caller{slot, callback, release});
}

QModelIndex* QFileSystemModel_index(const QFileSystemModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QFileSystemModel_indexWithPath(const QFileSystemModel* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QModelIndex(self->index(path_QString));
}

QModelIndex* QFileSystemModel_parent(const QFileSystemModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

QModelIndex* QFileSystemModel_sibling(const QFileSystemModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QFileSystemModel_hasChildren(const QFileSystemModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

bool QFileSystemModel_canFetchMore(const QFileSystemModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

void QFileSystemModel_fetchMore(QFileSystemModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

int QFileSystemModel_rowCount(const QFileSystemModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QFileSystemModel_columnCount(const QFileSystemModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

QVariant* QFileSystemModel_myComputer(const QFileSystemModel* self) {
	return new QVariant(self->myComputer());
}

QVariant* QFileSystemModel_data(const QFileSystemModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QFileSystemModel_setData(QFileSystemModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QVariant* QFileSystemModel_headerData(const QFileSystemModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

int QFileSystemModel_flags(const QFileSystemModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

void QFileSystemModel_sort(QFileSystemModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QFileSystemModel_mimeTypes(const QFileSystemModel* self) {
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

QMimeData* QFileSystemModel_mimeData(const QFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QFileSystemModel_dropMimeData(QFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QFileSystemModel_supportedDropActions(const QFileSystemModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_roleNames(const QFileSystemModel* self) {
	QHash<int, QByteArray> _ret = self->roleNames();
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

QModelIndex* QFileSystemModel_setRootPath(QFileSystemModel* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QModelIndex(self->setRootPath(path_QString));
}

struct miqt_string QFileSystemModel_rootPath(const QFileSystemModel* self) {
	QString _ret = self->rootPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDir* QFileSystemModel_rootDirectory(const QFileSystemModel* self) {
	return new QDir(self->rootDirectory());
}

void QFileSystemModel_setIconProvider(QFileSystemModel* self, QAbstractFileIconProvider* provider) {
	self->setIconProvider(provider);
}

QAbstractFileIconProvider* QFileSystemModel_iconProvider(const QFileSystemModel* self) {
	return self->iconProvider();
}

void QFileSystemModel_setFilter(QFileSystemModel* self, int filters) {
	self->setFilter(static_cast<QDir::Filters>(filters));
}

int QFileSystemModel_filter(const QFileSystemModel* self) {
	QDir::Filters _ret = self->filter();
	return static_cast<int>(_ret);
}

void QFileSystemModel_setResolveSymlinks(QFileSystemModel* self, bool enable) {
	self->setResolveSymlinks(enable);
}

bool QFileSystemModel_resolveSymlinks(const QFileSystemModel* self) {
	return self->resolveSymlinks();
}

void QFileSystemModel_setReadOnly(QFileSystemModel* self, bool enable) {
	self->setReadOnly(enable);
}

bool QFileSystemModel_isReadOnly(const QFileSystemModel* self) {
	return self->isReadOnly();
}

void QFileSystemModel_setNameFilterDisables(QFileSystemModel* self, bool enable) {
	self->setNameFilterDisables(enable);
}

bool QFileSystemModel_nameFilterDisables(const QFileSystemModel* self) {
	return self->nameFilterDisables();
}

void QFileSystemModel_setNameFilters(QFileSystemModel* self, struct miqt_array /* of struct miqt_string */  filters) {
	QStringList filters_QList;
	filters_QList.reserve(filters.len);
	struct miqt_string* filters_arr = static_cast<struct miqt_string*>(filters.data);
	for(size_t i = 0; i < filters.len; ++i) {
		QString filters_arr_i_QString = QString::fromUtf8(filters_arr[i].data, filters_arr[i].len);
		filters_QList.push_back(filters_arr_i_QString);
	}
	self->setNameFilters(filters_QList);
}

struct miqt_array /* of struct miqt_string */  QFileSystemModel_nameFilters(const QFileSystemModel* self) {
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

void QFileSystemModel_setOption(QFileSystemModel* self, int option) {
	self->setOption(static_cast<QFileSystemModel::Option>(option));
}

bool QFileSystemModel_testOption(const QFileSystemModel* self, int option) {
	return self->testOption(static_cast<QFileSystemModel::Option>(option));
}

void QFileSystemModel_setOptions(QFileSystemModel* self, int options) {
	self->setOptions(static_cast<QFileSystemModel::Options>(options));
}

int QFileSystemModel_options(const QFileSystemModel* self) {
	QFileSystemModel::Options _ret = self->options();
	return static_cast<int>(_ret);
}

struct miqt_string QFileSystemModel_filePath(const QFileSystemModel* self, QModelIndex* index) {
	QString _ret = self->filePath(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFileSystemModel_isDir(const QFileSystemModel* self, QModelIndex* index) {
	return self->isDir(*index);
}

long long QFileSystemModel_size(const QFileSystemModel* self, QModelIndex* index) {
	qint64 _ret = self->size(*index);
	return static_cast<long long>(_ret);
}

struct miqt_string QFileSystemModel_type(const QFileSystemModel* self, QModelIndex* index) {
	QString _ret = self->type(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDateTime* QFileSystemModel_lastModified(const QFileSystemModel* self, QModelIndex* index) {
	return new QDateTime(self->lastModified(*index));
}

QModelIndex* QFileSystemModel_mkdir(QFileSystemModel* self, QModelIndex* parent, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QModelIndex(self->mkdir(*parent, name_QString));
}

bool QFileSystemModel_rmdir(QFileSystemModel* self, QModelIndex* index) {
	return self->rmdir(*index);
}

struct miqt_string QFileSystemModel_fileName(const QFileSystemModel* self, QModelIndex* index) {
	QString _ret = self->fileName(*index);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QFileSystemModel_fileIcon(const QFileSystemModel* self, QModelIndex* index) {
	return new QIcon(self->fileIcon(*index));
}

int QFileSystemModel_permissions(const QFileSystemModel* self, QModelIndex* index) {
	QFile::Permissions _ret = self->permissions(*index);
	return static_cast<int>(_ret);
}

QFileInfo* QFileSystemModel_fileInfo(const QFileSystemModel* self, QModelIndex* index) {
	return new QFileInfo(self->fileInfo(*index));
}

bool QFileSystemModel_remove(QFileSystemModel* self, QModelIndex* index) {
	return self->remove(*index);
}

struct miqt_string QFileSystemModel_tr2(const char* s, const char* c) {
	QString _ret = QFileSystemModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSystemModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QFileSystemModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QFileSystemModel_index2(const QFileSystemModel* self, struct miqt_string path, int column) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QModelIndex(self->index(path_QString, static_cast<int>(column)));
}

QVariant* QFileSystemModel_myComputer1(const QFileSystemModel* self, int role) {
	return new QVariant(self->myComputer(static_cast<int>(role)));
}

void QFileSystemModel_setOption2(QFileSystemModel* self, int option, bool on) {
	self->setOption(static_cast<QFileSystemModel::Option>(option), on);
}

QMetaObject* QFileSystemModel_virtualbase_metaObject(const VirtualQFileSystemModel* self) {

	return (QMetaObject*) self->QFileSystemModel::metaObject();
}

void* QFileSystemModel_virtualbase_metacast(VirtualQFileSystemModel* self, const char* param1) {

	return self->QFileSystemModel::qt_metacast(param1);
}

int QFileSystemModel_virtualbase_metacall(VirtualQFileSystemModel* self, int param1, int param2, void** param3) {

	return self->QFileSystemModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QFileSystemModel_virtualbase_index(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QFileSystemModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QFileSystemModel_virtualbase_parent(const VirtualQFileSystemModel* self, QModelIndex* child) {

	return new QModelIndex(self->QFileSystemModel::parent(*child));
}

QModelIndex* QFileSystemModel_virtualbase_sibling(const VirtualQFileSystemModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QFileSystemModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QFileSystemModel_virtualbase_hasChildren(const VirtualQFileSystemModel* self, QModelIndex* parent) {

	return self->QFileSystemModel::hasChildren(*parent);
}

bool QFileSystemModel_virtualbase_canFetchMore(const VirtualQFileSystemModel* self, QModelIndex* parent) {

	return self->QFileSystemModel::canFetchMore(*parent);
}

void QFileSystemModel_virtualbase_fetchMore(VirtualQFileSystemModel* self, QModelIndex* parent) {

	self->QFileSystemModel::fetchMore(*parent);
}

int QFileSystemModel_virtualbase_rowCount(const VirtualQFileSystemModel* self, QModelIndex* parent) {

	return self->QFileSystemModel::rowCount(*parent);
}

int QFileSystemModel_virtualbase_columnCount(const VirtualQFileSystemModel* self, QModelIndex* parent) {

	return self->QFileSystemModel::columnCount(*parent);
}

QVariant* QFileSystemModel_virtualbase_data(const VirtualQFileSystemModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QFileSystemModel::data(*index, static_cast<int>(role)));
}

bool QFileSystemModel_virtualbase_setData(VirtualQFileSystemModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QFileSystemModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QFileSystemModel_virtualbase_headerData(const VirtualQFileSystemModel* self, int section, int orientation, int role) {

	return new QVariant(self->QFileSystemModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

int QFileSystemModel_virtualbase_flags(const VirtualQFileSystemModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QFileSystemModel::flags(*index);
	return static_cast<int>(_ret);
}

void QFileSystemModel_virtualbase_sort(VirtualQFileSystemModel* self, int column, int order) {

	self->QFileSystemModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QFileSystemModel_virtualbase_mimeTypes(const VirtualQFileSystemModel* self) {

	QStringList _ret = self->QFileSystemModel::mimeTypes();
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

QMimeData* QFileSystemModel_virtualbase_mimeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QFileSystemModel::mimeData(indexes_QList);
}

bool QFileSystemModel_virtualbase_dropMimeData(VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QFileSystemModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QFileSystemModel_virtualbase_supportedDropActions(const VirtualQFileSystemModel* self) {

	Qt::DropActions _ret = self->QFileSystemModel::supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_map /* of int to struct miqt_string */  QFileSystemModel_virtualbase_roleNames(const VirtualQFileSystemModel* self) {

	QHash<int, QByteArray> _ret = self->QFileSystemModel::roleNames();
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

void QFileSystemModel_virtualbase_timerEvent(VirtualQFileSystemModel* self, QTimerEvent* event) {

	self->QFileSystemModel::timerEvent(event);
}

bool QFileSystemModel_virtualbase_event(VirtualQFileSystemModel* self, QEvent* event) {

	return self->QFileSystemModel::event(event);
}

bool QFileSystemModel_virtualbase_setHeaderData(VirtualQFileSystemModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QFileSystemModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QFileSystemModel_virtualbase_itemData(const VirtualQFileSystemModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QFileSystemModel::itemData(*index);
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

bool QFileSystemModel_virtualbase_setItemData(VirtualQFileSystemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QFileSystemModel::setItemData(*index, roles_QMap);
}

bool QFileSystemModel_virtualbase_clearItemData(VirtualQFileSystemModel* self, QModelIndex* index) {

	return self->QFileSystemModel::clearItemData(*index);
}

bool QFileSystemModel_virtualbase_canDropMimeData(const VirtualQFileSystemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QFileSystemModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QFileSystemModel_virtualbase_supportedDragActions(const VirtualQFileSystemModel* self) {

	Qt::DropActions _ret = self->QFileSystemModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QFileSystemModel_virtualbase_insertRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent) {

	return self->QFileSystemModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QFileSystemModel_virtualbase_insertColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent) {

	return self->QFileSystemModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QFileSystemModel_virtualbase_removeRows(VirtualQFileSystemModel* self, int row, int count, QModelIndex* parent) {

	return self->QFileSystemModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QFileSystemModel_virtualbase_removeColumns(VirtualQFileSystemModel* self, int column, int count, QModelIndex* parent) {

	return self->QFileSystemModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QFileSystemModel_virtualbase_moveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QFileSystemModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QFileSystemModel_virtualbase_moveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QFileSystemModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

QModelIndex* QFileSystemModel_virtualbase_buddy(const VirtualQFileSystemModel* self, QModelIndex* index) {

	return new QModelIndex(self->QFileSystemModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QFileSystemModel_virtualbase_match(const VirtualQFileSystemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QFileSystemModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QFileSystemModel_virtualbase_span(const VirtualQFileSystemModel* self, QModelIndex* index) {

	return new QSize(self->QFileSystemModel::span(*index));
}

void QFileSystemModel_virtualbase_multiData(const VirtualQFileSystemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	self->QFileSystemModel::multiData(*index, *roleDataSpan);
}

bool QFileSystemModel_virtualbase_submit(VirtualQFileSystemModel* self) {

	return self->QFileSystemModel::submit();
}

void QFileSystemModel_virtualbase_revert(VirtualQFileSystemModel* self) {

	self->QFileSystemModel::revert();
}

void QFileSystemModel_virtualbase_resetInternalData(VirtualQFileSystemModel* self) {

	self->QFileSystemModel::resetInternalData();
}

bool QFileSystemModel_virtualbase_eventFilter(VirtualQFileSystemModel* self, QObject* watched, QEvent* event) {

	return self->QFileSystemModel::eventFilter(watched, event);
}

void QFileSystemModel_virtualbase_childEvent(VirtualQFileSystemModel* self, QChildEvent* event) {

	self->QFileSystemModel::childEvent(event);
}

void QFileSystemModel_virtualbase_customEvent(VirtualQFileSystemModel* self, QEvent* event) {

	self->QFileSystemModel::customEvent(event);
}

void QFileSystemModel_virtualbase_connectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal) {

	self->QFileSystemModel::connectNotify(*signal);
}

void QFileSystemModel_virtualbase_disconnectNotify(VirtualQFileSystemModel* self, QMetaMethod* signal) {

	self->QFileSystemModel::disconnectNotify(*signal);
}

const QMetaObject* QFileSystemModel_staticMetaObject() { return &QFileSystemModel::staticMetaObject; }

const QFileSystemModel_VTable* QFileSystemModel_vtbl(const VirtualQFileSystemModel* self) { return self->vtbl; }
void* QFileSystemModel_vdata(const VirtualQFileSystemModel* self) { return self->vdata; }
void QFileSystemModel_setVdata(VirtualQFileSystemModel* self, void* vdata) { self->vdata = vdata; }

QModelIndex* QFileSystemModel_protectedbase_createIndex(const VirtualQFileSystemModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QFileSystemModel_protectedbase_encodeData(const VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QFileSystemModel_protectedbase_decodeData(VirtualQFileSystemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QFileSystemModel_protectedbase_beginInsertRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QFileSystemModel_protectedbase_endInsertRows(VirtualQFileSystemModel* self) {
	self->endInsertRows();
}

void QFileSystemModel_protectedbase_beginRemoveRows(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QFileSystemModel_protectedbase_endRemoveRows(VirtualQFileSystemModel* self) {
	self->endRemoveRows();
}

bool QFileSystemModel_protectedbase_beginMoveRows(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QFileSystemModel_protectedbase_endMoveRows(VirtualQFileSystemModel* self) {
	self->endMoveRows();
}

void QFileSystemModel_protectedbase_beginInsertColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QFileSystemModel_protectedbase_endInsertColumns(VirtualQFileSystemModel* self) {
	self->endInsertColumns();
}

void QFileSystemModel_protectedbase_beginRemoveColumns(VirtualQFileSystemModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QFileSystemModel_protectedbase_endRemoveColumns(VirtualQFileSystemModel* self) {
	self->endRemoveColumns();
}

bool QFileSystemModel_protectedbase_beginMoveColumns(VirtualQFileSystemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QFileSystemModel_protectedbase_endMoveColumns(VirtualQFileSystemModel* self) {
	self->endMoveColumns();
}

void QFileSystemModel_protectedbase_beginResetModel(VirtualQFileSystemModel* self) {
	self->beginResetModel();
}

void QFileSystemModel_protectedbase_endResetModel(VirtualQFileSystemModel* self) {
	self->endResetModel();
}

void QFileSystemModel_protectedbase_changePersistentIndex(VirtualQFileSystemModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QFileSystemModel_protectedbase_changePersistentIndexList(VirtualQFileSystemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QFileSystemModel_protectedbase_persistentIndexList(const VirtualQFileSystemModel* self) {
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

QObject* QFileSystemModel_protectedbase_sender(const VirtualQFileSystemModel* self) {
	return self->sender();
}

int QFileSystemModel_protectedbase_senderSignalIndex(const VirtualQFileSystemModel* self) {
	return self->senderSignalIndex();
}

int QFileSystemModel_protectedbase_receivers(const VirtualQFileSystemModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QFileSystemModel_protectedbase_isSignalConnected(const VirtualQFileSystemModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFileSystemModel_delete(QFileSystemModel* self) {
	delete self;
}

