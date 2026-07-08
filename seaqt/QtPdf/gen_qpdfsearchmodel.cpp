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
#include <QObject>
#include <QPdfDocument>
#include <QPdfSearchModel>
#include <QPdfSearchResult>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVector>
#include <qpdfsearchmodel.h>
#include "gen_qpdfsearchmodel.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfSearchModel final : public QPdfSearchModel {
	const QPdfSearchModel_VTable* vtbl;
public:
	friend void* QPdfSearchModel_vdata(VirtualQPdfSearchModel* self);
	friend VirtualQPdfSearchModel* vdata_QPdfSearchModel(void* vdata);

	VirtualQPdfSearchModel(const QPdfSearchModel_VTable* vtbl): QPdfSearchModel(), vtbl(vtbl) {}
	VirtualQPdfSearchModel(const QPdfSearchModel_VTable* vtbl, QObject* parent): QPdfSearchModel(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfSearchModel() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfSearchModel::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfSearchModel_virtualbase_metaObject(const VirtualQPdfSearchModel* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfSearchModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfSearchModel_virtualbase_metacast(VirtualQPdfSearchModel* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfSearchModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfSearchModel_virtualbase_metacall(VirtualQPdfSearchModel* self, int param1, int param2, void** param3);

	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QPdfSearchModel::roleNames();
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

	friend struct seaqt_map /* of int to struct seaqt_string */  QPdfSearchModel_virtualbase_roleNames(const VirtualQPdfSearchModel* self);

	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QPdfSearchModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int callback_return_value = vtbl->rowCount(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfSearchModel_virtualbase_rowCount(const VirtualQPdfSearchModel* self, QModelIndex* parent);

	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QPdfSearchModel::data(index, role);
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

	friend QVariant* QPdfSearchModel_virtualbase_data(const VirtualQPdfSearchModel* self, QModelIndex* index, int role);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfSearchModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_timerEvent(VirtualQPdfSearchModel* self, QTimerEvent* event);

	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QPdfSearchModel::index(row, column, parent);
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

	friend QModelIndex* QPdfSearchModel_virtualbase_index(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent);

	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QPdfSearchModel::sibling(row, column, idx);
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

	friend QModelIndex* QPdfSearchModel_virtualbase_sibling(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* idx);

	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QPdfSearchModel::dropMimeData(data, action, row, column, parent);
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

	friend bool QPdfSearchModel_virtualbase_dropMimeData(VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QPdfSearchModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int callback_return_value = vtbl->flags(this, sigval1);
		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QPdfSearchModel_virtualbase_flags(const VirtualQPdfSearchModel* self, QModelIndex* index);

	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QPdfSearchModel::setData(index, value, role);
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

	friend bool QPdfSearchModel_virtualbase_setData(VirtualQPdfSearchModel* self, QModelIndex* index, QVariant* value, int role);

	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QPdfSearchModel::headerData(section, orientation, role);
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

	friend QVariant* QPdfSearchModel_virtualbase_headerData(const VirtualQPdfSearchModel* self, int section, int orientation, int role);

	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QPdfSearchModel::setHeaderData(section, orientation, value, role);
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

	friend bool QPdfSearchModel_virtualbase_setHeaderData(VirtualQPdfSearchModel* self, int section, int orientation, QVariant* value, int role);

	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QPdfSearchModel::itemData(index);
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

	friend struct seaqt_map /* of int to QVariant* */  QPdfSearchModel_virtualbase_itemData(const VirtualQPdfSearchModel* self, QModelIndex* index);

	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QPdfSearchModel::setItemData(index, roles);
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

	friend bool QPdfSearchModel_virtualbase_setItemData(VirtualQPdfSearchModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QPdfSearchModel::mimeTypes();
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

	friend struct seaqt_array /* of struct seaqt_string */  QPdfSearchModel_virtualbase_mimeTypes(const VirtualQPdfSearchModel* self);

	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QPdfSearchModel::mimeData(indexes);
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

	friend QMimeData* QPdfSearchModel_virtualbase_mimeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes);

	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QPdfSearchModel::canDropMimeData(data, action, row, column, parent);
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

	friend bool QPdfSearchModel_virtualbase_canDropMimeData(const VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QPdfSearchModel::supportedDropActions();
		}

		int callback_return_value = vtbl->supportedDropActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfSearchModel_virtualbase_supportedDropActions(const VirtualQPdfSearchModel* self);

	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QPdfSearchModel::supportedDragActions();
		}

		int callback_return_value = vtbl->supportedDragActions(this);
		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QPdfSearchModel_virtualbase_supportedDragActions(const VirtualQPdfSearchModel* self);

	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QPdfSearchModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_insertRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);

	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QPdfSearchModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->insertColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_insertColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);

	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QPdfSearchModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeRows(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_removeRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent);

	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QPdfSearchModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->removeColumns(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_removeColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent);

	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QPdfSearchModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

	friend bool QPdfSearchModel_virtualbase_moveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QPdfSearchModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

	friend bool QPdfSearchModel_virtualbase_moveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QPdfSearchModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		vtbl->fetchMore(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_fetchMore(VirtualQPdfSearchModel* self, QModelIndex* parent);

	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QPdfSearchModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		bool callback_return_value = vtbl->canFetchMore(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_canFetchMore(const VirtualQPdfSearchModel* self, QModelIndex* parent);

	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QPdfSearchModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);
		vtbl->sort(this, sigval1, sigval2);
	}

	friend void QPdfSearchModel_virtualbase_sort(VirtualQPdfSearchModel* self, int column, int order);

	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QPdfSearchModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelIndex* callback_return_value = vtbl->buddy(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QModelIndex* QPdfSearchModel_virtualbase_buddy(const VirtualQPdfSearchModel* self, QModelIndex* index);

	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QPdfSearchModel::match(start, role, value, hits, flags);
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

	friend struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_virtualbase_match(const VirtualQPdfSearchModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QPdfSearchModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QSize* callback_return_value = vtbl->span(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfSearchModel_virtualbase_span(const VirtualQPdfSearchModel* self, QModelIndex* index);

	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QPdfSearchModel::submit();
		}

		bool callback_return_value = vtbl->submit(this);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_submit(VirtualQPdfSearchModel* self);

	virtual void revert() override {
		if (vtbl->revert == 0) {
			QPdfSearchModel::revert();
			return;
		}

		vtbl->revert(this);
	}

	friend void QPdfSearchModel_virtualbase_revert(VirtualQPdfSearchModel* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfSearchModel::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_event(VirtualQPdfSearchModel* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfSearchModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfSearchModel_virtualbase_eventFilter(VirtualQPdfSearchModel* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfSearchModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_childEvent(VirtualQPdfSearchModel* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfSearchModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_customEvent(VirtualQPdfSearchModel* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfSearchModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_connectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfSearchModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfSearchModel_virtualbase_disconnectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPdfSearchModel_protectedbase_updatePage(VirtualQPdfSearchModel* self, int page);
	friend void QPdfSearchModel_protectedbase_resetInternalData(VirtualQPdfSearchModel* self);
	friend QModelIndex* QPdfSearchModel_protectedbase_createIndex_row_column(const VirtualQPdfSearchModel* self, int row, int column);
	friend void QPdfSearchModel_protectedbase_encodeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QPdfSearchModel_protectedbase_decodeData(VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QPdfSearchModel_protectedbase_beginInsertRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfSearchModel_protectedbase_endInsertRows(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_beginRemoveRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfSearchModel_protectedbase_endRemoveRows(VirtualQPdfSearchModel* self);
	friend bool QPdfSearchModel_protectedbase_beginMoveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QPdfSearchModel_protectedbase_endMoveRows(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_beginInsertColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfSearchModel_protectedbase_endInsertColumns(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_beginRemoveColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last);
	friend void QPdfSearchModel_protectedbase_endRemoveColumns(VirtualQPdfSearchModel* self);
	friend bool QPdfSearchModel_protectedbase_beginMoveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QPdfSearchModel_protectedbase_endMoveColumns(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_beginResetModel(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_endResetModel(VirtualQPdfSearchModel* self);
	friend void QPdfSearchModel_protectedbase_changePersistentIndex(VirtualQPdfSearchModel* self, QModelIndex* from, QModelIndex* to);
	friend void QPdfSearchModel_protectedbase_changePersistentIndexList(VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to);
	friend struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_protectedbase_persistentIndexList(const VirtualQPdfSearchModel* self);
	friend QObject* QPdfSearchModel_protectedbase_sender(const VirtualQPdfSearchModel* self);
	friend int QPdfSearchModel_protectedbase_senderSignalIndex(const VirtualQPdfSearchModel* self);
	friend int QPdfSearchModel_protectedbase_receivers(const VirtualQPdfSearchModel* self, const char* signal);
	friend bool QPdfSearchModel_protectedbase_isSignalConnected(const VirtualQPdfSearchModel* self, QMetaMethod* signal);
};

VirtualQPdfSearchModel* QPdfSearchModel_new(const QPdfSearchModel_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfSearchModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfSearchModel(vtbl) : nullptr;
}

VirtualQPdfSearchModel* QPdfSearchModel_new_parent(const QPdfSearchModel_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfSearchModel>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfSearchModel(vtbl, parent) : nullptr;
}

void QPdfSearchModel_virtbase(QPdfSearchModel* src, QAbstractListModel** outptr_QAbstractListModel) {
	*outptr_QAbstractListModel = static_cast<QAbstractListModel*>(src);
}

QMetaObject* QPdfSearchModel_metaObject(const QPdfSearchModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfSearchModel_metacast(QPdfSearchModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfSearchModel_metacall(QPdfSearchModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfSearchModel_tr_s(const char* s) {
	QString _ret = QPdfSearchModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfSearchModel_trUtf8_s(const char* s) {
	QString _ret = QPdfSearchModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QPdfSearchResult* */  QPdfSearchModel_resultsOnPage(const QPdfSearchModel* self, int page) {
	QVector<QPdfSearchResult> _ret = self->resultsOnPage(static_cast<int>(page));
	// Convert QList<> from C++ memory to manually-managed C memory
	QPdfSearchResult** _arr = static_cast<QPdfSearchResult**>(malloc(sizeof(QPdfSearchResult*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QPdfSearchResult(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QPdfSearchResult* QPdfSearchModel_resultAtIndex(const QPdfSearchModel* self, int index) {
	return new QPdfSearchResult(self->resultAtIndex(static_cast<int>(index)));
}

QPdfDocument* QPdfSearchModel_document(const QPdfSearchModel* self) {
	return self->document();
}

struct seaqt_string QPdfSearchModel_searchString(const QPdfSearchModel* self) {
	QString _ret = self->searchString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfSearchModel_roleNames(const QPdfSearchModel* self) {
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

int QPdfSearchModel_rowCount(const QPdfSearchModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

QVariant* QPdfSearchModel_data(const QPdfSearchModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

void QPdfSearchModel_setSearchString(QPdfSearchModel* self, struct seaqt_string searchString) {
	QString searchString_QString = QString::fromUtf8(searchString.data, searchString.len);
	self->setSearchString(searchString_QString);
}

void QPdfSearchModel_setDocument(QPdfSearchModel* self, QPdfDocument* document) {
	self->setDocument(document);
}

void QPdfSearchModel_documentChanged(QPdfSearchModel* self) {
	self->documentChanged();
}

void QPdfSearchModel_connect_documentChanged(QPdfSearchModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QPdfSearchModel::connect(self, static_cast<void (QPdfSearchModel::*)()>(&QPdfSearchModel::documentChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QPdfSearchModel_searchStringChanged(QPdfSearchModel* self) {
	self->searchStringChanged();
}

void QPdfSearchModel_connect_searchStringChanged(QPdfSearchModel* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QPdfSearchModel::connect(self, static_cast<void (QPdfSearchModel::*)()>(&QPdfSearchModel::searchStringChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QPdfSearchModel_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfSearchModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfSearchModel_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfSearchModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfSearchModel_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QPdfSearchModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfSearchModel_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfSearchModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfSearchModel_staticMetaObject() { return &QPdfSearchModel::staticMetaObject; }
void* QPdfSearchModel_vdata(VirtualQPdfSearchModel* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfSearchModel>()); }
VirtualQPdfSearchModel* vdata_QPdfSearchModel(void* vdata) { return reinterpret_cast<VirtualQPdfSearchModel*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfSearchModel>()); }

QMetaObject* QPdfSearchModel_virtualbase_metaObject(const VirtualQPdfSearchModel* self) {

	return (QMetaObject*) self->QPdfSearchModel::metaObject();
}

void* QPdfSearchModel_virtualbase_metacast(VirtualQPdfSearchModel* self, const char* param1) {

	return self->QPdfSearchModel::qt_metacast(param1);
}

int QPdfSearchModel_virtualbase_metacall(VirtualQPdfSearchModel* self, int param1, int param2, void** param3) {

	return self->QPdfSearchModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_map /* of int to struct seaqt_string */  QPdfSearchModel_virtualbase_roleNames(const VirtualQPdfSearchModel* self) {

	QHash<int, QByteArray> _ret = self->QPdfSearchModel::roleNames();
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

int QPdfSearchModel_virtualbase_rowCount(const VirtualQPdfSearchModel* self, QModelIndex* parent) {

	return self->QPdfSearchModel::rowCount(*parent);
}

QVariant* QPdfSearchModel_virtualbase_data(const VirtualQPdfSearchModel* self, QModelIndex* index, int role) {

	return new QVariant(self->QPdfSearchModel::data(*index, static_cast<int>(role)));
}

void QPdfSearchModel_virtualbase_timerEvent(VirtualQPdfSearchModel* self, QTimerEvent* event) {

	self->QPdfSearchModel::timerEvent(event);
}

QModelIndex* QPdfSearchModel_virtualbase_index(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(self->QPdfSearchModel::index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QPdfSearchModel_virtualbase_sibling(const VirtualQPdfSearchModel* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(self->QPdfSearchModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

bool QPdfSearchModel_virtualbase_dropMimeData(VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfSearchModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QPdfSearchModel_virtualbase_flags(const VirtualQPdfSearchModel* self, QModelIndex* index) {

	Qt::ItemFlags _ret = self->QPdfSearchModel::flags(*index);
	return static_cast<int>(_ret);
}

bool QPdfSearchModel_virtualbase_setData(VirtualQPdfSearchModel* self, QModelIndex* index, QVariant* value, int role) {

	return self->QPdfSearchModel::setData(*index, *value, static_cast<int>(role));
}

QVariant* QPdfSearchModel_virtualbase_headerData(const VirtualQPdfSearchModel* self, int section, int orientation, int role) {

	return new QVariant(self->QPdfSearchModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QPdfSearchModel_virtualbase_setHeaderData(VirtualQPdfSearchModel* self, int section, int orientation, QVariant* value, int role) {

	return self->QPdfSearchModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

struct seaqt_map /* of int to QVariant* */  QPdfSearchModel_virtualbase_itemData(const VirtualQPdfSearchModel* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = self->QPdfSearchModel::itemData(*index);
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

bool QPdfSearchModel_virtualbase_setItemData(VirtualQPdfSearchModel* self, QModelIndex* index, struct seaqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return self->QPdfSearchModel::setItemData(*index, roles_QMap);
}

struct seaqt_array /* of struct seaqt_string */  QPdfSearchModel_virtualbase_mimeTypes(const VirtualQPdfSearchModel* self) {

	QStringList _ret = self->QPdfSearchModel::mimeTypes();
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

QMimeData* QPdfSearchModel_virtualbase_mimeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return self->QPdfSearchModel::mimeData(indexes_QList);
}

bool QPdfSearchModel_virtualbase_canDropMimeData(const VirtualQPdfSearchModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return self->QPdfSearchModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

int QPdfSearchModel_virtualbase_supportedDropActions(const VirtualQPdfSearchModel* self) {

	Qt::DropActions _ret = self->QPdfSearchModel::supportedDropActions();
	return static_cast<int>(_ret);
}

int QPdfSearchModel_virtualbase_supportedDragActions(const VirtualQPdfSearchModel* self) {

	Qt::DropActions _ret = self->QPdfSearchModel::supportedDragActions();
	return static_cast<int>(_ret);
}

bool QPdfSearchModel_virtualbase_insertRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfSearchModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfSearchModel_virtualbase_insertColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfSearchModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfSearchModel_virtualbase_removeRows(VirtualQPdfSearchModel* self, int row, int count, QModelIndex* parent) {

	return self->QPdfSearchModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QPdfSearchModel_virtualbase_removeColumns(VirtualQPdfSearchModel* self, int column, int count, QModelIndex* parent) {

	return self->QPdfSearchModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QPdfSearchModel_virtualbase_moveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfSearchModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

bool QPdfSearchModel_virtualbase_moveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return self->QPdfSearchModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));
}

void QPdfSearchModel_virtualbase_fetchMore(VirtualQPdfSearchModel* self, QModelIndex* parent) {

	self->QPdfSearchModel::fetchMore(*parent);
}

bool QPdfSearchModel_virtualbase_canFetchMore(const VirtualQPdfSearchModel* self, QModelIndex* parent) {

	return self->QPdfSearchModel::canFetchMore(*parent);
}

void QPdfSearchModel_virtualbase_sort(VirtualQPdfSearchModel* self, int column, int order) {

	self->QPdfSearchModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QModelIndex* QPdfSearchModel_virtualbase_buddy(const VirtualQPdfSearchModel* self, QModelIndex* index) {

	return new QModelIndex(self->QPdfSearchModel::buddy(*index));
}

struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_virtualbase_match(const VirtualQPdfSearchModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = self->QPdfSearchModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QPdfSearchModel_virtualbase_span(const VirtualQPdfSearchModel* self, QModelIndex* index) {

	return new QSize(self->QPdfSearchModel::span(*index));
}

bool QPdfSearchModel_virtualbase_submit(VirtualQPdfSearchModel* self) {

	return self->QPdfSearchModel::submit();
}

void QPdfSearchModel_virtualbase_revert(VirtualQPdfSearchModel* self) {

	self->QPdfSearchModel::revert();
}

bool QPdfSearchModel_virtualbase_event(VirtualQPdfSearchModel* self, QEvent* event) {

	return self->QPdfSearchModel::event(event);
}

bool QPdfSearchModel_virtualbase_eventFilter(VirtualQPdfSearchModel* self, QObject* watched, QEvent* event) {

	return self->QPdfSearchModel::eventFilter(watched, event);
}

void QPdfSearchModel_virtualbase_childEvent(VirtualQPdfSearchModel* self, QChildEvent* event) {

	self->QPdfSearchModel::childEvent(event);
}

void QPdfSearchModel_virtualbase_customEvent(VirtualQPdfSearchModel* self, QEvent* event) {

	self->QPdfSearchModel::customEvent(event);
}

void QPdfSearchModel_virtualbase_connectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal) {

	self->QPdfSearchModel::connectNotify(*signal);
}

void QPdfSearchModel_virtualbase_disconnectNotify(VirtualQPdfSearchModel* self, QMetaMethod* signal) {

	self->QPdfSearchModel::disconnectNotify(*signal);
}

void QPdfSearchModel_protectedbase_updatePage(VirtualQPdfSearchModel* self, int page) {
	self->QPdfSearchModel::updatePage(static_cast<int>(page));
}

void QPdfSearchModel_protectedbase_resetInternalData(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::resetInternalData();
}

QModelIndex* QPdfSearchModel_protectedbase_createIndex_row_column(const VirtualQPdfSearchModel* self, int row, int column) {
	return new QModelIndex(self->QPdfSearchModel::createIndex(static_cast<int>(row), static_cast<int>(column)));
}

void QPdfSearchModel_protectedbase_encodeData(const VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}
	self->QPdfSearchModel::encodeData(indexes_QList, *stream);
}

bool QPdfSearchModel_protectedbase_decodeData(VirtualQPdfSearchModel* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return self->QPdfSearchModel::decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);
}

void QPdfSearchModel_protectedbase_beginInsertRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfSearchModel::beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfSearchModel_protectedbase_endInsertRows(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endInsertRows();
}

void QPdfSearchModel_protectedbase_beginRemoveRows(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfSearchModel::beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfSearchModel_protectedbase_endRemoveRows(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endRemoveRows();
}

bool QPdfSearchModel_protectedbase_beginMoveRows(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return self->QPdfSearchModel::beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));
}

void QPdfSearchModel_protectedbase_endMoveRows(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endMoveRows();
}

void QPdfSearchModel_protectedbase_beginInsertColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfSearchModel::beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfSearchModel_protectedbase_endInsertColumns(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endInsertColumns();
}

void QPdfSearchModel_protectedbase_beginRemoveColumns(VirtualQPdfSearchModel* self, QModelIndex* parent, int first, int last) {
	self->QPdfSearchModel::beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QPdfSearchModel_protectedbase_endRemoveColumns(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endRemoveColumns();
}

bool QPdfSearchModel_protectedbase_beginMoveColumns(VirtualQPdfSearchModel* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return self->QPdfSearchModel::beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));
}

void QPdfSearchModel_protectedbase_endMoveColumns(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endMoveColumns();
}

void QPdfSearchModel_protectedbase_beginResetModel(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::beginResetModel();
}

void QPdfSearchModel_protectedbase_endResetModel(VirtualQPdfSearchModel* self) {
	self->QPdfSearchModel::endResetModel();
}

void QPdfSearchModel_protectedbase_changePersistentIndex(VirtualQPdfSearchModel* self, QModelIndex* from, QModelIndex* to) {
	self->QPdfSearchModel::changePersistentIndex(*from, *to);
}

void QPdfSearchModel_protectedbase_changePersistentIndexList(VirtualQPdfSearchModel* self, struct seaqt_array /* of QModelIndex* */  from, struct seaqt_array /* of QModelIndex* */  to) {
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
	self->QPdfSearchModel::changePersistentIndexList(from_QList, to_QList);
}

struct seaqt_array /* of QModelIndex* */  QPdfSearchModel_protectedbase_persistentIndexList(const VirtualQPdfSearchModel* self) {
	QModelIndexList _ret = self->QPdfSearchModel::persistentIndexList();
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

QObject* QPdfSearchModel_protectedbase_sender(const VirtualQPdfSearchModel* self) {
	return self->QPdfSearchModel::sender();
}

int QPdfSearchModel_protectedbase_senderSignalIndex(const VirtualQPdfSearchModel* self) {
	return self->QPdfSearchModel::senderSignalIndex();
}

int QPdfSearchModel_protectedbase_receivers(const VirtualQPdfSearchModel* self, const char* signal) {
	return self->QPdfSearchModel::receivers(signal);
}

bool QPdfSearchModel_protectedbase_isSignalConnected(const VirtualQPdfSearchModel* self, QMetaMethod* signal) {
	return self->QPdfSearchModel::isSignalConnected(*signal);
}

void QPdfSearchModel_delete(QPdfSearchModel* self) {
	delete self;
}

