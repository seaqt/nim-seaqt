#include <QAbstractEventDispatcher>
#include <QAbstractNativeEventFilter>
#include <QChildEvent>
#include <QCoreApplication>
#include <QDeadlineTimer>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPermission>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTranslator>
#include <qcoreapplication.h>
#include "gen_qcoreapplication.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQCoreApplication final : public QCoreApplication {
	const QCoreApplication_VTable* vtbl;
public:
	friend void* QCoreApplication_vdata(VirtualQCoreApplication* self);
	friend VirtualQCoreApplication* vdata_QCoreApplication(void* vdata);

	VirtualQCoreApplication(const QCoreApplication_VTable* vtbl, int& argc, char** argv): QCoreApplication(argc, argv), vtbl(vtbl) {}
	VirtualQCoreApplication(const QCoreApplication_VTable* vtbl, int& argc, char** argv, int param3): QCoreApplication(argc, argv, param3), vtbl(vtbl) {}

	virtual ~VirtualQCoreApplication() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCoreApplication::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QCoreApplication_virtualbase_metaObject(const VirtualQCoreApplication* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCoreApplication::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QCoreApplication_virtualbase_metacast(VirtualQCoreApplication* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCoreApplication::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QCoreApplication_virtualbase_metacall(VirtualQCoreApplication* self, int param1, int param2, void** param3);

	virtual bool notify(QObject* param1, QEvent* param2) override {
		if (vtbl->notify == 0) {
			return QCoreApplication::notify(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;
		bool callback_return_value = vtbl->notify(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QCoreApplication_virtualbase_notify(VirtualQCoreApplication* self, QObject* param1, QEvent* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QCoreApplication::event(param1);
		}

		QEvent* sigval1 = param1;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QCoreApplication_virtualbase_event(VirtualQCoreApplication* self, QEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCoreApplication::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QCoreApplication_virtualbase_eventFilter(VirtualQCoreApplication* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCoreApplication::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QCoreApplication_virtualbase_timerEvent(VirtualQCoreApplication* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCoreApplication::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QCoreApplication_virtualbase_childEvent(VirtualQCoreApplication* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCoreApplication::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QCoreApplication_virtualbase_customEvent(VirtualQCoreApplication* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCoreApplication::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QCoreApplication_virtualbase_connectNotify(VirtualQCoreApplication* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCoreApplication::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QCoreApplication_virtualbase_disconnectNotify(VirtualQCoreApplication* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void* QCoreApplication_protectedbase_resolveInterface(const VirtualQCoreApplication* self, const char* name, int revision);
	friend QObject* QCoreApplication_protectedbase_sender(const VirtualQCoreApplication* self);
	friend int QCoreApplication_protectedbase_senderSignalIndex(const VirtualQCoreApplication* self);
	friend int QCoreApplication_protectedbase_receivers(const VirtualQCoreApplication* self, const char* signal);
	friend bool QCoreApplication_protectedbase_isSignalConnected(const VirtualQCoreApplication* self, QMetaMethod* signal);
};

VirtualQCoreApplication* QCoreApplication_new_int_char(const QCoreApplication_VTable* vtbl, size_t vdata, int* argc, char** argv) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCoreApplication>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCoreApplication(vtbl, static_cast<int&>(*argc), argv) : nullptr;
}

VirtualQCoreApplication* QCoreApplication_new_int_char_int(const QCoreApplication_VTable* vtbl, size_t vdata, int* argc, char** argv, int param3) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQCoreApplication>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQCoreApplication(vtbl, static_cast<int&>(*argc), argv, static_cast<int>(param3)) : nullptr;
}

void QCoreApplication_virtbase(QCoreApplication* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QCoreApplication_metaObject(const QCoreApplication* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCoreApplication_metacast(QCoreApplication* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCoreApplication_metacall(QCoreApplication* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QCoreApplication_tr_s(const char* s) {
	QString _ret = QCoreApplication::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QCoreApplication_arguments() {
	QStringList _ret = QCoreApplication::arguments();
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

void QCoreApplication_setAttribute_attribute(int attribute) {
	QCoreApplication::setAttribute(static_cast<Qt::ApplicationAttribute>(attribute));
}

bool QCoreApplication_testAttribute(int attribute) {
	return QCoreApplication::testAttribute(static_cast<Qt::ApplicationAttribute>(attribute));
}

void QCoreApplication_setOrganizationDomain(struct seaqt_string orgDomain) {
	QString orgDomain_QString = QString::fromUtf8(orgDomain.data, orgDomain.len);
	QCoreApplication::setOrganizationDomain(orgDomain_QString);
}

struct seaqt_string QCoreApplication_organizationDomain() {
	QString _ret = QCoreApplication::organizationDomain();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_setOrganizationName(struct seaqt_string orgName) {
	QString orgName_QString = QString::fromUtf8(orgName.data, orgName.len);
	QCoreApplication::setOrganizationName(orgName_QString);
}

struct seaqt_string QCoreApplication_organizationName() {
	QString _ret = QCoreApplication::organizationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_setApplicationName(struct seaqt_string application) {
	QString application_QString = QString::fromUtf8(application.data, application.len);
	QCoreApplication::setApplicationName(application_QString);
}

struct seaqt_string QCoreApplication_applicationName() {
	QString _ret = QCoreApplication::applicationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_setApplicationVersion(struct seaqt_string version) {
	QString version_QString = QString::fromUtf8(version.data, version.len);
	QCoreApplication::setApplicationVersion(version_QString);
}

struct seaqt_string QCoreApplication_applicationVersion() {
	QString _ret = QCoreApplication::applicationVersion();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_setSetuidAllowed(bool allow) {
	QCoreApplication::setSetuidAllowed(allow);
}

bool QCoreApplication_isSetuidAllowed() {
	return QCoreApplication::isSetuidAllowed();
}

QCoreApplication* QCoreApplication_instance() {
	return QCoreApplication::instance();
}

int QCoreApplication_exec() {
	return QCoreApplication::exec();
}

void QCoreApplication_processEvents() {
	QCoreApplication::processEvents();
}

void QCoreApplication_processEvents_flags_maxtime(int flags, int maxtime) {
	QCoreApplication::processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags), static_cast<int>(maxtime));
}

void QCoreApplication_processEvents_flags_deadline(int flags, QDeadlineTimer* deadline) {
	QCoreApplication::processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags), *deadline);
}

bool QCoreApplication_sendEvent(QObject* receiver, QEvent* event) {
	return QCoreApplication::sendEvent(receiver, event);
}

void QCoreApplication_postEvent_receiver_event(QObject* receiver, QEvent* event) {
	QCoreApplication::postEvent(receiver, event);
}

void QCoreApplication_sendPostedEvents() {
	QCoreApplication::sendPostedEvents();
}

void QCoreApplication_removePostedEvents_receiver(QObject* receiver) {
	QCoreApplication::removePostedEvents(receiver);
}

QAbstractEventDispatcher* QCoreApplication_eventDispatcher() {
	return QCoreApplication::eventDispatcher();
}

void QCoreApplication_setEventDispatcher(QAbstractEventDispatcher* eventDispatcher) {
	QCoreApplication::setEventDispatcher(eventDispatcher);
}

bool QCoreApplication_notify(QCoreApplication* self, QObject* param1, QEvent* param2) {
	return self->notify(param1, param2);
}

bool QCoreApplication_startingUp() {
	return QCoreApplication::startingUp();
}

bool QCoreApplication_closingDown() {
	return QCoreApplication::closingDown();
}

struct seaqt_string QCoreApplication_applicationDirPath() {
	QString _ret = QCoreApplication::applicationDirPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCoreApplication_applicationFilePath() {
	QString _ret = QCoreApplication::applicationFilePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QCoreApplication_applicationPid() {
	qint64 _ret = QCoreApplication::applicationPid();
	return static_cast<long long>(_ret);
}

int QCoreApplication_checkPermission(QCoreApplication* self, QPermission* permission) {
	Qt::PermissionStatus _ret = self->checkPermission(*permission);
	return static_cast<int>(_ret);
}

void QCoreApplication_setLibraryPaths(struct seaqt_array /* of struct seaqt_string */  libraryPaths) {
	QStringList libraryPaths_QList;
	libraryPaths_QList.reserve(libraryPaths.len);
	struct seaqt_string* libraryPaths_arr = static_cast<struct seaqt_string*>(libraryPaths.data);
	for(size_t i = 0; i < libraryPaths.len; ++i) {
		QString libraryPaths_arr_i_QString = QString::fromUtf8(libraryPaths_arr[i].data, libraryPaths_arr[i].len);
		libraryPaths_QList.push_back(libraryPaths_arr_i_QString);
	}
	QCoreApplication::setLibraryPaths(libraryPaths_QList);
}

struct seaqt_array /* of struct seaqt_string */  QCoreApplication_libraryPaths() {
	QStringList _ret = QCoreApplication::libraryPaths();
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

void QCoreApplication_addLibraryPath(struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QCoreApplication::addLibraryPath(param1_QString);
}

void QCoreApplication_removeLibraryPath(struct seaqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	QCoreApplication::removeLibraryPath(param1_QString);
}

bool QCoreApplication_installTranslator(QTranslator* messageFile) {
	return QCoreApplication::installTranslator(messageFile);
}

bool QCoreApplication_removeTranslator(QTranslator* messageFile) {
	return QCoreApplication::removeTranslator(messageFile);
}

struct seaqt_string QCoreApplication_translate_context_key(const char* context, const char* key) {
	QString _ret = QCoreApplication::translate(context, key);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_installNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj) {
	self->installNativeEventFilter(filterObj);
}

void QCoreApplication_connect_installNativeEventFilter(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t, QAbstractNativeEventFilter*), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)(QAbstractNativeEventFilter*)>(&QCoreApplication::installNativeEventFilter), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractNativeEventFilter* filterObj) {
			QAbstractNativeEventFilter* sigval1 = filterObj;
			callback(release.slot, sigval1);
	});
}

void QCoreApplication_removeNativeEventFilter(QCoreApplication* self, QAbstractNativeEventFilter* filterObj) {
	self->removeNativeEventFilter(filterObj);
}

void QCoreApplication_connect_removeNativeEventFilter(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t, QAbstractNativeEventFilter*), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)(QAbstractNativeEventFilter*)>(&QCoreApplication::removeNativeEventFilter), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractNativeEventFilter* filterObj) {
			QAbstractNativeEventFilter* sigval1 = filterObj;
			callback(release.slot, sigval1);
	});
}

bool QCoreApplication_isQuitLockEnabled() {
	return QCoreApplication::isQuitLockEnabled();
}

void QCoreApplication_setQuitLockEnabled(bool enabled) {
	QCoreApplication::setQuitLockEnabled(enabled);
}

void QCoreApplication_quit() {
	QCoreApplication::quit();
}

void QCoreApplication_exit() {
	QCoreApplication::exit();
}

void QCoreApplication_organizationNameChanged(QCoreApplication* self) {
	self->organizationNameChanged();
}

void QCoreApplication_connect_organizationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)()>(&QCoreApplication::organizationNameChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCoreApplication_organizationDomainChanged(QCoreApplication* self) {
	self->organizationDomainChanged();
}

void QCoreApplication_connect_organizationDomainChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)()>(&QCoreApplication::organizationDomainChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCoreApplication_applicationNameChanged(QCoreApplication* self) {
	self->applicationNameChanged();
}

void QCoreApplication_connect_applicationNameChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)()>(&QCoreApplication::applicationNameChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QCoreApplication_applicationVersionChanged(QCoreApplication* self) {
	self->applicationVersionChanged();
}

void QCoreApplication_connect_applicationVersionChanged(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, static_cast<void (QCoreApplication::*)()>(&QCoreApplication::applicationVersionChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QCoreApplication_tr_s_c(const char* s, const char* c) {
	QString _ret = QCoreApplication::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCoreApplication_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QCoreApplication::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_setAttribute_attribute_on(int attribute, bool on) {
	QCoreApplication::setAttribute(static_cast<Qt::ApplicationAttribute>(attribute), on);
}

void QCoreApplication_processEvents_flags(int flags) {
	QCoreApplication::processEvents(static_cast<QEventLoop::ProcessEventsFlags>(flags));
}

void QCoreApplication_postEvent_receiver_event_priority(QObject* receiver, QEvent* event, int priority) {
	QCoreApplication::postEvent(receiver, event, static_cast<int>(priority));
}

void QCoreApplication_sendPostedEvents_receiver(QObject* receiver) {
	QCoreApplication::sendPostedEvents(receiver);
}

void QCoreApplication_sendPostedEvents_receiver_event_type(QObject* receiver, int event_type) {
	QCoreApplication::sendPostedEvents(receiver, static_cast<int>(event_type));
}

void QCoreApplication_removePostedEvents_receiver_eventType(QObject* receiver, int eventType) {
	QCoreApplication::removePostedEvents(receiver, static_cast<int>(eventType));
}

struct seaqt_string QCoreApplication_translate_context_key_disambiguation(const char* context, const char* key, const char* disambiguation) {
	QString _ret = QCoreApplication::translate(context, key, disambiguation);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QCoreApplication_translate_context_key_disambiguation_n(const char* context, const char* key, const char* disambiguation, int n) {
	QString _ret = QCoreApplication::translate(context, key, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCoreApplication_exit_retcode(int retcode) {
	QCoreApplication::exit(static_cast<int>(retcode));
}

void QCoreApplication_connect_aboutToQuit(QCoreApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QCoreApplication::connect(self, &QCoreApplication::aboutToQuit, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QCoreApplication_staticMetaObject() { return &QCoreApplication::staticMetaObject; }
void* QCoreApplication_vdata(VirtualQCoreApplication* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQCoreApplication>()); }
VirtualQCoreApplication* vdata_QCoreApplication(void* vdata) { return reinterpret_cast<VirtualQCoreApplication*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQCoreApplication>()); }

QMetaObject* QCoreApplication_virtualbase_metaObject(const VirtualQCoreApplication* self) {

	return (QMetaObject*) self->QCoreApplication::metaObject();
}

void* QCoreApplication_virtualbase_metacast(VirtualQCoreApplication* self, const char* param1) {

	return self->QCoreApplication::qt_metacast(param1);
}

int QCoreApplication_virtualbase_metacall(VirtualQCoreApplication* self, int param1, int param2, void** param3) {

	return self->QCoreApplication::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QCoreApplication_virtualbase_notify(VirtualQCoreApplication* self, QObject* param1, QEvent* param2) {

	return self->QCoreApplication::notify(param1, param2);
}

bool QCoreApplication_virtualbase_event(VirtualQCoreApplication* self, QEvent* param1) {

	return self->QCoreApplication::event(param1);
}

bool QCoreApplication_virtualbase_eventFilter(VirtualQCoreApplication* self, QObject* watched, QEvent* event) {

	return self->QCoreApplication::eventFilter(watched, event);
}

void QCoreApplication_virtualbase_timerEvent(VirtualQCoreApplication* self, QTimerEvent* event) {

	self->QCoreApplication::timerEvent(event);
}

void QCoreApplication_virtualbase_childEvent(VirtualQCoreApplication* self, QChildEvent* event) {

	self->QCoreApplication::childEvent(event);
}

void QCoreApplication_virtualbase_customEvent(VirtualQCoreApplication* self, QEvent* event) {

	self->QCoreApplication::customEvent(event);
}

void QCoreApplication_virtualbase_connectNotify(VirtualQCoreApplication* self, QMetaMethod* signal) {

	self->QCoreApplication::connectNotify(*signal);
}

void QCoreApplication_virtualbase_disconnectNotify(VirtualQCoreApplication* self, QMetaMethod* signal) {

	self->QCoreApplication::disconnectNotify(*signal);
}

void* QCoreApplication_protectedbase_resolveInterface(const VirtualQCoreApplication* self, const char* name, int revision) {
	return self->QCoreApplication::resolveInterface(name, static_cast<int>(revision));
}

QObject* QCoreApplication_protectedbase_sender(const VirtualQCoreApplication* self) {
	return self->QCoreApplication::sender();
}

int QCoreApplication_protectedbase_senderSignalIndex(const VirtualQCoreApplication* self) {
	return self->QCoreApplication::senderSignalIndex();
}

int QCoreApplication_protectedbase_receivers(const VirtualQCoreApplication* self, const char* signal) {
	return self->QCoreApplication::receivers(signal);
}

bool QCoreApplication_protectedbase_isSignalConnected(const VirtualQCoreApplication* self, QMetaMethod* signal) {
	return self->QCoreApplication::isSignalConnected(*signal);
}

void QCoreApplication_delete(QCoreApplication* self) {
	delete self;
}

