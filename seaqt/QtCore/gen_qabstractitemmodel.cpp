#include <QAbstractItemModel>
#include <QAbstractListModel>
#include <QAbstractTableModel>
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
#include <QObject>
#include <QPersistentModelIndex>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qabstractitemmodel.h>
#include "gen_qabstractitemmodel.h"
QModelIndex* QModelIndex_new() {
	return new QModelIndex();
}

QModelIndex* QModelIndex_new2(QModelIndex* param1) {
	return new QModelIndex(*param1);
}

int QModelIndex_row(const QModelIndex* self) {
	return self->row();
}

int QModelIndex_column(const QModelIndex* self) {
	return self->column();
}

uintptr_t QModelIndex_internalId(const QModelIndex* self) {
	quintptr _ret = self->internalId();
	return static_cast<uintptr_t>(_ret);
}

void* QModelIndex_internalPointer(const QModelIndex* self) {
	return self->internalPointer();
}

QModelIndex* QModelIndex_parent(const QModelIndex* self) {
	return new QModelIndex(self->parent());
}

QModelIndex* QModelIndex_sibling(const QModelIndex* self, int row, int column) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column)));
}

QModelIndex* QModelIndex_siblingAtColumn(const QModelIndex* self, int column) {
	return new QModelIndex(self->siblingAtColumn(static_cast<int>(column)));
}

QModelIndex* QModelIndex_siblingAtRow(const QModelIndex* self, int row) {
	return new QModelIndex(self->siblingAtRow(static_cast<int>(row)));
}

QModelIndex* QModelIndex_child(const QModelIndex* self, int row, int column) {
	return new QModelIndex(self->child(static_cast<int>(row), static_cast<int>(column)));
}

QVariant* QModelIndex_data(const QModelIndex* self) {
	return new QVariant(self->data());
}

int QModelIndex_flags(const QModelIndex* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QAbstractItemModel* QModelIndex_model(const QModelIndex* self) {
	return (QAbstractItemModel*) self->model();
}

bool QModelIndex_isValid(const QModelIndex* self) {
	return self->isValid();
}

bool QModelIndex_operatorEqual(const QModelIndex* self, QModelIndex* other) {
	return (*self == *other);
}

bool QModelIndex_operatorNotEqual(const QModelIndex* self, QModelIndex* other) {
	return (*self != *other);
}

bool QModelIndex_operatorLesser(const QModelIndex* self, QModelIndex* other) {
	return (*self < *other);
}

QVariant* QModelIndex_data1(const QModelIndex* self, int role) {
	return new QVariant(self->data(static_cast<int>(role)));
}

void QModelIndex_delete(QModelIndex* self) {
	delete self;
}

QPersistentModelIndex* QPersistentModelIndex_new() {
	return new QPersistentModelIndex();
}

QPersistentModelIndex* QPersistentModelIndex_new2(QModelIndex* index) {
	return new QPersistentModelIndex(*index);
}

QPersistentModelIndex* QPersistentModelIndex_new3(QPersistentModelIndex* other) {
	return new QPersistentModelIndex(*other);
}

bool QPersistentModelIndex_operatorLesser(const QPersistentModelIndex* self, QPersistentModelIndex* other) {
	return (*self < *other);
}

bool QPersistentModelIndex_operatorEqual(const QPersistentModelIndex* self, QPersistentModelIndex* other) {
	return (*self == *other);
}

bool QPersistentModelIndex_operatorNotEqual(const QPersistentModelIndex* self, QPersistentModelIndex* other) {
	return (*self != *other);
}

void QPersistentModelIndex_operatorAssign(QPersistentModelIndex* self, QPersistentModelIndex* other) {
	self->operator=(*other);
}

void QPersistentModelIndex_swap(QPersistentModelIndex* self, QPersistentModelIndex* other) {
	self->swap(*other);
}

bool QPersistentModelIndex_operatorEqualWithOther(const QPersistentModelIndex* self, QModelIndex* other) {
	return (*self == *other);
}

bool QPersistentModelIndex_operatorNotEqualWithOther(const QPersistentModelIndex* self, QModelIndex* other) {
	return (*self != *other);
}

void QPersistentModelIndex_operatorAssignWithOther(QPersistentModelIndex* self, QModelIndex* other) {
	self->operator=(*other);
}

QModelIndex* QPersistentModelIndex_ToConstQModelIndexBitwiseAnd(const QPersistentModelIndex* self) {
	const QModelIndex& _ret = self->operator const QModelIndex &();
	// Cast returned reference into pointer
	return const_cast<QModelIndex*>(&_ret);
}

int QPersistentModelIndex_row(const QPersistentModelIndex* self) {
	return self->row();
}

int QPersistentModelIndex_column(const QPersistentModelIndex* self) {
	return self->column();
}

void* QPersistentModelIndex_internalPointer(const QPersistentModelIndex* self) {
	return self->internalPointer();
}

uintptr_t QPersistentModelIndex_internalId(const QPersistentModelIndex* self) {
	quintptr _ret = self->internalId();
	return static_cast<uintptr_t>(_ret);
}

QModelIndex* QPersistentModelIndex_parent(const QPersistentModelIndex* self) {
	return new QModelIndex(self->parent());
}

QModelIndex* QPersistentModelIndex_sibling(const QPersistentModelIndex* self, int row, int column) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column)));
}

QModelIndex* QPersistentModelIndex_child(const QPersistentModelIndex* self, int row, int column) {
	return new QModelIndex(self->child(static_cast<int>(row), static_cast<int>(column)));
}

QVariant* QPersistentModelIndex_data(const QPersistentModelIndex* self) {
	return new QVariant(self->data());
}

int QPersistentModelIndex_flags(const QPersistentModelIndex* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QAbstractItemModel* QPersistentModelIndex_model(const QPersistentModelIndex* self) {
	return (QAbstractItemModel*) self->model();
}

bool QPersistentModelIndex_isValid(const QPersistentModelIndex* self) {
	return self->isValid();
}

QVariant* QPersistentModelIndex_data1(const QPersistentModelIndex* self, int role) {
	return new QVariant(self->data(static_cast<int>(role)));
}

void QPersistentModelIndex_delete(QPersistentModelIndex* self) {
	delete self;
}

class VirtualQAbstractItemModel final : public QAbstractItemModel {
	const QAbstractItemModel_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractItemModel_VTable* QAbstractItemModel_vtbl(const VirtualQAbstractItemModel* self);
	friend void* QAbstractItemModel_vdata(const VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_setVdata(VirtualQAbstractItemModel* self, void* vdata);

	VirtualQAbstractItemModel(const QAbstractItemModel_VTable* vtbl, void* vdata): QAbstractItemModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractItemModel(const QAbstractItemModel_VTable* vtbl, void* vdata, QObject* parent): QAbstractItemModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractItemModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractItemModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractItemModel_virtualbase_metaObject(const VirtualQAbstractItemModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractItemModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractItemModel_virtualbase_metacast(VirtualQAbstractItemModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractItemModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractItemModel_virtualbase_metacall(VirtualQAbstractItemModel* self, int param1, int param2, void** param3);

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

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QAbstractItemModel::sibling(row, column, idx);
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

	friend QModelIndex* QAbstractItemModel_virtualbase_sibling(const VirtualQAbstractItemModel* self, int row, int column, QModelIndex* idx);

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

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QAbstractItemModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_hasChildren(const VirtualQAbstractItemModel* self, QModelIndex* parent);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QVariant(); // Pure virtual, there is no base we can call
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

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QAbstractItemModel::setData(index, value, role);
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

	friend bool QAbstractItemModel_virtualbase_setData(VirtualQAbstractItemModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QAbstractItemModel::headerData(section, orientation, role);
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

	friend QVariant* QAbstractItemModel_virtualbase_headerData(const VirtualQAbstractItemModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QAbstractItemModel::setHeaderData(section, orientation, value, role);
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

	friend bool QAbstractItemModel_virtualbase_setHeaderData(VirtualQAbstractItemModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QAbstractItemModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QAbstractItemModel_virtualbase_itemData(const VirtualQAbstractItemModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QAbstractItemModel::setItemData(index, roles);
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

	friend bool QAbstractItemModel_virtualbase_setItemData(VirtualQAbstractItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QAbstractItemModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QAbstractItemModel_virtualbase_mimeTypes(const VirtualQAbstractItemModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QAbstractItemModel::mimeData(indexes);
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

	friend QMimeData* QAbstractItemModel_virtualbase_mimeData(const VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QAbstractItemModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractItemModel_virtualbase_canDropMimeData(const VirtualQAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QAbstractItemModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractItemModel_virtualbase_dropMimeData(VirtualQAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QAbstractItemModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractItemModel_virtualbase_supportedDropActions(const VirtualQAbstractItemModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QAbstractItemModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractItemModel_virtualbase_supportedDragActions(const VirtualQAbstractItemModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QAbstractItemModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_insertRows(VirtualQAbstractItemModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QAbstractItemModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_insertColumns(VirtualQAbstractItemModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QAbstractItemModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_removeRows(VirtualQAbstractItemModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QAbstractItemModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_removeColumns(VirtualQAbstractItemModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QAbstractItemModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QAbstractItemModel_virtualbase_moveRows(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QAbstractItemModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QAbstractItemModel_virtualbase_moveColumns(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QAbstractItemModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_fetchMore(VirtualQAbstractItemModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QAbstractItemModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_canFetchMore(const VirtualQAbstractItemModel* self, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QAbstractItemModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QAbstractItemModel_virtualbase_flags(const VirtualQAbstractItemModel* self, QModelIndex* index);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QAbstractItemModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QAbstractItemModel_virtualbase_sort(VirtualQAbstractItemModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QAbstractItemModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QAbstractItemModel_virtualbase_buddy(const VirtualQAbstractItemModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QAbstractItemModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QAbstractItemModel_virtualbase_match(const VirtualQAbstractItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QAbstractItemModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractItemModel_virtualbase_span(const VirtualQAbstractItemModel* self, QModelIndex* index);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QAbstractItemModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QAbstractItemModel_virtualbase_roleNames(const VirtualQAbstractItemModel* self);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QAbstractItemModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_submit(VirtualQAbstractItemModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QAbstractItemModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QAbstractItemModel_virtualbase_revert(VirtualQAbstractItemModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractItemModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_event(VirtualQAbstractItemModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractItemModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractItemModel_virtualbase_eventFilter(VirtualQAbstractItemModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractItemModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_timerEvent(VirtualQAbstractItemModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractItemModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_childEvent(VirtualQAbstractItemModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractItemModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_customEvent(VirtualQAbstractItemModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractItemModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_connectNotify(VirtualQAbstractItemModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractItemModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractItemModel_virtualbase_disconnectNotify(VirtualQAbstractItemModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractItemModel_protectedbase_resetInternalData(VirtualQAbstractItemModel* self);
	friend QModelIndex* QAbstractItemModel_protectedbase_createIndex(const VirtualQAbstractItemModel* self, int row, int column);
	friend QModelIndex* QAbstractItemModel_protectedbase_createIndex2(const VirtualQAbstractItemModel* self, int row, int column, uintptr_t id);
	friend void QAbstractItemModel_protectedbase_encodeData(const VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QAbstractItemModel_protectedbase_decodeData(VirtualQAbstractItemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QAbstractItemModel_protectedbase_beginInsertRows(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractItemModel_protectedbase_endInsertRows(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_beginRemoveRows(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractItemModel_protectedbase_endRemoveRows(VirtualQAbstractItemModel* self);
	friend bool QAbstractItemModel_protectedbase_beginMoveRows(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QAbstractItemModel_protectedbase_endMoveRows(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_beginInsertColumns(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractItemModel_protectedbase_endInsertColumns(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_beginRemoveColumns(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractItemModel_protectedbase_endRemoveColumns(VirtualQAbstractItemModel* self);
	friend bool QAbstractItemModel_protectedbase_beginMoveColumns(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QAbstractItemModel_protectedbase_endMoveColumns(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_beginResetModel(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_endResetModel(VirtualQAbstractItemModel* self);
	friend void QAbstractItemModel_protectedbase_changePersistentIndex(VirtualQAbstractItemModel* self, QModelIndex* from, QModelIndex* to);
	friend void QAbstractItemModel_protectedbase_changePersistentIndexList(VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QAbstractItemModel_protectedbase_persistentIndexList(const VirtualQAbstractItemModel* self);
	friend QModelIndex* QAbstractItemModel_protectedbase_createIndex3(const VirtualQAbstractItemModel* self, int row, int column, void* data);
	friend QObject* QAbstractItemModel_protectedbase_sender(const VirtualQAbstractItemModel* self);
	friend int QAbstractItemModel_protectedbase_senderSignalIndex(const VirtualQAbstractItemModel* self);
	friend int QAbstractItemModel_protectedbase_receivers(const VirtualQAbstractItemModel* self, const char* signal);
	friend bool QAbstractItemModel_protectedbase_isSignalConnected(const VirtualQAbstractItemModel* self, QMetaMethod* signal);
};

VirtualQAbstractItemModel* QAbstractItemModel_new(const QAbstractItemModel_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractItemModel(vtbl, vdata);
}

VirtualQAbstractItemModel* QAbstractItemModel_new2(const QAbstractItemModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAbstractItemModel(vtbl, vdata, parent);
}

void QAbstractItemModel_virtbase(QAbstractItemModel* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractItemModel_metaObject(const QAbstractItemModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractItemModel_metacast(QAbstractItemModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractItemModel_metacall(QAbstractItemModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractItemModel_tr(const char* s) {
	QString _ret = QAbstractItemModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemModel_trUtf8(const char* s) {
	QString _ret = QAbstractItemModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractItemModel_hasIndex(const QAbstractItemModel* self, int row, int column) {
	return self->hasIndex(static_cast<int>(row), static_cast<int>(column));
}

QModelIndex* QAbstractItemModel_index(const QAbstractItemModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QAbstractItemModel_parent(const QAbstractItemModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

QModelIndex* QAbstractItemModel_sibling(const QAbstractItemModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

int QAbstractItemModel_rowCount(const QAbstractItemModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QAbstractItemModel_columnCount(const QAbstractItemModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

bool QAbstractItemModel_hasChildren(const QAbstractItemModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

QVariant* QAbstractItemModel_data(const QAbstractItemModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QAbstractItemModel_setData(QAbstractItemModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QVariant* QAbstractItemModel_headerData(const QAbstractItemModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QAbstractItemModel_setHeaderData(QAbstractItemModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QAbstractItemModel_itemData(const QAbstractItemModel* self, QModelIndex* index) {
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

bool QAbstractItemModel_setItemData(QAbstractItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

struct miqt_array /* of struct miqt_string */  QAbstractItemModel_mimeTypes(const QAbstractItemModel* self) {
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

QMimeData* QAbstractItemModel_mimeData(const QAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QAbstractItemModel_canDropMimeData(const QAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractItemModel_dropMimeData(QAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractItemModel_supportedDropActions(const QAbstractItemModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

int QAbstractItemModel_supportedDragActions(const QAbstractItemModel* self) {
	Qt::DropActions _ret = self->supportedDragActions();
	return static_cast<int>(_ret);
}

bool QAbstractItemModel_insertRows(QAbstractItemModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_insertColumns(QAbstractItemModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_removeRows(QAbstractItemModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_removeColumns(QAbstractItemModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_moveRows(QAbstractItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractItemModel_moveColumns(QAbstractItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
	return self->moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractItemModel_insertRow(QAbstractItemModel* self, int row) {
	return self->insertRow(static_cast<int>(row));
}

bool QAbstractItemModel_insertColumn(QAbstractItemModel* self, int column) {
	return self->insertColumn(static_cast<int>(column));
}

bool QAbstractItemModel_removeRow(QAbstractItemModel* self, int row) {
	return self->removeRow(static_cast<int>(row));
}

bool QAbstractItemModel_removeColumn(QAbstractItemModel* self, int column) {
	return self->removeColumn(static_cast<int>(column));
}

bool QAbstractItemModel_moveRow(QAbstractItemModel* self, QModelIndex* sourceParent, int sourceRow, QModelIndex* destinationParent, int destinationChild) {
	return self->moveRow(*sourceParent, static_cast<int>(sourceRow), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractItemModel_moveColumn(QAbstractItemModel* self, QModelIndex* sourceParent, int sourceColumn, QModelIndex* destinationParent, int destinationChild) {
	return self->moveColumn(*sourceParent, static_cast<int>(sourceColumn), *destinationParent, static_cast<int>(destinationChild));
}

void QAbstractItemModel_fetchMore(QAbstractItemModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

bool QAbstractItemModel_canFetchMore(const QAbstractItemModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

int QAbstractItemModel_flags(const QAbstractItemModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

void QAbstractItemModel_sort(QAbstractItemModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QAbstractItemModel_buddy(const QAbstractItemModel* self, QModelIndex* index) {
	return new QModelIndex(self->buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QAbstractItemModel_match(const QAbstractItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
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

QSize* QAbstractItemModel_span(const QAbstractItemModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QAbstractItemModel_roleNames(const QAbstractItemModel* self) {
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

bool QAbstractItemModel_checkIndex(const QAbstractItemModel* self, QModelIndex* index) {
	return self->checkIndex(*index);
}

void QAbstractItemModel_dataChanged(QAbstractItemModel* self, QModelIndex* topLeft, QModelIndex* bottomRight) {
	self->dataChanged(*topLeft, *bottomRight);
}

void QAbstractItemModel_connect_dataChanged(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*, QModelIndex*);
		void operator()(const QModelIndex& topLeft, const QModelIndex& bottomRight) {
			const QModelIndex& topLeft_ret = topLeft;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
			const QModelIndex& bottomRight_ret = bottomRight;
			// Cast returned reference into pointer
			QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QModelIndex&, const QModelIndex&, const QVector<int>&)>(&QAbstractItemModel::dataChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_headerDataChanged(QAbstractItemModel* self, int orientation, int first, int last) {
	self->headerDataChanged(static_cast<Qt::Orientation>(orientation), static_cast<int>(first), static_cast<int>(last));
}

void QAbstractItemModel_connect_headerDataChanged(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, int);
		void operator()(Qt::Orientation orientation, int first, int last) {
			Qt::Orientation orientation_ret = orientation;
			int sigval1 = static_cast<int>(orientation_ret);
			int sigval2 = first;
			int sigval3 = last;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(Qt::Orientation, int, int)>(&QAbstractItemModel::headerDataChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutChanged(QAbstractItemModel* self) {
	self->layoutChanged();
}

void QAbstractItemModel_connect_layoutChanged(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutAboutToBeChanged(QAbstractItemModel* self) {
	self->layoutAboutToBeChanged();
}

void QAbstractItemModel_connect_layoutAboutToBeChanged(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutAboutToBeChanged), self, local_caller{slot, callback, release});
}

bool QAbstractItemModel_submit(QAbstractItemModel* self) {
	return self->submit();
}

void QAbstractItemModel_revert(QAbstractItemModel* self) {
	self->revert();
}

struct miqt_string QAbstractItemModel_tr2(const char* s, const char* c) {
	QString _ret = QAbstractItemModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemModel_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractItemModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractItemModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractItemModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractItemModel_hasIndex3(const QAbstractItemModel* self, int row, int column, QModelIndex* parent) {
	return self->hasIndex(static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractItemModel_insertRow2(QAbstractItemModel* self, int row, QModelIndex* parent) {
	return self->insertRow(static_cast<int>(row), *parent);
}

bool QAbstractItemModel_insertColumn2(QAbstractItemModel* self, int column, QModelIndex* parent) {
	return self->insertColumn(static_cast<int>(column), *parent);
}

bool QAbstractItemModel_removeRow2(QAbstractItemModel* self, int row, QModelIndex* parent) {
	return self->removeRow(static_cast<int>(row), *parent);
}

bool QAbstractItemModel_removeColumn2(QAbstractItemModel* self, int column, QModelIndex* parent) {
	return self->removeColumn(static_cast<int>(column), *parent);
}

bool QAbstractItemModel_checkIndex2(const QAbstractItemModel* self, QModelIndex* index, int options) {
	return self->checkIndex(*index, static_cast<QAbstractItemModel::CheckIndexOptions>(options));
}

void QAbstractItemModel_dataChanged3(QAbstractItemModel* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}
	self->dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QAbstractItemModel_connect_dataChanged3(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*, struct miqt_array /* of int */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QModelIndex*, QModelIndex*, struct miqt_array /* of int */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QModelIndex*, QModelIndex*, struct miqt_array /* of int */ );
		void operator()(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) {
			const QModelIndex& topLeft_ret = topLeft;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
			const QModelIndex& bottomRight_ret = bottomRight;
			// Cast returned reference into pointer
			QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
			const QVector<int>& roles_ret = roles;
			// Convert QList<> from C++ memory to manually-managed C memory
			int* roles_arr = static_cast<int*>(malloc(sizeof(int) * roles_ret.length()));
			for (size_t i = 0, e = roles_ret.length(); i < e; ++i) {
				roles_arr[i] = roles_ret[i];
			}
			struct miqt_array roles_out;
			roles_out.len = roles_ret.length();
			roles_out.data = static_cast<void*>(roles_arr);
			struct miqt_array /* of int */  sigval3 = roles_out;
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QModelIndex&, const QModelIndex&, const QVector<int>&)>(&QAbstractItemModel::dataChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutChanged1(QAbstractItemModel* self, struct miqt_array /* of QPersistentModelIndex* */  parents) {
	QList<QPersistentModelIndex> parents_QList;
	parents_QList.reserve(parents.len);
	QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(parents.data);
	for(size_t i = 0; i < parents.len; ++i) {
		parents_QList.push_back(*(parents_arr[i]));
	}
	self->layoutChanged(parents_QList);
}

void QAbstractItemModel_connect_layoutChanged1(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ );
		void operator()(const QList<QPersistentModelIndex>& parents) {
			const QList<QPersistentModelIndex>& parents_ret = parents;
			// Convert QList<> from C++ memory to manually-managed C memory
			QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(malloc(sizeof(QPersistentModelIndex*) * parents_ret.length()));
			for (size_t i = 0, e = parents_ret.length(); i < e; ++i) {
				parents_arr[i] = new QPersistentModelIndex(parents_ret[i]);
			}
			struct miqt_array parents_out;
			parents_out.len = parents_ret.length();
			parents_out.data = static_cast<void*>(parents_arr);
			struct miqt_array /* of QPersistentModelIndex* */  sigval1 = parents_out;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutChanged2(QAbstractItemModel* self, struct miqt_array /* of QPersistentModelIndex* */  parents, int hint) {
	QList<QPersistentModelIndex> parents_QList;
	parents_QList.reserve(parents.len);
	QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(parents.data);
	for(size_t i = 0; i < parents.len; ++i) {
		parents_QList.push_back(*(parents_arr[i]));
	}
	self->layoutChanged(parents_QList, static_cast<QAbstractItemModel::LayoutChangeHint>(hint));
}

void QAbstractItemModel_connect_layoutChanged2(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int);
		void operator()(const QList<QPersistentModelIndex>& parents, QAbstractItemModel::LayoutChangeHint hint) {
			const QList<QPersistentModelIndex>& parents_ret = parents;
			// Convert QList<> from C++ memory to manually-managed C memory
			QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(malloc(sizeof(QPersistentModelIndex*) * parents_ret.length()));
			for (size_t i = 0, e = parents_ret.length(); i < e; ++i) {
				parents_arr[i] = new QPersistentModelIndex(parents_ret[i]);
			}
			struct miqt_array parents_out;
			parents_out.len = parents_ret.length();
			parents_out.data = static_cast<void*>(parents_arr);
			struct miqt_array /* of QPersistentModelIndex* */  sigval1 = parents_out;
			QAbstractItemModel::LayoutChangeHint hint_ret = hint;
			int sigval2 = static_cast<int>(hint_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutAboutToBeChanged1(QAbstractItemModel* self, struct miqt_array /* of QPersistentModelIndex* */  parents) {
	QList<QPersistentModelIndex> parents_QList;
	parents_QList.reserve(parents.len);
	QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(parents.data);
	for(size_t i = 0; i < parents.len; ++i) {
		parents_QList.push_back(*(parents_arr[i]));
	}
	self->layoutAboutToBeChanged(parents_QList);
}

void QAbstractItemModel_connect_layoutAboutToBeChanged1(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ );
		void operator()(const QList<QPersistentModelIndex>& parents) {
			const QList<QPersistentModelIndex>& parents_ret = parents;
			// Convert QList<> from C++ memory to manually-managed C memory
			QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(malloc(sizeof(QPersistentModelIndex*) * parents_ret.length()));
			for (size_t i = 0, e = parents_ret.length(); i < e; ++i) {
				parents_arr[i] = new QPersistentModelIndex(parents_ret[i]);
			}
			struct miqt_array parents_out;
			parents_out.len = parents_ret.length();
			parents_out.data = static_cast<void*>(parents_arr);
			struct miqt_array /* of QPersistentModelIndex* */  sigval1 = parents_out;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutAboutToBeChanged), self, local_caller{slot, callback, release});
}

void QAbstractItemModel_layoutAboutToBeChanged2(QAbstractItemModel* self, struct miqt_array /* of QPersistentModelIndex* */  parents, int hint) {
	QList<QPersistentModelIndex> parents_QList;
	parents_QList.reserve(parents.len);
	QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(parents.data);
	for(size_t i = 0; i < parents.len; ++i) {
		parents_QList.push_back(*(parents_arr[i]));
	}
	self->layoutAboutToBeChanged(parents_QList, static_cast<QAbstractItemModel::LayoutChangeHint>(hint));
}

void QAbstractItemModel_connect_layoutAboutToBeChanged2(VirtualQAbstractItemModel* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QPersistentModelIndex* */ , int);
		void operator()(const QList<QPersistentModelIndex>& parents, QAbstractItemModel::LayoutChangeHint hint) {
			const QList<QPersistentModelIndex>& parents_ret = parents;
			// Convert QList<> from C++ memory to manually-managed C memory
			QPersistentModelIndex** parents_arr = static_cast<QPersistentModelIndex**>(malloc(sizeof(QPersistentModelIndex*) * parents_ret.length()));
			for (size_t i = 0, e = parents_ret.length(); i < e; ++i) {
				parents_arr[i] = new QPersistentModelIndex(parents_ret[i]);
			}
			struct miqt_array parents_out;
			parents_out.len = parents_ret.length();
			parents_out.data = static_cast<void*>(parents_arr);
			struct miqt_array /* of QPersistentModelIndex* */  sigval1 = parents_out;
			QAbstractItemModel::LayoutChangeHint hint_ret = hint;
			int sigval2 = static_cast<int>(hint_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractItemModel::connect(self, static_cast<void (QAbstractItemModel::*)(const QList<QPersistentModelIndex>&, QAbstractItemModel::LayoutChangeHint)>(&QAbstractItemModel::layoutAboutToBeChanged), self, local_caller{slot, callback, release});
}

QMetaObject* QAbstractItemModel_virtualbase_metaObject(const VirtualQAbstractItemModel* self) {

	return (QMetaObject*) self->QAbstractItemModel::metaObject();
}

void* QAbstractItemModel_virtualbase_metacast(VirtualQAbstractItemModel* self, const char* param1) {

	return self->QAbstractItemModel::qt_metacast(param1);
}

int QAbstractItemModel_virtualbase_metacall(VirtualQAbstractItemModel* self, int param1, int param2, void** param3) {

	return self->QAbstractItemModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QAbstractItemModel_virtualbase_sibling(const VirtualQAbstractItemModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QAbstractItemModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QAbstractItemModel_virtualbase_hasChildren(const VirtualQAbstractItemModel* self, QModelIndex* parent) {

	return self->QAbstractItemModel::hasChildren(*parent);
}

bool QAbstractItemModel_virtualbase_setData(VirtualQAbstractItemModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QAbstractItemModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QAbstractItemModel_virtualbase_headerData(const VirtualQAbstractItemModel* self, int section, int orientation, int role) {

	return new QVariant(self->QAbstractItemModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QAbstractItemModel_virtualbase_setHeaderData(VirtualQAbstractItemModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QAbstractItemModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QAbstractItemModel_virtualbase_itemData(const VirtualQAbstractItemModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QAbstractItemModel::itemData(*index);
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

bool QAbstractItemModel_virtualbase_setItemData(VirtualQAbstractItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QAbstractItemModel::setItemData(*index, roles_QMap);
}

struct miqt_array /* of struct miqt_string */  QAbstractItemModel_virtualbase_mimeTypes(const VirtualQAbstractItemModel* self) {

	QStringList _ret = self->QAbstractItemModel::mimeTypes();
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

QMimeData* QAbstractItemModel_virtualbase_mimeData(const VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QAbstractItemModel::mimeData(indexes_QList);
}

bool QAbstractItemModel_virtualbase_canDropMimeData(const VirtualQAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractItemModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractItemModel_virtualbase_dropMimeData(VirtualQAbstractItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractItemModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractItemModel_virtualbase_supportedDropActions(const VirtualQAbstractItemModel* self) {

	Qt::DropActions _ret = self->QAbstractItemModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QAbstractItemModel_virtualbase_supportedDragActions(const VirtualQAbstractItemModel* self) {

	Qt::DropActions _ret = self->QAbstractItemModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QAbstractItemModel_virtualbase_insertRows(VirtualQAbstractItemModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractItemModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_virtualbase_insertColumns(VirtualQAbstractItemModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractItemModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_virtualbase_removeRows(VirtualQAbstractItemModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractItemModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_virtualbase_removeColumns(VirtualQAbstractItemModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractItemModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractItemModel_virtualbase_moveRows(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractItemModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractItemModel_virtualbase_moveColumns(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractItemModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QAbstractItemModel_virtualbase_fetchMore(VirtualQAbstractItemModel* self, QModelIndex* parent) {

	self->QAbstractItemModel::fetchMore(*parent);
}

bool QAbstractItemModel_virtualbase_canFetchMore(const VirtualQAbstractItemModel* self, QModelIndex* parent) {

	return self->QAbstractItemModel::canFetchMore(*parent);
}

int QAbstractItemModel_virtualbase_flags(const VirtualQAbstractItemModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QAbstractItemModel::flags(*index);
	return static_cast<int>(_ret);
}

void QAbstractItemModel_virtualbase_sort(VirtualQAbstractItemModel* self, int column, int order) {

	self->QAbstractItemModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QAbstractItemModel_virtualbase_buddy(const VirtualQAbstractItemModel* self, QModelIndex* index) {

	return new QModelIndex(self->QAbstractItemModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QAbstractItemModel_virtualbase_match(const VirtualQAbstractItemModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QAbstractItemModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QAbstractItemModel_virtualbase_span(const VirtualQAbstractItemModel* self, QModelIndex* index) {

	return new QSize(self->QAbstractItemModel::span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QAbstractItemModel_virtualbase_roleNames(const VirtualQAbstractItemModel* self) {

	QHash<int, QByteArray> _ret = self->QAbstractItemModel::roleNames();
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

bool QAbstractItemModel_virtualbase_submit(VirtualQAbstractItemModel* self) {

	return self->QAbstractItemModel::submit();
}

void QAbstractItemModel_virtualbase_revert(VirtualQAbstractItemModel* self) {

	self->QAbstractItemModel::revert();
}

bool QAbstractItemModel_virtualbase_event(VirtualQAbstractItemModel* self, QEvent* event) {

	return self->QAbstractItemModel::event(event);
}

bool QAbstractItemModel_virtualbase_eventFilter(VirtualQAbstractItemModel* self, QObject* watched, QEvent* event) {

	return self->QAbstractItemModel::eventFilter(watched, event);
}

void QAbstractItemModel_virtualbase_timerEvent(VirtualQAbstractItemModel* self, QTimerEvent* event) {

	self->QAbstractItemModel::timerEvent(event);
}

void QAbstractItemModel_virtualbase_childEvent(VirtualQAbstractItemModel* self, QChildEvent* event) {

	self->QAbstractItemModel::childEvent(event);
}

void QAbstractItemModel_virtualbase_customEvent(VirtualQAbstractItemModel* self, QEvent* event) {

	self->QAbstractItemModel::customEvent(event);
}

void QAbstractItemModel_virtualbase_connectNotify(VirtualQAbstractItemModel* self, QMetaMethod* signal) {

	self->QAbstractItemModel::connectNotify(*signal);
}

void QAbstractItemModel_virtualbase_disconnectNotify(VirtualQAbstractItemModel* self, QMetaMethod* signal) {

	self->QAbstractItemModel::disconnectNotify(*signal);
}

const QMetaObject* QAbstractItemModel_staticMetaObject() { return &QAbstractItemModel::staticMetaObject; }

const QAbstractItemModel_VTable* QAbstractItemModel_vtbl(const VirtualQAbstractItemModel* self) { return self->vtbl; }
void* QAbstractItemModel_vdata(const VirtualQAbstractItemModel* self) { return self->vdata; }
void QAbstractItemModel_setVdata(VirtualQAbstractItemModel* self, void* vdata) { self->vdata = vdata; }

void QAbstractItemModel_protectedbase_resetInternalData(VirtualQAbstractItemModel* self) {
	self->resetInternalData();
}

QModelIndex* QAbstractItemModel_protectedbase_createIndex(const VirtualQAbstractItemModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

QModelIndex* QAbstractItemModel_protectedbase_createIndex2(const VirtualQAbstractItemModel* self, int row, int column, uintptr_t id) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column), static_cast<quintptr>(id)));
}

void QAbstractItemModel_protectedbase_encodeData(const VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QAbstractItemModel_protectedbase_decodeData(VirtualQAbstractItemModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QAbstractItemModel_protectedbase_beginInsertRows(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractItemModel_protectedbase_endInsertRows(VirtualQAbstractItemModel* self) {
	self->endInsertRows();
}

void QAbstractItemModel_protectedbase_beginRemoveRows(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractItemModel_protectedbase_endRemoveRows(VirtualQAbstractItemModel* self) {
	self->endRemoveRows();
}

bool QAbstractItemModel_protectedbase_beginMoveRows(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QAbstractItemModel_protectedbase_endMoveRows(VirtualQAbstractItemModel* self) {
	self->endMoveRows();
}

void QAbstractItemModel_protectedbase_beginInsertColumns(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractItemModel_protectedbase_endInsertColumns(VirtualQAbstractItemModel* self) {
	self->endInsertColumns();
}

void QAbstractItemModel_protectedbase_beginRemoveColumns(VirtualQAbstractItemModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractItemModel_protectedbase_endRemoveColumns(VirtualQAbstractItemModel* self) {
	self->endRemoveColumns();
}

bool QAbstractItemModel_protectedbase_beginMoveColumns(VirtualQAbstractItemModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QAbstractItemModel_protectedbase_endMoveColumns(VirtualQAbstractItemModel* self) {
	self->endMoveColumns();
}

void QAbstractItemModel_protectedbase_beginResetModel(VirtualQAbstractItemModel* self) {
	self->beginResetModel();
}

void QAbstractItemModel_protectedbase_endResetModel(VirtualQAbstractItemModel* self) {
	self->endResetModel();
}

void QAbstractItemModel_protectedbase_changePersistentIndex(VirtualQAbstractItemModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QAbstractItemModel_protectedbase_changePersistentIndexList(VirtualQAbstractItemModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QAbstractItemModel_protectedbase_persistentIndexList(const VirtualQAbstractItemModel* self) {
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

QModelIndex* QAbstractItemModel_protectedbase_createIndex3(const VirtualQAbstractItemModel* self, int row, int column, void* data) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column), data));
}

QObject* QAbstractItemModel_protectedbase_sender(const VirtualQAbstractItemModel* self) {
	return self->sender();
}

int QAbstractItemModel_protectedbase_senderSignalIndex(const VirtualQAbstractItemModel* self) {
	return self->senderSignalIndex();
}

int QAbstractItemModel_protectedbase_receivers(const VirtualQAbstractItemModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractItemModel_protectedbase_isSignalConnected(const VirtualQAbstractItemModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractItemModel_delete(QAbstractItemModel* self) {
	delete self;
}

class VirtualQAbstractTableModel final : public QAbstractTableModel {
	const QAbstractTableModel_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractTableModel_VTable* QAbstractTableModel_vtbl(const VirtualQAbstractTableModel* self);
	friend void* QAbstractTableModel_vdata(const VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_setVdata(VirtualQAbstractTableModel* self, void* vdata);

	VirtualQAbstractTableModel(const QAbstractTableModel_VTable* vtbl, void* vdata): QAbstractTableModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractTableModel(const QAbstractTableModel_VTable* vtbl, void* vdata, QObject* parent): QAbstractTableModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractTableModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractTableModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractTableModel_virtualbase_metaObject(const VirtualQAbstractTableModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractTableModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractTableModel_virtualbase_metacast(VirtualQAbstractTableModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractTableModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractTableModel_virtualbase_metacall(VirtualQAbstractTableModel* self, int param1, int param2, void** param3);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QAbstractTableModel::index(row, column, parent);
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

	friend QModelIndex* QAbstractTableModel_virtualbase_index(const VirtualQAbstractTableModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QAbstractTableModel::sibling(row, column, idx);
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

	friend QModelIndex* QAbstractTableModel_virtualbase_sibling(const VirtualQAbstractTableModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QAbstractTableModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractTableModel_virtualbase_dropMimeData(VirtualQAbstractTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QAbstractTableModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QAbstractTableModel_virtualbase_flags(const VirtualQAbstractTableModel* self, QModelIndex* index);

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

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QVariant(); // Pure virtual, there is no base we can call
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

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QAbstractTableModel::setData(index, value, role);
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

	friend bool QAbstractTableModel_virtualbase_setData(VirtualQAbstractTableModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QAbstractTableModel::headerData(section, orientation, role);
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

	friend QVariant* QAbstractTableModel_virtualbase_headerData(const VirtualQAbstractTableModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QAbstractTableModel::setHeaderData(section, orientation, value, role);
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

	friend bool QAbstractTableModel_virtualbase_setHeaderData(VirtualQAbstractTableModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QAbstractTableModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QAbstractTableModel_virtualbase_itemData(const VirtualQAbstractTableModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QAbstractTableModel::setItemData(index, roles);
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

	friend bool QAbstractTableModel_virtualbase_setItemData(VirtualQAbstractTableModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QAbstractTableModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QAbstractTableModel_virtualbase_mimeTypes(const VirtualQAbstractTableModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QAbstractTableModel::mimeData(indexes);
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

	friend QMimeData* QAbstractTableModel_virtualbase_mimeData(const VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QAbstractTableModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractTableModel_virtualbase_canDropMimeData(const VirtualQAbstractTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QAbstractTableModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractTableModel_virtualbase_supportedDropActions(const VirtualQAbstractTableModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QAbstractTableModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractTableModel_virtualbase_supportedDragActions(const VirtualQAbstractTableModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QAbstractTableModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_insertRows(VirtualQAbstractTableModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QAbstractTableModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_insertColumns(VirtualQAbstractTableModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QAbstractTableModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_removeRows(VirtualQAbstractTableModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QAbstractTableModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_removeColumns(VirtualQAbstractTableModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QAbstractTableModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QAbstractTableModel_virtualbase_moveRows(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QAbstractTableModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QAbstractTableModel_virtualbase_moveColumns(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QAbstractTableModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_fetchMore(VirtualQAbstractTableModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QAbstractTableModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_canFetchMore(const VirtualQAbstractTableModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QAbstractTableModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QAbstractTableModel_virtualbase_sort(VirtualQAbstractTableModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QAbstractTableModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QAbstractTableModel_virtualbase_buddy(const VirtualQAbstractTableModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QAbstractTableModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QAbstractTableModel_virtualbase_match(const VirtualQAbstractTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QAbstractTableModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractTableModel_virtualbase_span(const VirtualQAbstractTableModel* self, QModelIndex* index);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QAbstractTableModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QAbstractTableModel_virtualbase_roleNames(const VirtualQAbstractTableModel* self);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QAbstractTableModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_submit(VirtualQAbstractTableModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QAbstractTableModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QAbstractTableModel_virtualbase_revert(VirtualQAbstractTableModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractTableModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_event(VirtualQAbstractTableModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractTableModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractTableModel_virtualbase_eventFilter(VirtualQAbstractTableModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractTableModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_timerEvent(VirtualQAbstractTableModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractTableModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_childEvent(VirtualQAbstractTableModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractTableModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_customEvent(VirtualQAbstractTableModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractTableModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_connectNotify(VirtualQAbstractTableModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractTableModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractTableModel_virtualbase_disconnectNotify(VirtualQAbstractTableModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractTableModel_protectedbase_resetInternalData(VirtualQAbstractTableModel* self);
	friend QModelIndex* QAbstractTableModel_protectedbase_createIndex(const VirtualQAbstractTableModel* self, int row, int column);
	friend void QAbstractTableModel_protectedbase_encodeData(const VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QAbstractTableModel_protectedbase_decodeData(VirtualQAbstractTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QAbstractTableModel_protectedbase_beginInsertRows(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractTableModel_protectedbase_endInsertRows(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_beginRemoveRows(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractTableModel_protectedbase_endRemoveRows(VirtualQAbstractTableModel* self);
	friend bool QAbstractTableModel_protectedbase_beginMoveRows(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QAbstractTableModel_protectedbase_endMoveRows(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_beginInsertColumns(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractTableModel_protectedbase_endInsertColumns(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_beginRemoveColumns(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractTableModel_protectedbase_endRemoveColumns(VirtualQAbstractTableModel* self);
	friend bool QAbstractTableModel_protectedbase_beginMoveColumns(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QAbstractTableModel_protectedbase_endMoveColumns(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_beginResetModel(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_endResetModel(VirtualQAbstractTableModel* self);
	friend void QAbstractTableModel_protectedbase_changePersistentIndex(VirtualQAbstractTableModel* self, QModelIndex* from, QModelIndex* to);
	friend void QAbstractTableModel_protectedbase_changePersistentIndexList(VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QAbstractTableModel_protectedbase_persistentIndexList(const VirtualQAbstractTableModel* self);
	friend QObject* QAbstractTableModel_protectedbase_sender(const VirtualQAbstractTableModel* self);
	friend int QAbstractTableModel_protectedbase_senderSignalIndex(const VirtualQAbstractTableModel* self);
	friend int QAbstractTableModel_protectedbase_receivers(const VirtualQAbstractTableModel* self, const char* signal);
	friend bool QAbstractTableModel_protectedbase_isSignalConnected(const VirtualQAbstractTableModel* self, QMetaMethod* signal);
};

VirtualQAbstractTableModel* QAbstractTableModel_new(const QAbstractTableModel_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractTableModel(vtbl, vdata);
}

VirtualQAbstractTableModel* QAbstractTableModel_new2(const QAbstractTableModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAbstractTableModel(vtbl, vdata, parent);
}

void QAbstractTableModel_virtbase(QAbstractTableModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QAbstractTableModel_metaObject(const QAbstractTableModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractTableModel_metacast(QAbstractTableModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractTableModel_metacall(QAbstractTableModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractTableModel_tr(const char* s) {
	QString _ret = QAbstractTableModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTableModel_trUtf8(const char* s) {
	QString _ret = QAbstractTableModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QAbstractTableModel_index(const QAbstractTableModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QAbstractTableModel_sibling(const QAbstractTableModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QAbstractTableModel_dropMimeData(QAbstractTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractTableModel_flags(const QAbstractTableModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

struct miqt_string QAbstractTableModel_tr2(const char* s, const char* c) {
	QString _ret = QAbstractTableModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTableModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractTableModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTableModel_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractTableModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTableModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractTableModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractTableModel_virtualbase_metaObject(const VirtualQAbstractTableModel* self) {

	return (QMetaObject*) self->QAbstractTableModel::metaObject();
}

void* QAbstractTableModel_virtualbase_metacast(VirtualQAbstractTableModel* self, const char* param1) {

	return self->QAbstractTableModel::qt_metacast(param1);
}

int QAbstractTableModel_virtualbase_metacall(VirtualQAbstractTableModel* self, int param1, int param2, void** param3) {

	return self->QAbstractTableModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QAbstractTableModel_virtualbase_index(const VirtualQAbstractTableModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QAbstractTableModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QAbstractTableModel_virtualbase_sibling(const VirtualQAbstractTableModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QAbstractTableModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QAbstractTableModel_virtualbase_dropMimeData(VirtualQAbstractTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractTableModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractTableModel_virtualbase_flags(const VirtualQAbstractTableModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QAbstractTableModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QAbstractTableModel_virtualbase_setData(VirtualQAbstractTableModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QAbstractTableModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QAbstractTableModel_virtualbase_headerData(const VirtualQAbstractTableModel* self, int section, int orientation, int role) {

	return new QVariant(self->QAbstractTableModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QAbstractTableModel_virtualbase_setHeaderData(VirtualQAbstractTableModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QAbstractTableModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QAbstractTableModel_virtualbase_itemData(const VirtualQAbstractTableModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QAbstractTableModel::itemData(*index);
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

bool QAbstractTableModel_virtualbase_setItemData(VirtualQAbstractTableModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QAbstractTableModel::setItemData(*index, roles_QMap);
}

struct miqt_array /* of struct miqt_string */  QAbstractTableModel_virtualbase_mimeTypes(const VirtualQAbstractTableModel* self) {

	QStringList _ret = self->QAbstractTableModel::mimeTypes();
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

QMimeData* QAbstractTableModel_virtualbase_mimeData(const VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QAbstractTableModel::mimeData(indexes_QList);
}

bool QAbstractTableModel_virtualbase_canDropMimeData(const VirtualQAbstractTableModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractTableModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractTableModel_virtualbase_supportedDropActions(const VirtualQAbstractTableModel* self) {

	Qt::DropActions _ret = self->QAbstractTableModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QAbstractTableModel_virtualbase_supportedDragActions(const VirtualQAbstractTableModel* self) {

	Qt::DropActions _ret = self->QAbstractTableModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QAbstractTableModel_virtualbase_insertRows(VirtualQAbstractTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractTableModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractTableModel_virtualbase_insertColumns(VirtualQAbstractTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractTableModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractTableModel_virtualbase_removeRows(VirtualQAbstractTableModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractTableModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractTableModel_virtualbase_removeColumns(VirtualQAbstractTableModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractTableModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractTableModel_virtualbase_moveRows(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractTableModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractTableModel_virtualbase_moveColumns(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractTableModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QAbstractTableModel_virtualbase_fetchMore(VirtualQAbstractTableModel* self, QModelIndex* parent) {

	self->QAbstractTableModel::fetchMore(*parent);
}

bool QAbstractTableModel_virtualbase_canFetchMore(const VirtualQAbstractTableModel* self, QModelIndex* parent) {

	return self->QAbstractTableModel::canFetchMore(*parent);
}

void QAbstractTableModel_virtualbase_sort(VirtualQAbstractTableModel* self, int column, int order) {

	self->QAbstractTableModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QAbstractTableModel_virtualbase_buddy(const VirtualQAbstractTableModel* self, QModelIndex* index) {

	return new QModelIndex(self->QAbstractTableModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QAbstractTableModel_virtualbase_match(const VirtualQAbstractTableModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QAbstractTableModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QAbstractTableModel_virtualbase_span(const VirtualQAbstractTableModel* self, QModelIndex* index) {

	return new QSize(self->QAbstractTableModel::span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QAbstractTableModel_virtualbase_roleNames(const VirtualQAbstractTableModel* self) {

	QHash<int, QByteArray> _ret = self->QAbstractTableModel::roleNames();
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

bool QAbstractTableModel_virtualbase_submit(VirtualQAbstractTableModel* self) {

	return self->QAbstractTableModel::submit();
}

void QAbstractTableModel_virtualbase_revert(VirtualQAbstractTableModel* self) {

	self->QAbstractTableModel::revert();
}

bool QAbstractTableModel_virtualbase_event(VirtualQAbstractTableModel* self, QEvent* event) {

	return self->QAbstractTableModel::event(event);
}

bool QAbstractTableModel_virtualbase_eventFilter(VirtualQAbstractTableModel* self, QObject* watched, QEvent* event) {

	return self->QAbstractTableModel::eventFilter(watched, event);
}

void QAbstractTableModel_virtualbase_timerEvent(VirtualQAbstractTableModel* self, QTimerEvent* event) {

	self->QAbstractTableModel::timerEvent(event);
}

void QAbstractTableModel_virtualbase_childEvent(VirtualQAbstractTableModel* self, QChildEvent* event) {

	self->QAbstractTableModel::childEvent(event);
}

void QAbstractTableModel_virtualbase_customEvent(VirtualQAbstractTableModel* self, QEvent* event) {

	self->QAbstractTableModel::customEvent(event);
}

void QAbstractTableModel_virtualbase_connectNotify(VirtualQAbstractTableModel* self, QMetaMethod* signal) {

	self->QAbstractTableModel::connectNotify(*signal);
}

void QAbstractTableModel_virtualbase_disconnectNotify(VirtualQAbstractTableModel* self, QMetaMethod* signal) {

	self->QAbstractTableModel::disconnectNotify(*signal);
}

const QMetaObject* QAbstractTableModel_staticMetaObject() { return &QAbstractTableModel::staticMetaObject; }

const QAbstractTableModel_VTable* QAbstractTableModel_vtbl(const VirtualQAbstractTableModel* self) { return self->vtbl; }
void* QAbstractTableModel_vdata(const VirtualQAbstractTableModel* self) { return self->vdata; }
void QAbstractTableModel_setVdata(VirtualQAbstractTableModel* self, void* vdata) { self->vdata = vdata; }

void QAbstractTableModel_protectedbase_resetInternalData(VirtualQAbstractTableModel* self) {
	self->resetInternalData();
}

QModelIndex* QAbstractTableModel_protectedbase_createIndex(const VirtualQAbstractTableModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QAbstractTableModel_protectedbase_encodeData(const VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QAbstractTableModel_protectedbase_decodeData(VirtualQAbstractTableModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QAbstractTableModel_protectedbase_beginInsertRows(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractTableModel_protectedbase_endInsertRows(VirtualQAbstractTableModel* self) {
	self->endInsertRows();
}

void QAbstractTableModel_protectedbase_beginRemoveRows(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractTableModel_protectedbase_endRemoveRows(VirtualQAbstractTableModel* self) {
	self->endRemoveRows();
}

bool QAbstractTableModel_protectedbase_beginMoveRows(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QAbstractTableModel_protectedbase_endMoveRows(VirtualQAbstractTableModel* self) {
	self->endMoveRows();
}

void QAbstractTableModel_protectedbase_beginInsertColumns(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractTableModel_protectedbase_endInsertColumns(VirtualQAbstractTableModel* self) {
	self->endInsertColumns();
}

void QAbstractTableModel_protectedbase_beginRemoveColumns(VirtualQAbstractTableModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractTableModel_protectedbase_endRemoveColumns(VirtualQAbstractTableModel* self) {
	self->endRemoveColumns();
}

bool QAbstractTableModel_protectedbase_beginMoveColumns(VirtualQAbstractTableModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QAbstractTableModel_protectedbase_endMoveColumns(VirtualQAbstractTableModel* self) {
	self->endMoveColumns();
}

void QAbstractTableModel_protectedbase_beginResetModel(VirtualQAbstractTableModel* self) {
	self->beginResetModel();
}

void QAbstractTableModel_protectedbase_endResetModel(VirtualQAbstractTableModel* self) {
	self->endResetModel();
}

void QAbstractTableModel_protectedbase_changePersistentIndex(VirtualQAbstractTableModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QAbstractTableModel_protectedbase_changePersistentIndexList(VirtualQAbstractTableModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QAbstractTableModel_protectedbase_persistentIndexList(const VirtualQAbstractTableModel* self) {
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

QObject* QAbstractTableModel_protectedbase_sender(const VirtualQAbstractTableModel* self) {
	return self->sender();
}

int QAbstractTableModel_protectedbase_senderSignalIndex(const VirtualQAbstractTableModel* self) {
	return self->senderSignalIndex();
}

int QAbstractTableModel_protectedbase_receivers(const VirtualQAbstractTableModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractTableModel_protectedbase_isSignalConnected(const VirtualQAbstractTableModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractTableModel_delete(QAbstractTableModel* self) {
	delete self;
}

class VirtualQAbstractListModel final : public QAbstractListModel {
	const QAbstractListModel_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractListModel_VTable* QAbstractListModel_vtbl(const VirtualQAbstractListModel* self);
	friend void* QAbstractListModel_vdata(const VirtualQAbstractListModel* self);
	friend void QAbstractListModel_setVdata(VirtualQAbstractListModel* self, void* vdata);

	VirtualQAbstractListModel(const QAbstractListModel_VTable* vtbl, void* vdata): QAbstractListModel(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractListModel(const QAbstractListModel_VTable* vtbl, void* vdata, QObject* parent): QAbstractListModel(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractListModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractListModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractListModel_virtualbase_metaObject(const VirtualQAbstractListModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractListModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractListModel_virtualbase_metacast(VirtualQAbstractListModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractListModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractListModel_virtualbase_metacall(VirtualQAbstractListModel* self, int param1, int param2, void** param3);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QAbstractListModel::index(row, column, parent);
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

	friend QModelIndex* QAbstractListModel_virtualbase_index(const VirtualQAbstractListModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QAbstractListModel::sibling(row, column, idx);
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

	friend QModelIndex* QAbstractListModel_virtualbase_sibling(const VirtualQAbstractListModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QAbstractListModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractListModel_virtualbase_dropMimeData(VirtualQAbstractListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QAbstractListModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QAbstractListModel_virtualbase_flags(const VirtualQAbstractListModel* self, QModelIndex* index);

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

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QVariant(); // Pure virtual, there is no base we can call
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

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QAbstractListModel::setData(index, value, role);
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

	friend bool QAbstractListModel_virtualbase_setData(VirtualQAbstractListModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QAbstractListModel::headerData(section, orientation, role);
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

	friend QVariant* QAbstractListModel_virtualbase_headerData(const VirtualQAbstractListModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QAbstractListModel::setHeaderData(section, orientation, value, role);
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

	friend bool QAbstractListModel_virtualbase_setHeaderData(VirtualQAbstractListModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QAbstractListModel::itemData(index);
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

	friend struct miqt_map /* of int to QVariant* */  QAbstractListModel_virtualbase_itemData(const VirtualQAbstractListModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QAbstractListModel::setItemData(index, roles);
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

	friend bool QAbstractListModel_virtualbase_setItemData(VirtualQAbstractListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QAbstractListModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QAbstractListModel_virtualbase_mimeTypes(const VirtualQAbstractListModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QAbstractListModel::mimeData(indexes);
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

	friend QMimeData* QAbstractListModel_virtualbase_mimeData(const VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QAbstractListModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QAbstractListModel_virtualbase_canDropMimeData(const VirtualQAbstractListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QAbstractListModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractListModel_virtualbase_supportedDropActions(const VirtualQAbstractListModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QAbstractListModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QAbstractListModel_virtualbase_supportedDragActions(const VirtualQAbstractListModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QAbstractListModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_insertRows(VirtualQAbstractListModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QAbstractListModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_insertColumns(VirtualQAbstractListModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QAbstractListModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_removeRows(VirtualQAbstractListModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QAbstractListModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_removeColumns(VirtualQAbstractListModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QAbstractListModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QAbstractListModel_virtualbase_moveRows(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QAbstractListModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QAbstractListModel_virtualbase_moveColumns(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QAbstractListModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_fetchMore(VirtualQAbstractListModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QAbstractListModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_canFetchMore(const VirtualQAbstractListModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QAbstractListModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(this, sigval1, sigval2);

	}

	friend void QAbstractListModel_virtualbase_sort(VirtualQAbstractListModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QAbstractListModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QAbstractListModel_virtualbase_buddy(const VirtualQAbstractListModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QAbstractListModel::match(start, role, value, hits, flags);
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

	friend struct miqt_array /* of QModelIndex* */  QAbstractListModel_virtualbase_match(const VirtualQAbstractListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QAbstractListModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractListModel_virtualbase_span(const VirtualQAbstractListModel* self, QModelIndex* index);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QAbstractListModel::roleNames();
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

	friend struct miqt_map /* of int to struct miqt_string */  QAbstractListModel_virtualbase_roleNames(const VirtualQAbstractListModel* self);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QAbstractListModel::submit();
		}


		bool callback_return_value = vtbl->submit(this);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_submit(VirtualQAbstractListModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QAbstractListModel::revert();
			return;
		}


		vtbl->revert(this);

	}

	friend void QAbstractListModel_virtualbase_revert(VirtualQAbstractListModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractListModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_event(VirtualQAbstractListModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractListModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractListModel_virtualbase_eventFilter(VirtualQAbstractListModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractListModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_timerEvent(VirtualQAbstractListModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractListModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_childEvent(VirtualQAbstractListModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractListModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_customEvent(VirtualQAbstractListModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractListModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_connectNotify(VirtualQAbstractListModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractListModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractListModel_virtualbase_disconnectNotify(VirtualQAbstractListModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractListModel_protectedbase_resetInternalData(VirtualQAbstractListModel* self);
	friend QModelIndex* QAbstractListModel_protectedbase_createIndex(const VirtualQAbstractListModel* self, int row, int column);
	friend void QAbstractListModel_protectedbase_encodeData(const VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QAbstractListModel_protectedbase_decodeData(VirtualQAbstractListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QAbstractListModel_protectedbase_beginInsertRows(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractListModel_protectedbase_endInsertRows(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_beginRemoveRows(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractListModel_protectedbase_endRemoveRows(VirtualQAbstractListModel* self);
	friend bool QAbstractListModel_protectedbase_beginMoveRows(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QAbstractListModel_protectedbase_endMoveRows(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_beginInsertColumns(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractListModel_protectedbase_endInsertColumns(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_beginRemoveColumns(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last);
	friend void QAbstractListModel_protectedbase_endRemoveColumns(VirtualQAbstractListModel* self);
	friend bool QAbstractListModel_protectedbase_beginMoveColumns(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QAbstractListModel_protectedbase_endMoveColumns(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_beginResetModel(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_endResetModel(VirtualQAbstractListModel* self);
	friend void QAbstractListModel_protectedbase_changePersistentIndex(VirtualQAbstractListModel* self, QModelIndex* from, QModelIndex* to);
	friend void QAbstractListModel_protectedbase_changePersistentIndexList(VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QAbstractListModel_protectedbase_persistentIndexList(const VirtualQAbstractListModel* self);
	friend QObject* QAbstractListModel_protectedbase_sender(const VirtualQAbstractListModel* self);
	friend int QAbstractListModel_protectedbase_senderSignalIndex(const VirtualQAbstractListModel* self);
	friend int QAbstractListModel_protectedbase_receivers(const VirtualQAbstractListModel* self, const char* signal);
	friend bool QAbstractListModel_protectedbase_isSignalConnected(const VirtualQAbstractListModel* self, QMetaMethod* signal);
};

VirtualQAbstractListModel* QAbstractListModel_new(const QAbstractListModel_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractListModel(vtbl, vdata);
}

VirtualQAbstractListModel* QAbstractListModel_new2(const QAbstractListModel_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAbstractListModel(vtbl, vdata, parent);
}

void QAbstractListModel_virtbase(QAbstractListModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QAbstractListModel_metaObject(const QAbstractListModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractListModel_metacast(QAbstractListModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractListModel_metacall(QAbstractListModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractListModel_tr(const char* s) {
	QString _ret = QAbstractListModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractListModel_trUtf8(const char* s) {
	QString _ret = QAbstractListModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QModelIndex* QAbstractListModel_index(const QAbstractListModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QAbstractListModel_sibling(const QAbstractListModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QAbstractListModel_dropMimeData(QAbstractListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractListModel_flags(const QAbstractListModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

struct miqt_string QAbstractListModel_tr2(const char* s, const char* c) {
	QString _ret = QAbstractListModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractListModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractListModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractListModel_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractListModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractListModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractListModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractListModel_virtualbase_metaObject(const VirtualQAbstractListModel* self) {

	return (QMetaObject*) self->QAbstractListModel::metaObject();
}

void* QAbstractListModel_virtualbase_metacast(VirtualQAbstractListModel* self, const char* param1) {

	return self->QAbstractListModel::qt_metacast(param1);
}

int QAbstractListModel_virtualbase_metacall(VirtualQAbstractListModel* self, int param1, int param2, void** param3) {

	return self->QAbstractListModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QModelIndex* QAbstractListModel_virtualbase_index(const VirtualQAbstractListModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QAbstractListModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QAbstractListModel_virtualbase_sibling(const VirtualQAbstractListModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QAbstractListModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QAbstractListModel_virtualbase_dropMimeData(VirtualQAbstractListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractListModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractListModel_virtualbase_flags(const VirtualQAbstractListModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QAbstractListModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QAbstractListModel_virtualbase_setData(VirtualQAbstractListModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QAbstractListModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QAbstractListModel_virtualbase_headerData(const VirtualQAbstractListModel* self, int section, int orientation, int role) {

	return new QVariant(self->QAbstractListModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QAbstractListModel_virtualbase_setHeaderData(VirtualQAbstractListModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QAbstractListModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct miqt_map /* of int to QVariant* */  QAbstractListModel_virtualbase_itemData(const VirtualQAbstractListModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QAbstractListModel::itemData(*index);
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

bool QAbstractListModel_virtualbase_setItemData(VirtualQAbstractListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QAbstractListModel::setItemData(*index, roles_QMap);
}

struct miqt_array /* of struct miqt_string */  QAbstractListModel_virtualbase_mimeTypes(const VirtualQAbstractListModel* self) {

	QStringList _ret = self->QAbstractListModel::mimeTypes();
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

QMimeData* QAbstractListModel_virtualbase_mimeData(const VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QAbstractListModel::mimeData(indexes_QList);
}

bool QAbstractListModel_virtualbase_canDropMimeData(const VirtualQAbstractListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QAbstractListModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QAbstractListModel_virtualbase_supportedDropActions(const VirtualQAbstractListModel* self) {

	Qt::DropActions _ret = self->QAbstractListModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QAbstractListModel_virtualbase_supportedDragActions(const VirtualQAbstractListModel* self) {

	Qt::DropActions _ret = self->QAbstractListModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QAbstractListModel_virtualbase_insertRows(VirtualQAbstractListModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractListModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractListModel_virtualbase_insertColumns(VirtualQAbstractListModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractListModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractListModel_virtualbase_removeRows(VirtualQAbstractListModel* self, int row, int count, QModelIndex* parent) {

	return self->QAbstractListModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QAbstractListModel_virtualbase_removeColumns(VirtualQAbstractListModel* self, int column, int count, QModelIndex* parent) {

	return self->QAbstractListModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QAbstractListModel_virtualbase_moveRows(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractListModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QAbstractListModel_virtualbase_moveColumns(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QAbstractListModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QAbstractListModel_virtualbase_fetchMore(VirtualQAbstractListModel* self, QModelIndex* parent) {

	self->QAbstractListModel::fetchMore(*parent);
}

bool QAbstractListModel_virtualbase_canFetchMore(const VirtualQAbstractListModel* self, QModelIndex* parent) {

	return self->QAbstractListModel::canFetchMore(*parent);
}

void QAbstractListModel_virtualbase_sort(VirtualQAbstractListModel* self, int column, int order) {

	self->QAbstractListModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QAbstractListModel_virtualbase_buddy(const VirtualQAbstractListModel* self, QModelIndex* index) {

	return new QModelIndex(self->QAbstractListModel::buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QAbstractListModel_virtualbase_match(const VirtualQAbstractListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QAbstractListModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QAbstractListModel_virtualbase_span(const VirtualQAbstractListModel* self, QModelIndex* index) {

	return new QSize(self->QAbstractListModel::span(*index));
}

struct miqt_map /* of int to struct miqt_string */  QAbstractListModel_virtualbase_roleNames(const VirtualQAbstractListModel* self) {

	QHash<int, QByteArray> _ret = self->QAbstractListModel::roleNames();
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

bool QAbstractListModel_virtualbase_submit(VirtualQAbstractListModel* self) {

	return self->QAbstractListModel::submit();
}

void QAbstractListModel_virtualbase_revert(VirtualQAbstractListModel* self) {

	self->QAbstractListModel::revert();
}

bool QAbstractListModel_virtualbase_event(VirtualQAbstractListModel* self, QEvent* event) {

	return self->QAbstractListModel::event(event);
}

bool QAbstractListModel_virtualbase_eventFilter(VirtualQAbstractListModel* self, QObject* watched, QEvent* event) {

	return self->QAbstractListModel::eventFilter(watched, event);
}

void QAbstractListModel_virtualbase_timerEvent(VirtualQAbstractListModel* self, QTimerEvent* event) {

	self->QAbstractListModel::timerEvent(event);
}

void QAbstractListModel_virtualbase_childEvent(VirtualQAbstractListModel* self, QChildEvent* event) {

	self->QAbstractListModel::childEvent(event);
}

void QAbstractListModel_virtualbase_customEvent(VirtualQAbstractListModel* self, QEvent* event) {

	self->QAbstractListModel::customEvent(event);
}

void QAbstractListModel_virtualbase_connectNotify(VirtualQAbstractListModel* self, QMetaMethod* signal) {

	self->QAbstractListModel::connectNotify(*signal);
}

void QAbstractListModel_virtualbase_disconnectNotify(VirtualQAbstractListModel* self, QMetaMethod* signal) {

	self->QAbstractListModel::disconnectNotify(*signal);
}

const QMetaObject* QAbstractListModel_staticMetaObject() { return &QAbstractListModel::staticMetaObject; }

const QAbstractListModel_VTable* QAbstractListModel_vtbl(const VirtualQAbstractListModel* self) { return self->vtbl; }
void* QAbstractListModel_vdata(const VirtualQAbstractListModel* self) { return self->vdata; }
void QAbstractListModel_setVdata(VirtualQAbstractListModel* self, void* vdata) { self->vdata = vdata; }

void QAbstractListModel_protectedbase_resetInternalData(VirtualQAbstractListModel* self) {
	self->resetInternalData();
}

QModelIndex* QAbstractListModel_protectedbase_createIndex(const VirtualQAbstractListModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QAbstractListModel_protectedbase_encodeData(const VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QAbstractListModel_protectedbase_decodeData(VirtualQAbstractListModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QAbstractListModel_protectedbase_beginInsertRows(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractListModel_protectedbase_endInsertRows(VirtualQAbstractListModel* self) {
	self->endInsertRows();
}

void QAbstractListModel_protectedbase_beginRemoveRows(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractListModel_protectedbase_endRemoveRows(VirtualQAbstractListModel* self) {
	self->endRemoveRows();
}

bool QAbstractListModel_protectedbase_beginMoveRows(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QAbstractListModel_protectedbase_endMoveRows(VirtualQAbstractListModel* self) {
	self->endMoveRows();
}

void QAbstractListModel_protectedbase_beginInsertColumns(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractListModel_protectedbase_endInsertColumns(VirtualQAbstractListModel* self) {
	self->endInsertColumns();
}

void QAbstractListModel_protectedbase_beginRemoveColumns(VirtualQAbstractListModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QAbstractListModel_protectedbase_endRemoveColumns(VirtualQAbstractListModel* self) {
	self->endRemoveColumns();
}

bool QAbstractListModel_protectedbase_beginMoveColumns(VirtualQAbstractListModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QAbstractListModel_protectedbase_endMoveColumns(VirtualQAbstractListModel* self) {
	self->endMoveColumns();
}

void QAbstractListModel_protectedbase_beginResetModel(VirtualQAbstractListModel* self) {
	self->beginResetModel();
}

void QAbstractListModel_protectedbase_endResetModel(VirtualQAbstractListModel* self) {
	self->endResetModel();
}

void QAbstractListModel_protectedbase_changePersistentIndex(VirtualQAbstractListModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QAbstractListModel_protectedbase_changePersistentIndexList(VirtualQAbstractListModel* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
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

struct miqt_array /* of QModelIndex* */  QAbstractListModel_protectedbase_persistentIndexList(const VirtualQAbstractListModel* self) {
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

QObject* QAbstractListModel_protectedbase_sender(const VirtualQAbstractListModel* self) {
	return self->sender();
}

int QAbstractListModel_protectedbase_senderSignalIndex(const VirtualQAbstractListModel* self) {
	return self->senderSignalIndex();
}

int QAbstractListModel_protectedbase_receivers(const VirtualQAbstractListModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractListModel_protectedbase_isSignalConnected(const VirtualQAbstractListModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractListModel_delete(QAbstractListModel* self) {
	delete self;
}

