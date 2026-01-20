#include <QFactoryInterface>
#include <QList>
#include <QScriptEngine>
#include <QScriptExtensionInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qscriptextensioninterface.h>
#include "gen_qscriptextensioninterface.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQScriptExtensionInterface final : public QScriptExtensionInterface {
	const QScriptExtensionInterface_VTable* vtbl;
public:
	friend void* QScriptExtensionInterface_vdata(VirtualQScriptExtensionInterface* self);
	friend VirtualQScriptExtensionInterface* vdata_QScriptExtensionInterface(void* vdata);

	VirtualQScriptExtensionInterface(const QScriptExtensionInterface_VTable* vtbl, const QScriptExtensionInterface& param1): QScriptExtensionInterface(param1), vtbl(vtbl) {}

	virtual ~VirtualQScriptExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual void initialize(const QString& key, QScriptEngine* engine) override {
		if (vtbl->initialize == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct seaqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct seaqt_string sigval1 = key_ms;
		QScriptEngine* sigval2 = engine;
		vtbl->initialize(this, sigval1, sigval2);
	}

	virtual QStringList keys() const override {
		if (vtbl->keys == 0) {
			return QStringList(); // Pure virtual, there is no base we can call
		}

		struct seaqt_array /* of struct seaqt_string */  callback_return_value = vtbl->keys(this);
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

};

VirtualQScriptExtensionInterface* QScriptExtensionInterface_new(const QScriptExtensionInterface_VTable* vtbl, size_t vdata, QScriptExtensionInterface* param1) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScriptExtensionInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScriptExtensionInterface(vtbl, *param1) : nullptr;
}

void QScriptExtensionInterface_virtbase(QScriptExtensionInterface* src, QFactoryInterface** outptr_QFactoryInterface) {
	*outptr_QFactoryInterface = static_cast<QFactoryInterface*>(src);
}

void QScriptExtensionInterface_initialize(QScriptExtensionInterface* self, struct seaqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->initialize(key_QString, engine);
}

void QScriptExtensionInterface_operatorAssign(QScriptExtensionInterface* self, QScriptExtensionInterface* param1) {
	self->operator=(*param1);
}

void* QScriptExtensionInterface_vdata(VirtualQScriptExtensionInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQScriptExtensionInterface>()); }
VirtualQScriptExtensionInterface* vdata_QScriptExtensionInterface(void* vdata) { return reinterpret_cast<VirtualQScriptExtensionInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQScriptExtensionInterface>()); }

void QScriptExtensionInterface_delete(QScriptExtensionInterface* self) {
	delete self;
}

