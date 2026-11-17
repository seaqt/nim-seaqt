#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSettings>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qsettings.h>
#include "gen_qsettings.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSettings final : public QSettings {
	const QSettings_VTable* vtbl;
public:
	friend void* QSettings_vdata(VirtualQSettings* self);
	friend VirtualQSettings* vdata_QSettings(void* vdata);

	VirtualQSettings(const QSettings_VTable* vtbl, const QString& organization): QSettings(organization), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization): QSettings(scope, organization), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization): QSettings(format, scope, organization), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, const QString& fileName, QSettings::Format format): QSettings(fileName, format), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl): QSettings(), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Scope scope): QSettings(scope), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, const QString& organization, const QString& application): QSettings(organization, application), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, const QString& organization, const QString& application, QObject* parent): QSettings(organization, application, parent), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization, const QString& application): QSettings(scope, organization, application), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization, const QString& application, QObject* parent): QSettings(scope, organization, application, parent), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization, const QString& application): QSettings(format, scope, organization, application), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization, const QString& application, QObject* parent): QSettings(format, scope, organization, application, parent), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, const QString& fileName, QSettings::Format format, QObject* parent): QSettings(fileName, format, parent), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QObject* parent): QSettings(parent), vtbl(vtbl) {}
	VirtualQSettings(const QSettings_VTable* vtbl, QSettings::Scope scope, QObject* parent): QSettings(scope, parent), vtbl(vtbl) {}

	virtual ~VirtualQSettings() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSettings::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSettings_virtualbase_metaObject(const VirtualQSettings* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSettings::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSettings_virtualbase_metacast(VirtualQSettings* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSettings::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSettings_virtualbase_metacall(VirtualQSettings* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSettings::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSettings_virtualbase_event(VirtualQSettings* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSettings::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSettings_virtualbase_eventFilter(VirtualQSettings* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSettings::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSettings_virtualbase_timerEvent(VirtualQSettings* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSettings::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSettings_virtualbase_childEvent(VirtualQSettings* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSettings::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSettings_virtualbase_customEvent(VirtualQSettings* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSettings::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSettings_virtualbase_connectNotify(VirtualQSettings* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSettings::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSettings_virtualbase_disconnectNotify(VirtualQSettings* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSettings_protectedbase_sender(const VirtualQSettings* self);
	friend int QSettings_protectedbase_senderSignalIndex(const VirtualQSettings* self);
	friend int QSettings_protectedbase_receivers(const VirtualQSettings* self, const char* signal);
	friend bool QSettings_protectedbase_isSignalConnected(const VirtualQSettings* self, QMetaMethod* signal);
};

VirtualQSettings* QSettings_new_organization(const QSettings_VTable* vtbl, size_t vdata, struct seaqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, organization_QString) : nullptr;
}

VirtualQSettings* QSettings_new_scope_organization(const QSettings_VTable* vtbl, size_t vdata, int scope, struct seaqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString) : nullptr;
}

VirtualQSettings* QSettings_new_format_scope_organization(const QSettings_VTable* vtbl, size_t vdata, int format, int scope, struct seaqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString) : nullptr;
}

VirtualQSettings* QSettings_new_fileName_format(const QSettings_VTable* vtbl, size_t vdata, struct seaqt_string fileName, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, fileName_QString, static_cast<QSettings::Format>(format)) : nullptr;
}

VirtualQSettings* QSettings_new(const QSettings_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl) : nullptr;
}

VirtualQSettings* QSettings_new_scope(const QSettings_VTable* vtbl, size_t vdata, int scope) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope)) : nullptr;
}

VirtualQSettings* QSettings_new_organization_application(const QSettings_VTable* vtbl, size_t vdata, struct seaqt_string organization, struct seaqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, organization_QString, application_QString) : nullptr;
}

VirtualQSettings* QSettings_new_organization_application_parent(const QSettings_VTable* vtbl, size_t vdata, struct seaqt_string organization, struct seaqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, organization_QString, application_QString, parent) : nullptr;
}

VirtualQSettings* QSettings_new_scope_organization_application(const QSettings_VTable* vtbl, size_t vdata, int scope, struct seaqt_string organization, struct seaqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString, application_QString) : nullptr;
}

VirtualQSettings* QSettings_new_scope_organization_application_parent(const QSettings_VTable* vtbl, size_t vdata, int scope, struct seaqt_string organization, struct seaqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString, application_QString, parent) : nullptr;
}

VirtualQSettings* QSettings_new_format_scope_organization_application(const QSettings_VTable* vtbl, size_t vdata, int format, int scope, struct seaqt_string organization, struct seaqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString, application_QString) : nullptr;
}

VirtualQSettings* QSettings_new_format_scope_organization_application_parent(const QSettings_VTable* vtbl, size_t vdata, int format, int scope, struct seaqt_string organization, struct seaqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString, application_QString, parent) : nullptr;
}

VirtualQSettings* QSettings_new_fileName_format_parent(const QSettings_VTable* vtbl, size_t vdata, struct seaqt_string fileName, int format, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, fileName_QString, static_cast<QSettings::Format>(format), parent) : nullptr;
}

VirtualQSettings* QSettings_new_parent(const QSettings_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, parent) : nullptr;
}

VirtualQSettings* QSettings_new_scope_parent(const QSettings_VTable* vtbl, size_t vdata, int scope, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSettings>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), parent) : nullptr;
}

void QSettings_virtbase(QSettings* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSettings_metaObject(const QSettings* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSettings_metacast(QSettings* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSettings_metacall(QSettings* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSettings_tr_s(const char* s) {
	QString _ret = QSettings::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSettings_clear(QSettings* self) {
	self->clear();
}

void QSettings_sync(QSettings* self) {
	self->sync();
}

int QSettings_status(const QSettings* self) {
	QSettings::Status _ret = self->status();
	return static_cast<int>(_ret);
}

bool QSettings_isAtomicSyncRequired(const QSettings* self) {
	return self->isAtomicSyncRequired();
}

void QSettings_setAtomicSyncRequired(QSettings* self, bool enable) {
	self->setAtomicSyncRequired(enable);
}

void QSettings_beginGroup(QSettings* self, struct seaqt_string prefix) {
	QAnyStringView prefix_QString = QAnyStringView(prefix.data, prefix.len);
	self->beginGroup(prefix_QString);
}

void QSettings_endGroup(QSettings* self) {
	self->endGroup();
}

struct seaqt_string QSettings_group(const QSettings* self) {
	QString _ret = self->group();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSettings_beginReadArray(QSettings* self, struct seaqt_string prefix) {
	QAnyStringView prefix_QString = QAnyStringView(prefix.data, prefix.len);
	return self->beginReadArray(prefix_QString);
}

void QSettings_beginWriteArray_prefix(QSettings* self, struct seaqt_string prefix) {
	QAnyStringView prefix_QString = QAnyStringView(prefix.data, prefix.len);
	self->beginWriteArray(prefix_QString);
}

void QSettings_endArray(QSettings* self) {
	self->endArray();
}

void QSettings_setArrayIndex(QSettings* self, int i) {
	self->setArrayIndex(static_cast<int>(i));
}

struct seaqt_array /* of struct seaqt_string */  QSettings_allKeys(const QSettings* self) {
	QStringList _ret = self->allKeys();
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

struct seaqt_array /* of struct seaqt_string */  QSettings_childKeys(const QSettings* self) {
	QStringList _ret = self->childKeys();
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

struct seaqt_array /* of struct seaqt_string */  QSettings_childGroups(const QSettings* self) {
	QStringList _ret = self->childGroups();
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

bool QSettings_isWritable(const QSettings* self) {
	return self->isWritable();
}

void QSettings_setValue(QSettings* self, struct seaqt_string key, QVariant* value) {
	QAnyStringView key_QString = QAnyStringView(key.data, key.len);
	self->setValue(key_QString, *value);
}

QVariant* QSettings_value_key_defaultValue(const QSettings* self, struct seaqt_string key, QVariant* defaultValue) {
	QAnyStringView key_QString = QAnyStringView(key.data, key.len);
	return new QVariant(self->value(key_QString, *defaultValue));
}

QVariant* QSettings_value_key(const QSettings* self, struct seaqt_string key) {
	QAnyStringView key_QString = QAnyStringView(key.data, key.len);
	return new QVariant(self->value(key_QString));
}

void QSettings_remove(QSettings* self, struct seaqt_string key) {
	QAnyStringView key_QString = QAnyStringView(key.data, key.len);
	self->remove(key_QString);
}

bool QSettings_contains(const QSettings* self, struct seaqt_string key) {
	QAnyStringView key_QString = QAnyStringView(key.data, key.len);
	return self->contains(key_QString);
}

void QSettings_setFallbacksEnabled(QSettings* self, bool b) {
	self->setFallbacksEnabled(b);
}

bool QSettings_fallbacksEnabled(const QSettings* self) {
	return self->fallbacksEnabled();
}

struct seaqt_string QSettings_fileName(const QSettings* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSettings_format(const QSettings* self) {
	QSettings::Format _ret = self->format();
	return static_cast<int>(_ret);
}

int QSettings_scope(const QSettings* self) {
	QSettings::Scope _ret = self->scope();
	return static_cast<int>(_ret);
}

struct seaqt_string QSettings_organizationName(const QSettings* self) {
	QString _ret = self->organizationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSettings_applicationName(const QSettings* self) {
	QString _ret = self->applicationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSettings_setDefaultFormat(int format) {
	QSettings::setDefaultFormat(static_cast<QSettings::Format>(format));
}

int QSettings_defaultFormat() {
	QSettings::Format _ret = QSettings::defaultFormat();
	return static_cast<int>(_ret);
}

void QSettings_setPath(int format, int scope, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QSettings::setPath(static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), path_QString);
}

struct seaqt_string QSettings_tr_s_c(const char* s, const char* c) {
	QString _ret = QSettings::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSettings_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSettings::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSettings_beginWriteArray_prefix_size(QSettings* self, struct seaqt_string prefix, int size) {
	QAnyStringView prefix_QString = QAnyStringView(prefix.data, prefix.len);
	self->beginWriteArray(prefix_QString, static_cast<int>(size));
}

const QMetaObject* QSettings_staticMetaObject() { return &QSettings::staticMetaObject; }
void* QSettings_vdata(VirtualQSettings* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSettings>()); }
VirtualQSettings* vdata_QSettings(void* vdata) { return reinterpret_cast<VirtualQSettings*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSettings>()); }

QMetaObject* QSettings_virtualbase_metaObject(const VirtualQSettings* self) {

	return (QMetaObject*) self->QSettings::metaObject();
}

void* QSettings_virtualbase_metacast(VirtualQSettings* self, const char* param1) {

	return self->QSettings::qt_metacast(param1);
}

int QSettings_virtualbase_metacall(VirtualQSettings* self, int param1, int param2, void** param3) {

	return self->QSettings::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSettings_virtualbase_event(VirtualQSettings* self, QEvent* event) {

	return self->QSettings::event(event);
}

bool QSettings_virtualbase_eventFilter(VirtualQSettings* self, QObject* watched, QEvent* event) {

	return self->QSettings::eventFilter(watched, event);
}

void QSettings_virtualbase_timerEvent(VirtualQSettings* self, QTimerEvent* event) {

	self->QSettings::timerEvent(event);
}

void QSettings_virtualbase_childEvent(VirtualQSettings* self, QChildEvent* event) {

	self->QSettings::childEvent(event);
}

void QSettings_virtualbase_customEvent(VirtualQSettings* self, QEvent* event) {

	self->QSettings::customEvent(event);
}

void QSettings_virtualbase_connectNotify(VirtualQSettings* self, QMetaMethod* signal) {

	self->QSettings::connectNotify(*signal);
}

void QSettings_virtualbase_disconnectNotify(VirtualQSettings* self, QMetaMethod* signal) {

	self->QSettings::disconnectNotify(*signal);
}

QObject* QSettings_protectedbase_sender(const VirtualQSettings* self) {
	return self->sender();
}

int QSettings_protectedbase_senderSignalIndex(const VirtualQSettings* self) {
	return self->senderSignalIndex();
}

int QSettings_protectedbase_receivers(const VirtualQSettings* self, const char* signal) {
	return self->receivers(signal);
}

bool QSettings_protectedbase_isSignalConnected(const VirtualQSettings* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSettings_delete(QSettings* self) {
	delete self;
}

