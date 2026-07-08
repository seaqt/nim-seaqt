#include <QByteArray>
#include <QDesignerMemberSheetExtension>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <membersheet.h>
#include "gen_membersheet.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerMemberSheetExtension final : public QDesignerMemberSheetExtension {
	const QDesignerMemberSheetExtension_VTable* vtbl;
public:
	friend void* QDesignerMemberSheetExtension_vdata(VirtualQDesignerMemberSheetExtension* self);
	friend VirtualQDesignerMemberSheetExtension* vdata_QDesignerMemberSheetExtension(void* vdata);

	VirtualQDesignerMemberSheetExtension(const QDesignerMemberSheetExtension_VTable* vtbl): QDesignerMemberSheetExtension(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerMemberSheetExtension() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->count(this);
		return static_cast<int>(callback_return_value);
	}

	virtual int indexOf(const QString& name) const override {
		if (vtbl->indexOf == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		int callback_return_value = vtbl->indexOf(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	virtual QString memberName(int index) const override {
		if (vtbl->memberName == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->memberName(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual QString memberGroup(int index) const override {
		if (vtbl->memberGroup == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->memberGroup(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setMemberGroup(int index, const QString& group) override {
		if (vtbl->setMemberGroup == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		const QString group_ret = group;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray group_b = group_ret.toUtf8();
		struct seaqt_string group_ms;
		group_ms.len = group_b.length();
		group_ms.data = static_cast<char*>(malloc(group_ms.len));
		memcpy(group_ms.data, group_b.data(), group_ms.len);
		struct seaqt_string sigval2 = group_ms;
		vtbl->setMemberGroup(this, sigval1, sigval2);
	}

	virtual bool isVisible(int index) const override {
		if (vtbl->isVisible == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isVisible(this, sigval1);
		return callback_return_value;
	}

	virtual void setVisible(int index, bool b) override {
		if (vtbl->setVisible == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool sigval2 = b;
		vtbl->setVisible(this, sigval1, sigval2);
	}

	virtual bool isSignal(int index) const override {
		if (vtbl->isSignal == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isSignal(this, sigval1);
		return callback_return_value;
	}

	virtual bool isSlot(int index) const override {
		if (vtbl->isSlot == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->isSlot(this, sigval1);
		return callback_return_value;
	}

	virtual bool inheritedFromWidget(int index) const override {
		if (vtbl->inheritedFromWidget == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		bool callback_return_value = vtbl->inheritedFromWidget(this, sigval1);
		return callback_return_value;
	}

	virtual QString declaredInClass(int index) const override {
		if (vtbl->declaredInClass == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->declaredInClass(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual QString signature(int index) const override {
		if (vtbl->signature == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_string callback_return_value = vtbl->signature(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual QList<QByteArray> parameterTypes(int index) const override {
		if (vtbl->parameterTypes == 0) {
			return QList<QByteArray>(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->parameterTypes(this, sigval1);
		QList<QByteArray> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_arr_i_QByteArray(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QByteArray);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual QList<QByteArray> parameterNames(int index) const override {
		if (vtbl->parameterNames == 0) {
			return QList<QByteArray>(); // Pure virtual, there is no base we can call
		}

		int sigval1 = index;
		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->parameterNames(this, sigval1);
		QList<QByteArray> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct seaqt_string* callback_return_value_arr = static_cast<struct seaqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_arr_i_QByteArray(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QByteArray);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

};

VirtualQDesignerMemberSheetExtension* QDesignerMemberSheetExtension_new(const QDesignerMemberSheetExtension_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerMemberSheetExtension>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerMemberSheetExtension(vtbl) : nullptr;
}

int QDesignerMemberSheetExtension_count(const QDesignerMemberSheetExtension* self) {
	return self->count();
}

int QDesignerMemberSheetExtension_indexOf(const QDesignerMemberSheetExtension* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->indexOf(name_QString);
}

struct seaqt_string QDesignerMemberSheetExtension_memberName(const QDesignerMemberSheetExtension* self, int index) {
	QString _ret = self->memberName(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerMemberSheetExtension_memberGroup(const QDesignerMemberSheetExtension* self, int index) {
	QString _ret = self->memberGroup(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerMemberSheetExtension_setMemberGroup(QDesignerMemberSheetExtension* self, int index, struct seaqt_string group) {
	QString group_QString = QString::fromUtf8(group.data, group.len);
	self->setMemberGroup(static_cast<int>(index), group_QString);
}

bool QDesignerMemberSheetExtension_isVisible(const QDesignerMemberSheetExtension* self, int index) {
	return self->isVisible(static_cast<int>(index));
}

void QDesignerMemberSheetExtension_setVisible(QDesignerMemberSheetExtension* self, int index, bool b) {
	self->setVisible(static_cast<int>(index), b);
}

bool QDesignerMemberSheetExtension_isSignal(const QDesignerMemberSheetExtension* self, int index) {
	return self->isSignal(static_cast<int>(index));
}

bool QDesignerMemberSheetExtension_isSlot(const QDesignerMemberSheetExtension* self, int index) {
	return self->isSlot(static_cast<int>(index));
}

bool QDesignerMemberSheetExtension_inheritedFromWidget(const QDesignerMemberSheetExtension* self, int index) {
	return self->inheritedFromWidget(static_cast<int>(index));
}

struct seaqt_string QDesignerMemberSheetExtension_declaredInClass(const QDesignerMemberSheetExtension* self, int index) {
	QString _ret = self->declaredInClass(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerMemberSheetExtension_signature(const QDesignerMemberSheetExtension* self, int index) {
	QString _ret = self->signature(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_parameterTypes(const QDesignerMemberSheetExtension* self, int index) {
	QList<QByteArray> _ret = self->parameterTypes(static_cast<int>(index));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of struct seaqt_string */  QDesignerMemberSheetExtension_parameterNames(const QDesignerMemberSheetExtension* self, int index) {
	QList<QByteArray> _ret = self->parameterNames(static_cast<int>(index));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void* QDesignerMemberSheetExtension_vdata(VirtualQDesignerMemberSheetExtension* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerMemberSheetExtension>()); }
VirtualQDesignerMemberSheetExtension* vdata_QDesignerMemberSheetExtension(void* vdata) { return reinterpret_cast<VirtualQDesignerMemberSheetExtension*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerMemberSheetExtension>()); }

void QDesignerMemberSheetExtension_delete(QDesignerMemberSheetExtension* self) {
	delete self;
}

