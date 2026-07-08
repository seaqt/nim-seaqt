#include <QAbstractItemModel>
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
#include <QPdfBookmarkModel>
#include <QPdfDocument>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qpdfbookmarkmodel.h>
#include "gen_qpdfbookmarkmodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfBookmarkModel final : public QPdfBookmarkModel {
	const QPdfBookmarkModel_VTable* vtbl;
public:
	friend void* QPdfBookmarkModel_vdata(VirtualQPdfBookmarkModel* self);
	friend VirtualQPdfBookmarkModel* vdata_QPdfBookmarkModel(void* vdata);

	VirtualQPdfBookmarkModel(const QPdfBookmarkModel_VTable* vtbl): QPdfBookmarkModel(), vtbl(vtbl) {}
	VirtualQPdfBookmarkModel(const QPdfBookmarkModel_VTable* vtbl, QObject* parent): QPdfBookmarkModel(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfBookmarkModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfBookmarkModel::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfBookmarkModel_virtualbase_metaObject(const VirtualQPdfBookmarkModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfBookmarkModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfBookmarkModel_virtualbase_metacast(VirtualQPdfBookmarkModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfBookmarkModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_metacall(VirtualQPdfBookmarkModel* self, int param1, int param2, void** param3);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QPdfBookmarkModel::data(index, role);
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

	friend QVariant* QPdfBookmarkModel_virtualbase_data(const VirtualQPdfBookmarkModel* self, QModelIndex* index, int role);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QPdfBookmarkModel::index(row, column, parent);
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

	friend QModelIndex* QPdfBookmarkModel_virtualbase_index(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex parent(const QModelIndex& index) const override {
		if (vtbl->parent == 0) {
			return QPdfBookmarkModel::parent(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->parent(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QPdfBookmarkModel_virtualbase_parent(const VirtualQPdfBookmarkModel* self, QModelIndex* index);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QPdfBookmarkModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->rowCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_rowCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);

	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QPdfBookmarkModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->columnCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_columnCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QPdfBookmarkModel::roleNames();
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

	friend struct seaqt_map /* of int to struct seaqt_string */  QPdfBookmarkModel_virtualbase_roleNames(const VirtualQPdfBookmarkModel* self);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QPdfBookmarkModel::sibling(row, column, idx);
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

	friend QModelIndex* QPdfBookmarkModel_virtualbase_sibling(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* idx);

	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QPdfBookmarkModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->hasChildren(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_hasChildren(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QPdfBookmarkModel::setData(index, value, role);
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

	friend bool QPdfBookmarkModel_virtualbase_setData(VirtualQPdfBookmarkModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QPdfBookmarkModel::headerData(section, orientation, role);
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

	friend QVariant* QPdfBookmarkModel_virtualbase_headerData(const VirtualQPdfBookmarkModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QPdfBookmarkModel::setHeaderData(section, orientation, value, role);
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

	friend bool QPdfBookmarkModel_virtualbase_setHeaderData(VirtualQPdfBookmarkModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QPdfBookmarkModel::itemData(index);
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

	friend struct seaqt_map /* of int to QVariant* */  QPdfBookmarkModel_virtualbase_itemData(const VirtualQPdfBookmarkModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QPdfBookmarkModel::setItemData(index, roles);
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

	friend bool QPdfBookmarkModel_virtualbase_setItemData(VirtualQPdfBookmarkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QPdfBookmarkModel::mimeTypes();
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

	friend struct seaqt_array /* of struct seaqt_string */  QPdfBookmarkModel_virtualbase_mimeTypes(const VirtualQPdfBookmarkModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QPdfBookmarkModel::mimeData(indexes);
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

	friend QMimeData* QPdfBookmarkModel_virtualbase_mimeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QPdfBookmarkModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QPdfBookmarkModel_virtualbase_canDropMimeData(const VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QPdfBookmarkModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QPdfBookmarkModel_virtualbase_dropMimeData(VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QPdfBookmarkModel::supportedDropActions();
		}

		int callback_return_value = vtbl->supportedDropActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_supportedDropActions(const VirtualQPdfBookmarkModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QPdfBookmarkModel::supportedDragActions();
		}

		int callback_return_value = vtbl->supportedDragActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_supportedDragActions(const VirtualQPdfBookmarkModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QPdfBookmarkModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_insertRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QPdfBookmarkModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_insertColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QPdfBookmarkModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_removeRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QPdfBookmarkModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_removeColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QPdfBookmarkModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QPdfBookmarkModel_virtualbase_moveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QPdfBookmarkModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QPdfBookmarkModel_virtualbase_moveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QPdfBookmarkModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		vtbl->fetchMore(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_fetchMore(VirtualQPdfBookmarkModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QPdfBookmarkModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canFetchMore(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_canFetchMore(const VirtualQPdfBookmarkModel* self, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QPdfBookmarkModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int callback_return_value = vtbl->flags(this, sigval1);
		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QPdfBookmarkModel_virtualbase_flags(const VirtualQPdfBookmarkModel* self, QModelIndex* index);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QPdfBookmarkModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->sort(this, sigval1, sigval2);
	}

	friend void QPdfBookmarkModel_virtualbase_sort(VirtualQPdfBookmarkModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QPdfBookmarkModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QPdfBookmarkModel_virtualbase_buddy(const VirtualQPdfBookmarkModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QPdfBookmarkModel::match(start, role, value, hits, flags);
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

	friend struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_virtualbase_match(const VirtualQPdfBookmarkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QPdfBookmarkModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfBookmarkModel_virtualbase_span(const VirtualQPdfBookmarkModel* self, QModelIndex* index);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QPdfBookmarkModel::submit();
		}

		bool callback_return_value = vtbl->submit(this);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_submit(VirtualQPdfBookmarkModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QPdfBookmarkModel::revert();
			return;
		}

		vtbl->revert(this);
	}

	friend void QPdfBookmarkModel_virtualbase_revert(VirtualQPdfBookmarkModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfBookmarkModel::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_event(VirtualQPdfBookmarkModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfBookmarkModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfBookmarkModel_virtualbase_eventFilter(VirtualQPdfBookmarkModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfBookmarkModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_timerEvent(VirtualQPdfBookmarkModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfBookmarkModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_childEvent(VirtualQPdfBookmarkModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfBookmarkModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_customEvent(VirtualQPdfBookmarkModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfBookmarkModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_connectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfBookmarkModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfBookmarkModel_virtualbase_disconnectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPdfBookmarkModel_protectedbase_resetInternalData(VirtualQPdfBookmarkModel* self);
	friend QModelIndex* QPdfBookmarkModel_protectedbase_createIndex_row_column(const VirtualQPdfBookmarkModel* self, int row, int column);
	friend void QPdfBookmarkModel_protectedbase_encodeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QPdfBookmarkModel_protectedbase_decodeData(VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QPdfBookmarkModel_protectedbase_beginInsertRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfBookmarkModel_protectedbase_endInsertRows(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_beginRemoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfBookmarkModel_protectedbase_endRemoveRows(VirtualQPdfBookmarkModel* self);
	friend bool QPdfBookmarkModel_protectedbase_beginMoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QPdfBookmarkModel_protectedbase_endMoveRows(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_beginInsertColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfBookmarkModel_protectedbase_endInsertColumns(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_beginRemoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfBookmarkModel_protectedbase_endRemoveColumns(VirtualQPdfBookmarkModel* self);
	friend bool QPdfBookmarkModel_protectedbase_beginMoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QPdfBookmarkModel_protectedbase_endMoveColumns(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_beginResetModel(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_endResetModel(VirtualQPdfBookmarkModel* self);
	friend void QPdfBookmarkModel_protectedbase_changePersistentIndex(VirtualQPdfBookmarkModel* self, QModelIndex* from, QModelIndex* to);
	friend void QPdfBookmarkModel_protectedbase_changePersistentIndexList(VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
	friend struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_protectedbase_persistentIndexList(const VirtualQPdfBookmarkModel* self);
	friend QObject* QPdfBookmarkModel_protectedbase_sender(const VirtualQPdfBookmarkModel* self);
	friend int QPdfBookmarkModel_protectedbase_senderSignalIndex(const VirtualQPdfBookmarkModel* self);
	friend int QPdfBookmarkModel_protectedbase_receivers(const VirtualQPdfBookmarkModel* self, const char* signal);
	friend bool QPdfBookmarkModel_protectedbase_isSignalConnected(const VirtualQPdfBookmarkModel* self, QMetaMethod* signal);
};

VirtualQPdfBookmarkModel* QPdfBookmarkModel_new(const QPdfBookmarkModel_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfBookmarkModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfBookmarkModel(vtbl) : nullptr;
}

VirtualQPdfBookmarkModel* QPdfBookmarkModel_new_parent(const QPdfBookmarkModel_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfBookmarkModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfBookmarkModel(vtbl, parent) : nullptr;
}

void QPdfBookmarkModel_virtbase(QPdfBookmarkModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QPdfBookmarkModel_metaObject(const QPdfBookmarkModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfBookmarkModel_metacast(QPdfBookmarkModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfBookmarkModel_metacall(QPdfBookmarkModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfBookmarkModel_tr_s(const char* s) {
	QString _ret = QPdfBookmarkModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfBookmarkModel_trUtf8_s(const char* s) {
	QString _ret = QPdfBookmarkModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPdfDocument* QPdfBookmarkModel_document(const QPdfBookmarkModel* self) {
	return self->document();
}

void QPdfBookmarkModel_setDocument(QPdfBookmarkModel* self, QPdfDocument* document) {
	self->setDocument(document);
}

int QPdfBookmarkModel_structureMode(const QPdfBookmarkModel* self) {
	QPdfBookmarkModel::StructureMode _ret = self->structureMode();
	return static_cast<int>(_ret);
}

void QPdfBookmarkModel_setStructureMode(QPdfBookmarkModel* self, int mode) {
	self->setStructureMode(static_cast<QPdfBookmarkModel::StructureMode>(mode));
}

QVariant* QPdfBookmarkModel_data(const QPdfBookmarkModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

QModelIndex* QPdfBookmarkModel_index(const QPdfBookmarkModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QPdfBookmarkModel_parent(const QPdfBookmarkModel* self, QModelIndex* index) {
	return new QModelIndex(self->parent(*index));
}

int QPdfBookmarkModel_rowCount(const QPdfBookmarkModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QPdfBookmarkModel_columnCount(const QPdfBookmarkModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfBookmarkModel_roleNames(const QPdfBookmarkModel* self) {
	QHash<int, QByteArray> _ret = self->roleNames();
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

void QPdfBookmarkModel_documentChanged(QPdfBookmarkModel* self, QPdfDocument* document) {
	self->documentChanged(document);
}

void QPdfBookmarkModel_connect_documentChanged(QPdfBookmarkModel* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPdfDocument*);
		void operator()(QPdfDocument* document) {
			QPdfDocument* sigval1 = document;
			callback(slot, sigval1);
		}
	};
	QPdfBookmarkModel::connect(self, static_cast<void (QPdfBookmarkModel::*)(QPdfDocument*)>(&QPdfBookmarkModel::documentChanged), self, local_caller{slot, callback, release});
}

void QPdfBookmarkModel_structureModeChanged(QPdfBookmarkModel* self, int structureMode) {
	self->structureModeChanged(static_cast<QPdfBookmarkModel::StructureMode>(structureMode));
}

void QPdfBookmarkModel_connect_structureModeChanged(QPdfBookmarkModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QPdfBookmarkModel::StructureMode structureMode) {
			QPdfBookmarkModel::StructureMode structureMode_ret = structureMode;
			int sigval1 = static_cast<int>(structureMode_ret);
			callback(slot, sigval1);
		}
	};
	QPdfBookmarkModel::connect(self, static_cast<void (QPdfBookmarkModel::*)(QPdfBookmarkModel::StructureMode)>(&QPdfBookmarkModel::structureModeChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QPdfBookmarkModel_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfBookmarkModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfBookmarkModel_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfBookmarkModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfBookmarkModel_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QPdfBookmarkModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfBookmarkModel_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfBookmarkModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfBookmarkModel_staticMetaObject() { return &QPdfBookmarkModel::staticMetaObject; }
void* QPdfBookmarkModel_vdata(VirtualQPdfBookmarkModel* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfBookmarkModel>()); }
VirtualQPdfBookmarkModel* vdata_QPdfBookmarkModel(void* vdata) { return reinterpret_cast<VirtualQPdfBookmarkModel*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfBookmarkModel>()); }

QMetaObject* QPdfBookmarkModel_virtualbase_metaObject(const VirtualQPdfBookmarkModel* self) {

	return (QMetaObject*) self->QPdfBookmarkModel::metaObject();
}

void* QPdfBookmarkModel_virtualbase_metacast(VirtualQPdfBookmarkModel* self, const char* param1) {

	return self->QPdfBookmarkModel::qt_metacast(param1);
}

int QPdfBookmarkModel_virtualbase_metacall(VirtualQPdfBookmarkModel* self, int param1, int param2, void** param3) {

	return self->QPdfBookmarkModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QPdfBookmarkModel_virtualbase_data(const VirtualQPdfBookmarkModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QPdfBookmarkModel::data(*index, static_cast<int>(role)));
}

QModelIndex* QPdfBookmarkModel_virtualbase_index(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QPdfBookmarkModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QPdfBookmarkModel_virtualbase_parent(const VirtualQPdfBookmarkModel* self, QModelIndex* index) {

	return new QModelIndex(self->QPdfBookmarkModel::parent(*index));
}

int QPdfBookmarkModel_virtualbase_rowCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent) {

	return self->QPdfBookmarkModel::rowCount(*parent);
}

int QPdfBookmarkModel_virtualbase_columnCount(const VirtualQPdfBookmarkModel* self, QModelIndex* parent) {

	return self->QPdfBookmarkModel::columnCount(*parent);
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfBookmarkModel_virtualbase_roleNames(const VirtualQPdfBookmarkModel* self) {

	QHash<int, QByteArray> _ret = self->QPdfBookmarkModel::roleNames();
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

QModelIndex* QPdfBookmarkModel_virtualbase_sibling(const VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QPdfBookmarkModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QPdfBookmarkModel_virtualbase_hasChildren(const VirtualQPdfBookmarkModel* self, QModelIndex* parent) {

	return self->QPdfBookmarkModel::hasChildren(*parent);
}

bool QPdfBookmarkModel_virtualbase_setData(VirtualQPdfBookmarkModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QPdfBookmarkModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QPdfBookmarkModel_virtualbase_headerData(const VirtualQPdfBookmarkModel* self, int section, int orientation, int role) {

	return new QVariant(self->QPdfBookmarkModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QPdfBookmarkModel_virtualbase_setHeaderData(VirtualQPdfBookmarkModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QPdfBookmarkModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct seaqt_map /* of int to QVariant* */  QPdfBookmarkModel_virtualbase_itemData(const VirtualQPdfBookmarkModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QPdfBookmarkModel::itemData(*index);
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

bool QPdfBookmarkModel_virtualbase_setItemData(VirtualQPdfBookmarkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QPdfBookmarkModel::setItemData(*index, roles_QMap);
}

struct seaqt_array /* of struct seaqt_string */  QPdfBookmarkModel_virtualbase_mimeTypes(const VirtualQPdfBookmarkModel* self) {

	QStringList _ret = self->QPdfBookmarkModel::mimeTypes();
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

QMimeData* QPdfBookmarkModel_virtualbase_mimeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QPdfBookmarkModel::mimeData(indexes_QList);
}

bool QPdfBookmarkModel_virtualbase_canDropMimeData(const VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfBookmarkModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QPdfBookmarkModel_virtualbase_dropMimeData(VirtualQPdfBookmarkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfBookmarkModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QPdfBookmarkModel_virtualbase_supportedDropActions(const VirtualQPdfBookmarkModel* self) {

	Qt::DropActions _ret = self->QPdfBookmarkModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QPdfBookmarkModel_virtualbase_supportedDragActions(const VirtualQPdfBookmarkModel* self) {

	Qt::DropActions _ret = self->QPdfBookmarkModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QPdfBookmarkModel_virtualbase_insertRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfBookmarkModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfBookmarkModel_virtualbase_insertColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfBookmarkModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfBookmarkModel_virtualbase_removeRows(VirtualQPdfBookmarkModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfBookmarkModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfBookmarkModel_virtualbase_removeColumns(VirtualQPdfBookmarkModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfBookmarkModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfBookmarkModel_virtualbase_moveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfBookmarkModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QPdfBookmarkModel_virtualbase_moveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfBookmarkModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QPdfBookmarkModel_virtualbase_fetchMore(VirtualQPdfBookmarkModel* self, QModelIndex* parent) {

	self->QPdfBookmarkModel::fetchMore(*parent);
}

bool QPdfBookmarkModel_virtualbase_canFetchMore(const VirtualQPdfBookmarkModel* self, QModelIndex* parent) {

	return self->QPdfBookmarkModel::canFetchMore(*parent);
}

int QPdfBookmarkModel_virtualbase_flags(const VirtualQPdfBookmarkModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QPdfBookmarkModel::flags(*index);
	return static_cast<int>(_ret);
}

void QPdfBookmarkModel_virtualbase_sort(VirtualQPdfBookmarkModel* self, int column, int order) {

	self->QPdfBookmarkModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QPdfBookmarkModel_virtualbase_buddy(const VirtualQPdfBookmarkModel* self, QModelIndex* index) {

	return new QModelIndex(self->QPdfBookmarkModel::buddy(*index));
}

struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_virtualbase_match(const VirtualQPdfBookmarkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QPdfBookmarkModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QPdfBookmarkModel_virtualbase_span(const VirtualQPdfBookmarkModel* self, QModelIndex* index) {

	return new QSize(self->QPdfBookmarkModel::span(*index));
}

bool QPdfBookmarkModel_virtualbase_submit(VirtualQPdfBookmarkModel* self) {

	return self->QPdfBookmarkModel::submit();
}

void QPdfBookmarkModel_virtualbase_revert(VirtualQPdfBookmarkModel* self) {

	self->QPdfBookmarkModel::revert();
}

bool QPdfBookmarkModel_virtualbase_event(VirtualQPdfBookmarkModel* self, QEvent* event) {

	return self->QPdfBookmarkModel::event(event);
}

bool QPdfBookmarkModel_virtualbase_eventFilter(VirtualQPdfBookmarkModel* self, QObject* watched, QEvent* event) {

	return self->QPdfBookmarkModel::eventFilter(watched, event);
}

void QPdfBookmarkModel_virtualbase_timerEvent(VirtualQPdfBookmarkModel* self, QTimerEvent* event) {

	self->QPdfBookmarkModel::timerEvent(event);
}

void QPdfBookmarkModel_virtualbase_childEvent(VirtualQPdfBookmarkModel* self, QChildEvent* event) {

	self->QPdfBookmarkModel::childEvent(event);
}

void QPdfBookmarkModel_virtualbase_customEvent(VirtualQPdfBookmarkModel* self, QEvent* event) {

	self->QPdfBookmarkModel::customEvent(event);
}

void QPdfBookmarkModel_virtualbase_connectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal) {

	self->QPdfBookmarkModel::connectNotify(*signal);
}

void QPdfBookmarkModel_virtualbase_disconnectNotify(VirtualQPdfBookmarkModel* self, QMetaMethod* signal) {

	self->QPdfBookmarkModel::disconnectNotify(*signal);
}

void QPdfBookmarkModel_protectedbase_resetInternalData(VirtualQPdfBookmarkModel* self) {
	self->resetInternalData();
}

QModelIndex* QPdfBookmarkModel_protectedbase_createIndex_row_column(const VirtualQPdfBookmarkModel* self, int row, int column) {
	return new QModelIndex(self->createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QPdfBookmarkModel_protectedbase_encodeData(const VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->encodeData(indexes_QList, *stream);
}

bool QPdfBookmarkModel_protectedbase_decodeData(VirtualQPdfBookmarkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QPdfBookmarkModel_protectedbase_beginInsertRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfBookmarkModel_protectedbase_endInsertRows(VirtualQPdfBookmarkModel* self) {
	self->endInsertRows();
}

void QPdfBookmarkModel_protectedbase_beginRemoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfBookmarkModel_protectedbase_endRemoveRows(VirtualQPdfBookmarkModel* self) {
	self->endRemoveRows();
}

bool QPdfBookmarkModel_protectedbase_beginMoveRows(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QPdfBookmarkModel_protectedbase_endMoveRows(VirtualQPdfBookmarkModel* self) {
	self->endMoveRows();
}

void QPdfBookmarkModel_protectedbase_beginInsertColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last) {
	self->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfBookmarkModel_protectedbase_endInsertColumns(VirtualQPdfBookmarkModel* self) {
	self->endInsertColumns();
}

void QPdfBookmarkModel_protectedbase_beginRemoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* parent, int first, int last) {
	self->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfBookmarkModel_protectedbase_endRemoveColumns(VirtualQPdfBookmarkModel* self) {
	self->endRemoveColumns();
}

bool QPdfBookmarkModel_protectedbase_beginMoveColumns(VirtualQPdfBookmarkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QPdfBookmarkModel_protectedbase_endMoveColumns(VirtualQPdfBookmarkModel* self) {
	self->endMoveColumns();
}

void QPdfBookmarkModel_protectedbase_beginResetModel(VirtualQPdfBookmarkModel* self) {
	self->beginResetModel();
}

void QPdfBookmarkModel_protectedbase_endResetModel(VirtualQPdfBookmarkModel* self) {
	self->endResetModel();
}

void QPdfBookmarkModel_protectedbase_changePersistentIndex(VirtualQPdfBookmarkModel* self, QModelIndex* from, QModelIndex* to) {
	self->changePersistentIndex(*from, *to);
}

void QPdfBookmarkModel_protectedbase_changePersistentIndexList(VirtualQPdfBookmarkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to) {
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

struct seaqt_array /* of QModelIndex* */  QPdfBookmarkModel_protectedbase_persistentIndexList(const VirtualQPdfBookmarkModel* self) {
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

QObject* QPdfBookmarkModel_protectedbase_sender(const VirtualQPdfBookmarkModel* self) {
	return self->sender();
}

int QPdfBookmarkModel_protectedbase_senderSignalIndex(const VirtualQPdfBookmarkModel* self) {
	return self->senderSignalIndex();
}

int QPdfBookmarkModel_protectedbase_receivers(const VirtualQPdfBookmarkModel* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfBookmarkModel_protectedbase_isSignalConnected(const VirtualQPdfBookmarkModel* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfBookmarkModel_delete(QPdfBookmarkModel* self) {
	delete self;
}

