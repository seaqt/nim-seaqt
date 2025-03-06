#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QWebPluginFactory>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__ExtensionOption
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__ExtensionReturn
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__MimeType
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebPluginFactory__Plugin
#include <qwebpluginfactory.h>
#include "gen_qwebpluginfactory.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebPluginFactory final : public QWebPluginFactory {
	struct QWebPluginFactory_VTable* vtbl;
public:

	VirtualQWebPluginFactory(struct QWebPluginFactory_VTable* vtbl): QWebPluginFactory(), vtbl(vtbl) {};
	VirtualQWebPluginFactory(struct QWebPluginFactory_VTable* vtbl, QObject* parent): QWebPluginFactory(parent), vtbl(vtbl) {};

	virtual ~VirtualQWebPluginFactory() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebPluginFactory::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWebPluginFactory_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebPluginFactory::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWebPluginFactory_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebPluginFactory::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebPluginFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QList<QWebPluginFactory::Plugin> plugins() const override {
		if (vtbl->plugins == 0) {
			return QList<QWebPluginFactory::Plugin>(); // Pure virtual, there is no base we can call
		}


		struct miqt_array /* of QWebPluginFactory__Plugin* */  callback_return_value = vtbl->plugins(vtbl, this);
		QList<QWebPluginFactory::Plugin> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QWebPluginFactory__Plugin** callback_return_value_arr = static_cast<QWebPluginFactory__Plugin**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Subclass to allow providing a Go implementation
	virtual void refreshPlugins() override {
		if (vtbl->refreshPlugins == 0) {
			QWebPluginFactory::refreshPlugins();
			return;
		}


		vtbl->refreshPlugins(vtbl, this);

	}

	friend void QWebPluginFactory_virtualbase_refreshPlugins(void* self);

	// Subclass to allow providing a Go implementation
	virtual QObject* create(const QString& mimeType, const QUrl& param2, const QStringList& argumentNames, const QStringList& argumentValues) const override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString mimeType_ret = mimeType;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray mimeType_b = mimeType_ret.toUtf8();
		struct miqt_string mimeType_ms;
		mimeType_ms.len = mimeType_b.length();
		mimeType_ms.data = static_cast<char*>(malloc(mimeType_ms.len));
		memcpy(mimeType_ms.data, mimeType_b.data(), mimeType_ms.len);
		struct miqt_string sigval1 = mimeType_ms;
		const QUrl& param2_ret = param2;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&param2_ret);
		const QStringList& argumentNames_ret = argumentNames;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* argumentNames_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * argumentNames_ret.length()));
		for (size_t i = 0, e = argumentNames_ret.length(); i < e; ++i) {
			QString argumentNames_lv_ret = argumentNames_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray argumentNames_lv_b = argumentNames_lv_ret.toUtf8();
			struct miqt_string argumentNames_lv_ms;
			argumentNames_lv_ms.len = argumentNames_lv_b.length();
			argumentNames_lv_ms.data = static_cast<char*>(malloc(argumentNames_lv_ms.len));
			memcpy(argumentNames_lv_ms.data, argumentNames_lv_b.data(), argumentNames_lv_ms.len);
			argumentNames_arr[i] = argumentNames_lv_ms;
		}
		struct miqt_array argumentNames_out;
		argumentNames_out.len = argumentNames_ret.length();
		argumentNames_out.data = static_cast<void*>(argumentNames_arr);
		struct miqt_array /* of struct miqt_string */  sigval3 = argumentNames_out;
		const QStringList& argumentValues_ret = argumentValues;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* argumentValues_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * argumentValues_ret.length()));
		for (size_t i = 0, e = argumentValues_ret.length(); i < e; ++i) {
			QString argumentValues_lv_ret = argumentValues_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray argumentValues_lv_b = argumentValues_lv_ret.toUtf8();
			struct miqt_string argumentValues_lv_ms;
			argumentValues_lv_ms.len = argumentValues_lv_b.length();
			argumentValues_lv_ms.data = static_cast<char*>(malloc(argumentValues_lv_ms.len));
			memcpy(argumentValues_lv_ms.data, argumentValues_lv_b.data(), argumentValues_lv_ms.len);
			argumentValues_arr[i] = argumentValues_lv_ms;
		}
		struct miqt_array argumentValues_out;
		argumentValues_out.len = argumentValues_ret.length();
		argumentValues_out.data = static_cast<void*>(argumentValues_arr);
		struct miqt_array /* of struct miqt_string */  sigval4 = argumentValues_out;

		QObject* callback_return_value = vtbl->create(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool extension(QWebPluginFactory::Extension extension, const QWebPluginFactory::ExtensionOption* option, QWebPluginFactory::ExtensionReturn* output) override {
		if (vtbl->extension == 0) {
			return QWebPluginFactory::extension(extension, option, output);
		}

		QWebPluginFactory::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		QWebPluginFactory__ExtensionOption* sigval2 = (QWebPluginFactory__ExtensionOption*) option;
		QWebPluginFactory__ExtensionReturn* sigval3 = output;

		bool callback_return_value = vtbl->extension(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QWebPluginFactory_virtualbase_extension(void* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output);

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QWebPluginFactory::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QWebPluginFactory::supportsExtension(extension);
		}

		QWebPluginFactory::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebPluginFactory_virtualbase_supportsExtension(const void* self, int extension);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebPluginFactory::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWebPluginFactory_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebPluginFactory::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebPluginFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebPluginFactory::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWebPluginFactory_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebPluginFactory::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWebPluginFactory_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebPluginFactory::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWebPluginFactory_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebPluginFactory::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWebPluginFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebPluginFactory::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWebPluginFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebPluginFactory_protectedbase_sender(const void* self);
	friend int QWebPluginFactory_protectedbase_senderSignalIndex(const void* self);
	friend int QWebPluginFactory_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWebPluginFactory_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWebPluginFactory* QWebPluginFactory_new(struct QWebPluginFactory_VTable* vtbl) {
	return new VirtualQWebPluginFactory(vtbl);
}

QWebPluginFactory* QWebPluginFactory_new2(struct QWebPluginFactory_VTable* vtbl, QObject* parent) {
	return new VirtualQWebPluginFactory(vtbl, parent);
}

void QWebPluginFactory_virtbase(QWebPluginFactory* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebPluginFactory_metaObject(const QWebPluginFactory* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebPluginFactory_metacast(QWebPluginFactory* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebPluginFactory_metacall(QWebPluginFactory* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebPluginFactory_tr(const char* s) {
	QString _ret = QWebPluginFactory::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPluginFactory_trUtf8(const char* s) {
	QString _ret = QWebPluginFactory::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QWebPluginFactory__Plugin* */  QWebPluginFactory_plugins(const QWebPluginFactory* self) {
	QList<QWebPluginFactory::Plugin> _ret = self->plugins();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWebPluginFactory__Plugin** _arr = static_cast<QWebPluginFactory__Plugin**>(malloc(sizeof(QWebPluginFactory__Plugin*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QWebPluginFactory::Plugin(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebPluginFactory_refreshPlugins(QWebPluginFactory* self) {
	self->refreshPlugins();
}

QObject* QWebPluginFactory_create(const QWebPluginFactory* self, struct miqt_string mimeType, QUrl* param2, struct miqt_array /* of struct miqt_string */  argumentNames, struct miqt_array /* of struct miqt_string */  argumentValues) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList argumentNames_QList;
	argumentNames_QList.reserve(argumentNames.len);
	struct miqt_string* argumentNames_arr = static_cast<struct miqt_string*>(argumentNames.data);
	for(size_t i = 0; i < argumentNames.len; ++i) {
		QString argumentNames_arr_i_QString = QString::fromUtf8(argumentNames_arr[i].data, argumentNames_arr[i].len);
		argumentNames_QList.push_back(argumentNames_arr_i_QString);
	}
	QStringList argumentValues_QList;
	argumentValues_QList.reserve(argumentValues.len);
	struct miqt_string* argumentValues_arr = static_cast<struct miqt_string*>(argumentValues.data);
	for(size_t i = 0; i < argumentValues.len; ++i) {
		QString argumentValues_arr_i_QString = QString::fromUtf8(argumentValues_arr[i].data, argumentValues_arr[i].len);
		argumentValues_QList.push_back(argumentValues_arr_i_QString);
	}
	return self->create(mimeType_QString, *param2, argumentNames_QList, argumentValues_QList);
}

bool QWebPluginFactory_extension(QWebPluginFactory* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output) {
	return self->extension(static_cast<QWebPluginFactory::Extension>(extension), option, output);
}

bool QWebPluginFactory_supportsExtension(const QWebPluginFactory* self, int extension) {
	return self->supportsExtension(static_cast<QWebPluginFactory::Extension>(extension));
}

struct miqt_string QWebPluginFactory_tr2(const char* s, const char* c) {
	QString _ret = QWebPluginFactory::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPluginFactory_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebPluginFactory::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPluginFactory_trUtf82(const char* s, const char* c) {
	QString _ret = QWebPluginFactory::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebPluginFactory_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebPluginFactory::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebPluginFactory_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::metaObject();

}

void* QWebPluginFactory_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::qt_metacast(param1);

}

int QWebPluginFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QWebPluginFactory_virtualbase_refreshPlugins(void* self) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::refreshPlugins();

}

bool QWebPluginFactory_virtualbase_extension(void* self, int extension, QWebPluginFactory__ExtensionOption* option, QWebPluginFactory__ExtensionReturn* output) {

	return ( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::extension(static_cast<VirtualQWebPluginFactory::Extension>(extension), option, output);

}

bool QWebPluginFactory_virtualbase_supportsExtension(const void* self, int extension) {

	return ( (const VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::supportsExtension(static_cast<VirtualQWebPluginFactory::Extension>(extension));

}

bool QWebPluginFactory_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::event(event);

}

bool QWebPluginFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::eventFilter(watched, event);

}

void QWebPluginFactory_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::timerEvent(event);

}

void QWebPluginFactory_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::childEvent(event);

}

void QWebPluginFactory_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::customEvent(event);

}

void QWebPluginFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::connectNotify(*signal);

}

void QWebPluginFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebPluginFactory*)(self) )->QWebPluginFactory::disconnectNotify(*signal);

}

const QMetaObject* QWebPluginFactory_staticMetaObject() { return &QWebPluginFactory::staticMetaObject; }
QObject* QWebPluginFactory_protectedbase_sender(const void* self) {
	VirtualQWebPluginFactory* self_cast = static_cast<VirtualQWebPluginFactory*>( (QWebPluginFactory*)(self) );
	
	return self_cast->sender();

}

int QWebPluginFactory_protectedbase_senderSignalIndex(const void* self) {
	VirtualQWebPluginFactory* self_cast = static_cast<VirtualQWebPluginFactory*>( (QWebPluginFactory*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWebPluginFactory_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQWebPluginFactory* self_cast = static_cast<VirtualQWebPluginFactory*>( (QWebPluginFactory*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWebPluginFactory_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQWebPluginFactory* self_cast = static_cast<VirtualQWebPluginFactory*>( (QWebPluginFactory*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWebPluginFactory_delete(QWebPluginFactory* self) {
	delete self;
}

QWebPluginFactory__MimeType* QWebPluginFactory__MimeType_new(QWebPluginFactory__MimeType* param1) {
	return new QWebPluginFactory::MimeType(*param1);
}

bool QWebPluginFactory__MimeType_operatorEqual(const QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* other) {
	return (*self == *other);
}

bool QWebPluginFactory__MimeType_operatorNotEqual(const QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* other) {
	return (*self != *other);
}

void QWebPluginFactory__MimeType_operatorAssign(QWebPluginFactory__MimeType* self, QWebPluginFactory__MimeType* param1) {
	self->operator=(*param1);
}

void QWebPluginFactory__MimeType_delete(QWebPluginFactory__MimeType* self) {
	delete self;
}

QWebPluginFactory__Plugin* QWebPluginFactory__Plugin_new(QWebPluginFactory__Plugin* param1) {
	return new QWebPluginFactory::Plugin(*param1);
}

void QWebPluginFactory__Plugin_operatorAssign(QWebPluginFactory__Plugin* self, QWebPluginFactory__Plugin* param1) {
	self->operator=(*param1);
}

void QWebPluginFactory__Plugin_delete(QWebPluginFactory__Plugin* self) {
	delete self;
}

void QWebPluginFactory__ExtensionOption_delete(QWebPluginFactory__ExtensionOption* self) {
	delete self;
}

void QWebPluginFactory__ExtensionReturn_delete(QWebPluginFactory__ExtensionReturn* self) {
	delete self;
}

