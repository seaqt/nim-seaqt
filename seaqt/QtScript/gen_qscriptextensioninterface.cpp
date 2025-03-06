#include <QFactoryInterface>
#include <QList>
#include <QScriptEngine>
#include <QScriptExtensionInterface>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qscriptextensioninterface.h>
#include "gen_qscriptextensioninterface.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQScriptExtensionInterface final : public QScriptExtensionInterface {
	struct QScriptExtensionInterface_VTable* vtbl;
public:

	VirtualQScriptExtensionInterface(struct QScriptExtensionInterface_VTable* vtbl, const QScriptExtensionInterface& param1): QScriptExtensionInterface(param1), vtbl(vtbl) {};

	virtual ~VirtualQScriptExtensionInterface() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void initialize(const QString& key, QScriptEngine* engine) override {
		if (vtbl->initialize == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval1 = key_ms;
		QScriptEngine* sigval2 = engine;

		vtbl->initialize(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList keys() const override {
		if (vtbl->keys == 0) {
			return QStringList(); // Pure virtual, there is no base we can call
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->keys(vtbl, this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

};

QScriptExtensionInterface* QScriptExtensionInterface_new(struct QScriptExtensionInterface_VTable* vtbl, QScriptExtensionInterface* param1) {
	return new VirtualQScriptExtensionInterface(vtbl, *param1);
}

void QScriptExtensionInterface_virtbase(QScriptExtensionInterface* src, QFactoryInterface** outptr_QFactoryInterface) {
	*outptr_QFactoryInterface = static_cast<QFactoryInterface*>(src);
}

void QScriptExtensionInterface_initialize(QScriptExtensionInterface* self, struct miqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->initialize(key_QString, engine);
}

void QScriptExtensionInterface_operatorAssign(QScriptExtensionInterface* self, QScriptExtensionInterface* param1) {
	self->operator=(*param1);
}

void QScriptExtensionInterface_delete(QScriptExtensionInterface* self) {
	delete self;
}

