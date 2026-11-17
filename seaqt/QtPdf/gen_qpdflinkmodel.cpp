#include <QAbstractItemModel>
#include <QAbstractListModel>
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
#include <QModelRoleDataSpan>
#include <QObject>
#include <QPdfDocument>
#include <QPdfLink>
#include <QPdfLinkModel>
#include <QPointF>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qpdflinkmodel.h>
#include "gen_qpdflinkmodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfLinkModel final : public QPdfLinkModel {
	const QPdfLinkModel_VTable* vtbl;
public:
	friend void* QPdfLinkModel_vdata(VirtualQPdfLinkModel* self);
	friend VirtualQPdfLinkModel* vdata_QPdfLinkModel(void* vdata);

	VirtualQPdfLinkModel(const QPdfLinkModel_VTable* vtbl): QPdfLinkModel(), vtbl(vtbl) {}
	VirtualQPdfLinkModel(const QPdfLinkModel_VTable* vtbl, QObject* parent): QPdfLinkModel(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfLinkModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfLinkModel::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfLinkModel_virtualbase_metaObject(const VirtualQPdfLinkModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfLinkModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfLinkModel_virtualbase_metacast(VirtualQPdfLinkModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfLinkModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfLinkModel_virtualbase_metacall(VirtualQPdfLinkModel* self, int param1, int param2, void** param3);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QPdfLinkModel::roleNames();
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

	friend struct seaqt_map /* of int to struct seaqt_string */  QPdfLinkModel_virtualbase_roleNames(const VirtualQPdfLinkModel* self);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QPdfLinkModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->rowCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfLinkModel_virtualbase_rowCount(const VirtualQPdfLinkModel* self, QModelIndex* parent);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QPdfLinkModel::data(index, role);
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

	friend QVariant* QPdfLinkModel_virtualbase_data(const VirtualQPdfLinkModel* self, QModelIndex* index, int role);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QPdfLinkModel::index(row, column, parent);
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

	friend QModelIndex* QPdfLinkModel_virtualbase_index(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QPdfLinkModel::sibling(row, column, idx);
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

	friend QModelIndex* QPdfLinkModel_virtualbase_sibling(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QPdfLinkModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QPdfLinkModel_virtualbase_dropMimeData(VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QPdfLinkModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int callback_return_value = vtbl->flags(this, sigval1);
		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QPdfLinkModel_virtualbase_flags(const VirtualQPdfLinkModel* self, QModelIndex* index);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QPdfLinkModel::setData(index, value, role);
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

	friend bool QPdfLinkModel_virtualbase_setData(VirtualQPdfLinkModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QPdfLinkModel::headerData(section, orientation, role);
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

	friend QVariant* QPdfLinkModel_virtualbase_headerData(const VirtualQPdfLinkModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QPdfLinkModel::setHeaderData(section, orientation, value, role);
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

	friend bool QPdfLinkModel_virtualbase_setHeaderData(VirtualQPdfLinkModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QPdfLinkModel::itemData(index);
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

	friend struct seaqt_map /* of int to QVariant* */  QPdfLinkModel_virtualbase_itemData(const VirtualQPdfLinkModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QPdfLinkModel::setItemData(index, roles);
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

	friend bool QPdfLinkModel_virtualbase_setItemData(VirtualQPdfLinkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);

	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QPdfLinkModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		bool callback_return_value = vtbl->clearItemData(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_clearItemData(VirtualQPdfLinkModel* self, QModelIndex* index);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QPdfLinkModel::mimeTypes();
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

	friend struct seaqt_array /* of struct seaqt_string */  QPdfLinkModel_virtualbase_mimeTypes(const VirtualQPdfLinkModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QPdfLinkModel::mimeData(indexes);
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

	friend QMimeData* QPdfLinkModel_virtualbase_mimeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QPdfLinkModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QPdfLinkModel_virtualbase_canDropMimeData(const VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QPdfLinkModel::supportedDropActions();
		}

		int callback_return_value = vtbl->supportedDropActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfLinkModel_virtualbase_supportedDropActions(const VirtualQPdfLinkModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QPdfLinkModel::supportedDragActions();
		}

		int callback_return_value = vtbl->supportedDragActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfLinkModel_virtualbase_supportedDragActions(const VirtualQPdfLinkModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QPdfLinkModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_insertRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QPdfLinkModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_insertColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QPdfLinkModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_removeRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QPdfLinkModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_removeColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QPdfLinkModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QPdfLinkModel_virtualbase_moveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QPdfLinkModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QPdfLinkModel_virtualbase_moveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QPdfLinkModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		vtbl->fetchMore(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_fetchMore(VirtualQPdfLinkModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QPdfLinkModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canFetchMore(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_canFetchMore(const VirtualQPdfLinkModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QPdfLinkModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->sort(this, sigval1, sigval2);
	}

	friend void QPdfLinkModel_virtualbase_sort(VirtualQPdfLinkModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QPdfLinkModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QPdfLinkModel_virtualbase_buddy(const VirtualQPdfLinkModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QPdfLinkModel::match(start, role, value, hits, flags);
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

	friend struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_virtualbase_match(const VirtualQPdfLinkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QPdfLinkModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfLinkModel_virtualbase_span(const VirtualQPdfLinkModel* self, QModelIndex* index);

	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QPdfLinkModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);
		vtbl->multiData(this, sigval1, sigval2);
	}

	friend void QPdfLinkModel_virtualbase_multiData(const VirtualQPdfLinkModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QPdfLinkModel::submit();
		}

		bool callback_return_value = vtbl->submit(this);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_submit(VirtualQPdfLinkModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QPdfLinkModel::revert();
			return;
		}

		vtbl->revert(this);
	}

	friend void QPdfLinkModel_virtualbase_revert(VirtualQPdfLinkModel* self);

	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QPdfLinkModel::resetInternalData();
			return;
		}

		vtbl->resetInternalData(this);
	}

	friend void QPdfLinkModel_virtualbase_resetInternalData(VirtualQPdfLinkModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfLinkModel::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_event(VirtualQPdfLinkModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfLinkModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfLinkModel_virtualbase_eventFilter(VirtualQPdfLinkModel* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfLinkModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_timerEvent(VirtualQPdfLinkModel* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfLinkModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_childEvent(VirtualQPdfLinkModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfLinkModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_customEvent(VirtualQPdfLinkModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfLinkModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_connectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfLinkModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfLinkModel_virtualbase_disconnectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QModelIndex* QPdfLinkModel_protectedbase_createIndex_row_column(const VirtualQPdfLinkModel* self, int row, int column);
	friend void QPdfLinkModel_protectedbase_encodeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QPdfLinkModel_protectedbase_decodeData(VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QPdfLinkModel_protectedbase_beginInsertRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfLinkModel_protectedbase_endInsertRows(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_beginRemoveRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfLinkModel_protectedbase_endRemoveRows(VirtualQPdfLinkModel* self);
	friend bool QPdfLinkModel_protectedbase_beginMoveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QPdfLinkModel_protectedbase_endMoveRows(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_beginInsertColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfLinkModel_protectedbase_endInsertColumns(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_beginRemoveColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfLinkModel_protectedbase_endRemoveColumns(VirtualQPdfLinkModel* self);
	friend bool QPdfLinkModel_protectedbase_beginMoveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QPdfLinkModel_protectedbase_endMoveColumns(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_beginResetModel(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_endResetModel(VirtualQPdfLinkModel* self);
	friend void QPdfLinkModel_protectedbase_changePersistentIndex(VirtualQPdfLinkModel* self, QModelIndex* from, QModelIndex* to);
	friend void QPdfLinkModel_protectedbase_changePersistentIndexList(VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
	friend struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_protectedbase_persistentIndexList(const VirtualQPdfLinkModel* self);
	friend QObject* QPdfLinkModel_protectedbase_sender(const VirtualQPdfLinkModel* self);
	friend int QPdfLinkModel_protectedbase_senderSignalIndex(const VirtualQPdfLinkModel* self);
	friend int QPdfLinkModel_protectedbase_receivers(const VirtualQPdfLinkModel* self, const char* signal);
	friend bool QPdfLinkModel_protectedbase_isSignalConnected(const VirtualQPdfLinkModel* self, QMetaMethod* signal);
};

VirtualQPdfLinkModel* QPdfLinkModel_new(const QPdfLinkModel_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfLinkModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfLinkModel(vtbl) : nullptr;
}

VirtualQPdfLinkModel* QPdfLinkModel_new_parent(const QPdfLinkModel_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfLinkModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfLinkModel(vtbl, parent) : nullptr;
}

void QPdfLinkModel_virtbase(QPdfLinkModel* src, QAbstractListModel** outptr_QAbstractListModel) {
	*outptr_QAbstractListModel = static_cast<QAbstractListModel*>(src);
}

QMetaObject* QPdfLinkModel_metaObject(const QPdfLinkModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfLinkModel_metacast(QPdfLinkModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfLinkModel_metacall(QPdfLinkModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfLinkModel_tr_s(const char* s) {
	QString _ret = QPdfLinkModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPdfDocument* QPdfLinkModel_document(const QPdfLinkModel* self) {
	return self->document();
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfLinkModel_roleNames(const QPdfLinkModel* self) {
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

int QPdfLinkModel_rowCount(const QPdfLinkModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

QVariant* QPdfLinkModel_data(const QPdfLinkModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

int QPdfLinkModel_page(const QPdfLinkModel* self) {
	return self->page();
}

QPdfLink* QPdfLinkModel_linkAt(const QPdfLinkModel* self, QPointF* point) {
	return new QPdfLink(self->linkAt(*point));
}

void QPdfLinkModel_setDocument(QPdfLinkModel* self, QPdfDocument* document) {
	self->setDocument(document);
}

void QPdfLinkModel_setPage(QPdfLinkModel* self, int page) {
	self->setPage(static_cast<int>(page));
}

void QPdfLinkModel_documentChanged(QPdfLinkModel* self) {
	self->documentChanged();
}

void QPdfLinkModel_connect_documentChanged(QPdfLinkModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QPdfLinkModel::connect(self, static_cast<void (QPdfLinkModel::*)()>(&QPdfLinkModel::documentChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QPdfLinkModel_pageChanged(QPdfLinkModel* self, int page) {
	self->pageChanged(static_cast<int>(page));
}

void QPdfLinkModel_connect_pageChanged(QPdfLinkModel* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfLinkModel::connect(self, static_cast<void (QPdfLinkModel::*)(int)>(&QPdfLinkModel::pageChanged), self, [callback, release = seaqt::release_callback{slot,release}](int page) {
			int sigval1 = page;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QPdfLinkModel_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfLinkModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfLinkModel_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfLinkModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfLinkModel_staticMetaObject() { return &QPdfLinkModel::staticMetaObject; }
void* QPdfLinkModel_vdata(VirtualQPdfLinkModel* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfLinkModel>()); }
VirtualQPdfLinkModel* vdata_QPdfLinkModel(void* vdata) { return reinterpret_cast<VirtualQPdfLinkModel*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfLinkModel>()); }

QMetaObject* QPdfLinkModel_virtualbase_metaObject(const VirtualQPdfLinkModel* self) {

	return (QMetaObject*) self->QPdfLinkModel::metaObject();
}

void* QPdfLinkModel_virtualbase_metacast(VirtualQPdfLinkModel* self, const char* param1) {

	return self->QPdfLinkModel::qt_metacast(param1);
}

int QPdfLinkModel_virtualbase_metacall(VirtualQPdfLinkModel* self, int param1, int param2, void** param3) {

	return self->QPdfLinkModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfLinkModel_virtualbase_roleNames(const VirtualQPdfLinkModel* self) {

	QHash<int, QByteArray> _ret = self->QPdfLinkModel::roleNames();
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

int QPdfLinkModel_virtualbase_rowCount(const VirtualQPdfLinkModel* self, QModelIndex* parent) {

	return self->QPdfLinkModel::rowCount(*parent);
}

QVariant* QPdfLinkModel_virtualbase_data(const VirtualQPdfLinkModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QPdfLinkModel::data(*index, static_cast<int>(role)));
}

QModelIndex* QPdfLinkModel_virtualbase_index(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QPdfLinkModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QPdfLinkModel_virtualbase_sibling(const VirtualQPdfLinkModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QPdfLinkModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QPdfLinkModel_virtualbase_dropMimeData(VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfLinkModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QPdfLinkModel_virtualbase_flags(const VirtualQPdfLinkModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QPdfLinkModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QPdfLinkModel_virtualbase_setData(VirtualQPdfLinkModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QPdfLinkModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QPdfLinkModel_virtualbase_headerData(const VirtualQPdfLinkModel* self, int section, int orientation, int role) {

	return new QVariant(self->QPdfLinkModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QPdfLinkModel_virtualbase_setHeaderData(VirtualQPdfLinkModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QPdfLinkModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct seaqt_map /* of int to QVariant* */  QPdfLinkModel_virtualbase_itemData(const VirtualQPdfLinkModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QPdfLinkModel::itemData(*index);
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

bool QPdfLinkModel_virtualbase_setItemData(VirtualQPdfLinkModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QPdfLinkModel::setItemData(*index, roles_QMap);
}

bool QPdfLinkModel_virtualbase_clearItemData(VirtualQPdfLinkModel* self, QModelIndex* index) {

	return self->QPdfLinkModel::clearItemData(*index);
}

struct seaqt_array /* of struct seaqt_string */  QPdfLinkModel_virtualbase_mimeTypes(const VirtualQPdfLinkModel* self) {

	QStringList _ret = self->QPdfLinkModel::mimeTypes();
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

QMimeData* QPdfLinkModel_virtualbase_mimeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QPdfLinkModel::mimeData(indexes_QList);
}

bool QPdfLinkModel_virtualbase_canDropMimeData(const VirtualQPdfLinkModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfLinkModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QPdfLinkModel_virtualbase_supportedDropActions(const VirtualQPdfLinkModel* self) {

	Qt::DropActions _ret = self->QPdfLinkModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QPdfLinkModel_virtualbase_supportedDragActions(const VirtualQPdfLinkModel* self) {

	Qt::DropActions _ret = self->QPdfLinkModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QPdfLinkModel_virtualbase_insertRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfLinkModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfLinkModel_virtualbase_insertColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfLinkModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfLinkModel_virtualbase_removeRows(VirtualQPdfLinkModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfLinkModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfLinkModel_virtualbase_removeColumns(VirtualQPdfLinkModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfLinkModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfLinkModel_virtualbase_moveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfLinkModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QPdfLinkModel_virtualbase_moveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfLinkModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QPdfLinkModel_virtualbase_fetchMore(VirtualQPdfLinkModel* self, QModelIndex* parent) {

	self->QPdfLinkModel::fetchMore(*parent);
}

bool QPdfLinkModel_virtualbase_canFetchMore(const VirtualQPdfLinkModel* self, QModelIndex* parent) {

	return self->QPdfLinkModel::canFetchMore(*parent);
}

void QPdfLinkModel_virtualbase_sort(VirtualQPdfLinkModel* self, int column, int order) {

	self->QPdfLinkModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QPdfLinkModel_virtualbase_buddy(const VirtualQPdfLinkModel* self, QModelIndex* index) {

	return new QModelIndex(self->QPdfLinkModel::buddy(*index));
}

struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_virtualbase_match(const VirtualQPdfLinkModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QPdfLinkModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QPdfLinkModel_virtualbase_span(const VirtualQPdfLinkModel* self, QModelIndex* index) {

	return new QSize(self->QPdfLinkModel::span(*index));
}

void QPdfLinkModel_virtualbase_multiData(const VirtualQPdfLinkModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	self->QPdfLinkModel::multiData(*index, *roleDataSpan);
}

bool QPdfLinkModel_virtualbase_submit(VirtualQPdfLinkModel* self) {

	return self->QPdfLinkModel::submit();
}

void QPdfLinkModel_virtualbase_revert(VirtualQPdfLinkModel* self) {

	self->QPdfLinkModel::revert();
}

void QPdfLinkModel_virtualbase_resetInternalData(VirtualQPdfLinkModel* self) {

	self->QPdfLinkModel::resetInternalData();
}

bool QPdfLinkModel_virtualbase_event(VirtualQPdfLinkModel* self, QEvent* event) {

	return self->QPdfLinkModel::event(event);
}

bool QPdfLinkModel_virtualbase_eventFilter(VirtualQPdfLinkModel* self, QObject* watched, QEvent* event) {

	return self->QPdfLinkModel::eventFilter(watched, event);
}

void QPdfLinkModel_virtualbase_timerEvent(VirtualQPdfLinkModel* self, QTimerEvent* event) {

	self->QPdfLinkModel::timerEvent(event);
}

void QPdfLinkModel_virtualbase_childEvent(VirtualQPdfLinkModel* self, QChildEvent* event) {

	self->QPdfLinkModel::childEvent(event);
}

void QPdfLinkModel_virtualbase_customEvent(VirtualQPdfLinkModel* self, QEvent* event) {

	self->QPdfLinkModel::customEvent(event);
}

void QPdfLinkModel_virtualbase_connectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal) {

	self->QPdfLinkModel::connectNotify(*signal);
}

void QPdfLinkModel_virtualbase_disconnectNotify(VirtualQPdfLinkModel* self, QMetaMethod* signal) {

	self->QPdfLinkModel::disconnectNotify(*signal);
}

QModelIndex* QPdfLinkModel_protectedbase_createIndex_row_column(const VirtualQPdfLinkModel* self, int row, int column) {
	return new QModelIndex(self->QPdfLinkModel::createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QPdfLinkModel_protectedbase_encodeData(const VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->QPdfLinkModel::encodeData(indexes_QList, *stream);
}

bool QPdfLinkModel_protectedbase_decodeData(VirtualQPdfLinkModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->QPdfLinkModel::decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QPdfLinkModel_protectedbase_beginInsertRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfLinkModel::beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfLinkModel_protectedbase_endInsertRows(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endInsertRows();
}

void QPdfLinkModel_protectedbase_beginRemoveRows(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfLinkModel::beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfLinkModel_protectedbase_endRemoveRows(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endRemoveRows();
}

bool QPdfLinkModel_protectedbase_beginMoveRows(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->QPdfLinkModel::beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QPdfLinkModel_protectedbase_endMoveRows(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endMoveRows();
}

void QPdfLinkModel_protectedbase_beginInsertColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfLinkModel::beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfLinkModel_protectedbase_endInsertColumns(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endInsertColumns();
}

void QPdfLinkModel_protectedbase_beginRemoveColumns(VirtualQPdfLinkModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfLinkModel::beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfLinkModel_protectedbase_endRemoveColumns(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endRemoveColumns();
}

bool QPdfLinkModel_protectedbase_beginMoveColumns(VirtualQPdfLinkModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->QPdfLinkModel::beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QPdfLinkModel_protectedbase_endMoveColumns(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endMoveColumns();
}

void QPdfLinkModel_protectedbase_beginResetModel(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::beginResetModel();
}

void QPdfLinkModel_protectedbase_endResetModel(VirtualQPdfLinkModel* self) {
	self->QPdfLinkModel::endResetModel();
}

void QPdfLinkModel_protectedbase_changePersistentIndex(VirtualQPdfLinkModel* self, QModelIndex* from, QModelIndex* to) {
	self->QPdfLinkModel::changePersistentIndex(*from, *to);
}

void QPdfLinkModel_protectedbase_changePersistentIndexList(VirtualQPdfLinkModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to) {
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
	self->QPdfLinkModel::changePersistentIndexList(from_QList, to_QList);
}

struct seaqt_array /* of QModelIndex* */  QPdfLinkModel_protectedbase_persistentIndexList(const VirtualQPdfLinkModel* self) {
	QModelIndexList _ret = self->QPdfLinkModel::persistentIndexList();
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

QObject* QPdfLinkModel_protectedbase_sender(const VirtualQPdfLinkModel* self) {
	return self->QPdfLinkModel::sender();
}

int QPdfLinkModel_protectedbase_senderSignalIndex(const VirtualQPdfLinkModel* self) {
	return self->QPdfLinkModel::senderSignalIndex();
}

int QPdfLinkModel_protectedbase_receivers(const VirtualQPdfLinkModel* self, const char* signal) {
	return self->QPdfLinkModel::receivers(signal);
}

bool QPdfLinkModel_protectedbase_isSignalConnected(const VirtualQPdfLinkModel* self, QMetaMethod* signal) {
	return self->QPdfLinkModel::isSignalConnected(*signal);
}

void QPdfLinkModel_delete(QPdfLinkModel* self) {
	delete self;
}

