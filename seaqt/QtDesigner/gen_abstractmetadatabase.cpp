#include <QDesignerMetaDataBaseInterface>
#include <QDesignerMetaDataBaseItemInterface>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWidget>
#include <abstractmetadatabase.h>
#include "gen_abstractmetadatabase.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerMetaDataBaseItemInterface final : public QDesignerMetaDataBaseItemInterface {
	const QDesignerMetaDataBaseItemInterface_VTable* vtbl;
public:
	friend void* QDesignerMetaDataBaseItemInterface_vdata(VirtualQDesignerMetaDataBaseItemInterface* self);
	friend VirtualQDesignerMetaDataBaseItemInterface* vdata_QDesignerMetaDataBaseItemInterface(void* vdata);

	VirtualQDesignerMetaDataBaseItemInterface(const QDesignerMetaDataBaseItemInterface_VTable* vtbl): QDesignerMetaDataBaseItemInterface(), vtbl(vtbl) {}

	virtual ~VirtualQDesignerMetaDataBaseItemInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QString name() const override {
		if (vtbl->name == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->name(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setName(const QString& name) override {
		if (vtbl->setName == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		vtbl->setName(this, sigval1);
	}

	virtual QList<QWidget *> tabOrder() const override {
		if (vtbl->tabOrder == 0) {
			return QList<QWidget *>(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of QWidget* */  callback_return_value = vtbl->tabOrder(this);
		QList<QWidget *> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QWidget** callback_return_value_arr = static_cast<QWidget**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(callback_return_value_arr[i]);
		}
		free(callback_return_value.data);
		return callback_return_value_QList;
	}

	virtual void setTabOrder(const QList<QWidget *>& tabOrder) override {
		if (vtbl->setTabOrder == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QList<QWidget *>& tabOrder_ret = tabOrder;
		// Convert QList<> from C++ memory to manually-managed C memory
		QWidget** tabOrder_arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * tabOrder_ret.length()));
		for (size_t i = 0, e = tabOrder_ret.length(); i < e; ++i) {
			tabOrder_arr[i] = tabOrder_ret[i];
		}
		struct seaqt_array tabOrder_out;
		tabOrder_out.len = tabOrder_ret.length();
		tabOrder_out.data = static_cast<void*>(tabOrder_arr);
		struct seaqt_array /* of QWidget* */  sigval1 = tabOrder_out;
		vtbl->setTabOrder(this, sigval1);
	}

	virtual bool enabled() const override {
		if (vtbl->enabled == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->enabled(this);
		return callback_return_value;
	}

	virtual void setEnabled(bool b) override {
		if (vtbl->setEnabled == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = b;
		vtbl->setEnabled(this, sigval1);
	}

};

VirtualQDesignerMetaDataBaseItemInterface* QDesignerMetaDataBaseItemInterface_new(const QDesignerMetaDataBaseItemInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerMetaDataBaseItemInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerMetaDataBaseItemInterface(vtbl) : nullptr;
}

struct seaqt_string QDesignerMetaDataBaseItemInterface_name(const QDesignerMetaDataBaseItemInterface* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerMetaDataBaseItemInterface_setName(QDesignerMetaDataBaseItemInterface* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

struct seaqt_array /* of QWidget* */  QDesignerMetaDataBaseItemInterface_tabOrder(const QDesignerMetaDataBaseItemInterface* self) {
	QList<QWidget *> _ret = self->tabOrder();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDesignerMetaDataBaseItemInterface_setTabOrder(QDesignerMetaDataBaseItemInterface* self, struct seaqt_array /* of QWidget* */  tabOrder) {
	QList<QWidget *> tabOrder_QList;
	tabOrder_QList.reserve(tabOrder.len);
	QWidget** tabOrder_arr = static_cast<QWidget**>(tabOrder.data);
	for(size_t i = 0; i < tabOrder.len; ++i) {
		tabOrder_QList.push_back(tabOrder_arr[i]);
	}
	self->setTabOrder(tabOrder_QList);
}

bool QDesignerMetaDataBaseItemInterface_enabled(const QDesignerMetaDataBaseItemInterface* self) {
	return self->enabled();
}

void QDesignerMetaDataBaseItemInterface_setEnabled(QDesignerMetaDataBaseItemInterface* self, bool b) {
	self->setEnabled(b);
}

void* QDesignerMetaDataBaseItemInterface_vdata(VirtualQDesignerMetaDataBaseItemInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerMetaDataBaseItemInterface>()); }
VirtualQDesignerMetaDataBaseItemInterface* vdata_QDesignerMetaDataBaseItemInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerMetaDataBaseItemInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerMetaDataBaseItemInterface>()); }

void QDesignerMetaDataBaseItemInterface_delete(QDesignerMetaDataBaseItemInterface* self) {
	delete self;
}

void QDesignerMetaDataBaseInterface_virtbase(QDesignerMetaDataBaseInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDesignerMetaDataBaseInterface_metaObject(const QDesignerMetaDataBaseInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerMetaDataBaseInterface_metacast(QDesignerMetaDataBaseInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerMetaDataBaseInterface_metacall(QDesignerMetaDataBaseInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerMetaDataBaseInterface_tr(const char* s) {
	QString _ret = QDesignerMetaDataBaseInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDesignerMetaDataBaseItemInterface* QDesignerMetaDataBaseInterface_item(const QDesignerMetaDataBaseInterface* self, QObject* object) {
	return self->item(object);
}

void QDesignerMetaDataBaseInterface_add(QDesignerMetaDataBaseInterface* self, QObject* object) {
	self->add(object);
}

void QDesignerMetaDataBaseInterface_remove(QDesignerMetaDataBaseInterface* self, QObject* object) {
	self->remove(object);
}

struct seaqt_array /* of QObject* */  QDesignerMetaDataBaseInterface_objects(const QDesignerMetaDataBaseInterface* self) {
	QList<QObject *> _ret = self->objects();
	// Convert QList<> from C++ memory to manually-managed C memory
	QObject** _arr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDesignerMetaDataBaseInterface_changed(QDesignerMetaDataBaseInterface* self) {
	self->changed();
}

void QDesignerMetaDataBaseInterface_connect_changed(QDesignerMetaDataBaseInterface* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QDesignerMetaDataBaseInterface::connect(self, static_cast<void (QDesignerMetaDataBaseInterface::*)()>(&QDesignerMetaDataBaseInterface::changed), self, local_caller{slot, callback, release});
}

struct seaqt_string QDesignerMetaDataBaseInterface_tr2(const char* s, const char* c) {
	QString _ret = QDesignerMetaDataBaseInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerMetaDataBaseInterface_tr3(const char* s, const char* c, int n) {
	QString _ret = QDesignerMetaDataBaseInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerMetaDataBaseInterface_staticMetaObject() { return &QDesignerMetaDataBaseInterface::staticMetaObject; }
void QDesignerMetaDataBaseInterface_delete(QDesignerMetaDataBaseInterface* self) {
	delete self;
}

