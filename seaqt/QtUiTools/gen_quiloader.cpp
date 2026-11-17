#include <QAction>
#include <QActionGroup>
#include <QChildEvent>
#include <QDir>
#include <QEvent>
#include <QIODevice>
#include <QLayout>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUiLoader>
#include <QWidget>
#include <quiloader.h>
#include "gen_quiloader.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQUiLoader final : public QUiLoader {
	const QUiLoader_VTable* vtbl;
public:
	friend void* QUiLoader_vdata(VirtualQUiLoader* self);
	friend VirtualQUiLoader* vdata_QUiLoader(void* vdata);

	VirtualQUiLoader(const QUiLoader_VTable* vtbl): QUiLoader(), vtbl(vtbl) {}
	VirtualQUiLoader(const QUiLoader_VTable* vtbl, QObject* parent): QUiLoader(parent), vtbl(vtbl) {}

	virtual ~VirtualQUiLoader() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUiLoader::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QUiLoader_virtualbase_metaObject(const VirtualQUiLoader* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUiLoader::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QUiLoader_virtualbase_metacast(VirtualQUiLoader* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUiLoader::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QUiLoader_virtualbase_metacall(VirtualQUiLoader* self, int param1, int param2, void** param3);

	virtual QWidget* createWidget(const QString& className, QWidget* parent, const QString& name) override {
		if (vtbl->createWidget == 0) {
			return QUiLoader::createWidget(className, parent, name);
		}

		const QString className_ret = className;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray className_b = className_ret.toUtf8();
		struct seaqt_string className_ms;
		className_ms.len = className_b.length();
		className_ms.data = static_cast<char*>(malloc(className_ms.len));
		memcpy(className_ms.data, className_b.data(), className_ms.len);
		struct seaqt_string sigval1 = className_ms;
		QWidget* sigval2 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval3 = name_ms;
		QWidget* callback_return_value = vtbl->createWidget(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend QWidget* QUiLoader_virtualbase_createWidget(VirtualQUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name);

	virtual QLayout* createLayout(const QString& className, QObject* parent, const QString& name) override {
		if (vtbl->createLayout == 0) {
			return QUiLoader::createLayout(className, parent, name);
		}

		const QString className_ret = className;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray className_b = className_ret.toUtf8();
		struct seaqt_string className_ms;
		className_ms.len = className_b.length();
		className_ms.data = static_cast<char*>(malloc(className_ms.len));
		memcpy(className_ms.data, className_b.data(), className_ms.len);
		struct seaqt_string sigval1 = className_ms;
		QObject* sigval2 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval3 = name_ms;
		QLayout* callback_return_value = vtbl->createLayout(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend QLayout* QUiLoader_virtualbase_createLayout(VirtualQUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name);

	virtual QActionGroup* createActionGroup(QObject* parent, const QString& name) override {
		if (vtbl->createActionGroup == 0) {
			return QUiLoader::createActionGroup(parent, name);
		}

		QObject* sigval1 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		QActionGroup* callback_return_value = vtbl->createActionGroup(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QActionGroup* QUiLoader_virtualbase_createActionGroup(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);

	virtual QAction* createAction(QObject* parent, const QString& name) override {
		if (vtbl->createAction == 0) {
			return QUiLoader::createAction(parent, name);
		}

		QObject* sigval1 = parent;
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval2 = name_ms;
		QAction* callback_return_value = vtbl->createAction(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend QAction* QUiLoader_virtualbase_createAction(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QUiLoader::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QUiLoader_virtualbase_event(VirtualQUiLoader* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUiLoader::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QUiLoader_virtualbase_eventFilter(VirtualQUiLoader* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QUiLoader::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QUiLoader_virtualbase_timerEvent(VirtualQUiLoader* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUiLoader::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QUiLoader_virtualbase_childEvent(VirtualQUiLoader* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUiLoader::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QUiLoader_virtualbase_customEvent(VirtualQUiLoader* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUiLoader::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QUiLoader_virtualbase_connectNotify(VirtualQUiLoader* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUiLoader::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QUiLoader_virtualbase_disconnectNotify(VirtualQUiLoader* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QUiLoader_protectedbase_sender(const VirtualQUiLoader* self);
	friend int QUiLoader_protectedbase_senderSignalIndex(const VirtualQUiLoader* self);
	friend int QUiLoader_protectedbase_receivers(const VirtualQUiLoader* self, const char* signal);
	friend bool QUiLoader_protectedbase_isSignalConnected(const VirtualQUiLoader* self, QMetaMethod* signal);
};

VirtualQUiLoader* QUiLoader_new(const QUiLoader_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQUiLoader>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQUiLoader(vtbl) : nullptr;
}

VirtualQUiLoader* QUiLoader_new_parent(const QUiLoader_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQUiLoader>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQUiLoader(vtbl, parent) : nullptr;
}

void QUiLoader_virtbase(QUiLoader* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QUiLoader_metaObject(const QUiLoader* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUiLoader_metacast(QUiLoader* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUiLoader_metacall(QUiLoader* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QUiLoader_tr_s(const char* s) {
	QString _ret = QUiLoader::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QUiLoader_pluginPaths(const QUiLoader* self) {
	QStringList _ret = self->pluginPaths();
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

void QUiLoader_clearPluginPaths(QUiLoader* self) {
	self->clearPluginPaths();
}

void QUiLoader_addPluginPath(QUiLoader* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->addPluginPath(path_QString);
}

QWidget* QUiLoader_load_device(QUiLoader* self, QIODevice* device) {
	return self->load(device);
}

struct seaqt_array /* of struct seaqt_string */  QUiLoader_availableWidgets(const QUiLoader* self) {
	QStringList _ret = self->availableWidgets();
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

struct seaqt_array /* of struct seaqt_string */  QUiLoader_availableLayouts(const QUiLoader* self) {
	QStringList _ret = self->availableLayouts();
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

QWidget* QUiLoader_createWidget(QUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name) {
	QString className_QString = QString::fromUtf8(className.data, className.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->createWidget(className_QString, parent, name_QString);
}

QLayout* QUiLoader_createLayout(QUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name) {
	QString className_QString = QString::fromUtf8(className.data, className.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->createLayout(className_QString, parent, name_QString);
}

QActionGroup* QUiLoader_createActionGroup(QUiLoader* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->createActionGroup(parent, name_QString);
}

QAction* QUiLoader_createAction(QUiLoader* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->createAction(parent, name_QString);
}

void QUiLoader_setWorkingDirectory(QUiLoader* self, QDir* dir) {
	self->setWorkingDirectory(*dir);
}

QDir* QUiLoader_workingDirectory(const QUiLoader* self) {
	return new QDir(self->workingDirectory());
}

void QUiLoader_setLanguageChangeEnabled(QUiLoader* self, bool enabled) {
	self->setLanguageChangeEnabled(enabled);
}

bool QUiLoader_isLanguageChangeEnabled(const QUiLoader* self) {
	return self->isLanguageChangeEnabled();
}

void QUiLoader_setTranslationEnabled(QUiLoader* self, bool enabled) {
	self->setTranslationEnabled(enabled);
}

bool QUiLoader_isTranslationEnabled(const QUiLoader* self) {
	return self->isTranslationEnabled();
}

struct seaqt_string QUiLoader_errorString(const QUiLoader* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUiLoader_tr_s_c(const char* s, const char* c) {
	QString _ret = QUiLoader::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QUiLoader_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QUiLoader::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QUiLoader_load_device_parentWidget(QUiLoader* self, QIODevice* device, QWidget* parentWidget) {
	return self->load(device, parentWidget);
}

const QMetaObject* QUiLoader_staticMetaObject() { return &QUiLoader::staticMetaObject; }
void* QUiLoader_vdata(VirtualQUiLoader* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQUiLoader>()); }
VirtualQUiLoader* vdata_QUiLoader(void* vdata) { return reinterpret_cast<VirtualQUiLoader*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQUiLoader>()); }

QMetaObject* QUiLoader_virtualbase_metaObject(const VirtualQUiLoader* self) {

	return (QMetaObject*) self->QUiLoader::metaObject();
}

void* QUiLoader_virtualbase_metacast(VirtualQUiLoader* self, const char* param1) {

	return self->QUiLoader::qt_metacast(param1);
}

int QUiLoader_virtualbase_metacall(VirtualQUiLoader* self, int param1, int param2, void** param3) {

	return self->QUiLoader::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QWidget* QUiLoader_virtualbase_createWidget(VirtualQUiLoader* self, struct seaqt_string className, QWidget* parent, struct seaqt_string name) {
	QString className_QString = QString::fromUtf8(className.data, className.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QUiLoader::createWidget(className_QString, parent, name_QString);
}

QLayout* QUiLoader_virtualbase_createLayout(VirtualQUiLoader* self, struct seaqt_string className, QObject* parent, struct seaqt_string name) {
	QString className_QString = QString::fromUtf8(className.data, className.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QUiLoader::createLayout(className_QString, parent, name_QString);
}

QActionGroup* QUiLoader_virtualbase_createActionGroup(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QUiLoader::createActionGroup(parent, name_QString);
}

QAction* QUiLoader_virtualbase_createAction(VirtualQUiLoader* self, QObject* parent, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	return self->QUiLoader::createAction(parent, name_QString);
}

bool QUiLoader_virtualbase_event(VirtualQUiLoader* self, QEvent* event) {

	return self->QUiLoader::event(event);
}

bool QUiLoader_virtualbase_eventFilter(VirtualQUiLoader* self, QObject* watched, QEvent* event) {

	return self->QUiLoader::eventFilter(watched, event);
}

void QUiLoader_virtualbase_timerEvent(VirtualQUiLoader* self, QTimerEvent* event) {

	self->QUiLoader::timerEvent(event);
}

void QUiLoader_virtualbase_childEvent(VirtualQUiLoader* self, QChildEvent* event) {

	self->QUiLoader::childEvent(event);
}

void QUiLoader_virtualbase_customEvent(VirtualQUiLoader* self, QEvent* event) {

	self->QUiLoader::customEvent(event);
}

void QUiLoader_virtualbase_connectNotify(VirtualQUiLoader* self, QMetaMethod* signal) {

	self->QUiLoader::connectNotify(*signal);
}

void QUiLoader_virtualbase_disconnectNotify(VirtualQUiLoader* self, QMetaMethod* signal) {

	self->QUiLoader::disconnectNotify(*signal);
}

QObject* QUiLoader_protectedbase_sender(const VirtualQUiLoader* self) {
	return self->sender();
}

int QUiLoader_protectedbase_senderSignalIndex(const VirtualQUiLoader* self) {
	return self->senderSignalIndex();
}

int QUiLoader_protectedbase_receivers(const VirtualQUiLoader* self, const char* signal) {
	return self->receivers(signal);
}

bool QUiLoader_protectedbase_isSignalConnected(const VirtualQUiLoader* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QUiLoader_delete(QUiLoader* self) {
	delete self;
}

