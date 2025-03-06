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
#include <QTextCodec>
#include <QTimerEvent>
#include <QVariant>
#include <qsettings.h>
#include "gen_qsettings.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSettings final : public QSettings {
	struct QSettings_VTable* vtbl;
public:

	VirtualQSettings(struct QSettings_VTable* vtbl, const QString& organization): QSettings(organization), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization): QSettings(scope, organization), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization): QSettings(format, scope, organization), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, const QString& fileName, QSettings::Format format): QSettings(fileName, format), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl): QSettings(), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Scope scope): QSettings(scope), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, const QString& organization, const QString& application): QSettings(organization, application), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, const QString& organization, const QString& application, QObject* parent): QSettings(organization, application, parent), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization, const QString& application): QSettings(scope, organization, application), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Scope scope, const QString& organization, const QString& application, QObject* parent): QSettings(scope, organization, application, parent), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization, const QString& application): QSettings(format, scope, organization, application), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Format format, QSettings::Scope scope, const QString& organization, const QString& application, QObject* parent): QSettings(format, scope, organization, application, parent), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, const QString& fileName, QSettings::Format format, QObject* parent): QSettings(fileName, format, parent), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QObject* parent): QSettings(parent), vtbl(vtbl) {};
	VirtualQSettings(struct QSettings_VTable* vtbl, QSettings::Scope scope, QObject* parent): QSettings(scope, parent), vtbl(vtbl) {};

	virtual ~VirtualQSettings() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSettings::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSettings_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSettings::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSettings_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSettings::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSettings_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSettings::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSettings_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSettings::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSettings_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSettings::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSettings_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSettings::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSettings_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSettings::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSettings_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSettings::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSettings_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSettings::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSettings_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSettings_protectedbase_sender(const void* self);
	friend int QSettings_protectedbase_senderSignalIndex(const void* self);
	friend int QSettings_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSettings_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSettings* QSettings_new(struct QSettings_VTable* vtbl, struct miqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	return new VirtualQSettings(vtbl, organization_QString);
}

QSettings* QSettings_new2(struct QSettings_VTable* vtbl, int scope, struct miqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString);
}

QSettings* QSettings_new3(struct QSettings_VTable* vtbl, int format, int scope, struct miqt_string organization) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString);
}

QSettings* QSettings_new4(struct QSettings_VTable* vtbl, struct miqt_string fileName, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQSettings(vtbl, fileName_QString, static_cast<QSettings::Format>(format));
}

QSettings* QSettings_new5(struct QSettings_VTable* vtbl) {
	return new VirtualQSettings(vtbl);
}

QSettings* QSettings_new6(struct QSettings_VTable* vtbl, int scope) {
	return new VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope));
}

QSettings* QSettings_new7(struct QSettings_VTable* vtbl, struct miqt_string organization, struct miqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, organization_QString, application_QString);
}

QSettings* QSettings_new8(struct QSettings_VTable* vtbl, struct miqt_string organization, struct miqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, organization_QString, application_QString, parent);
}

QSettings* QSettings_new9(struct QSettings_VTable* vtbl, int scope, struct miqt_string organization, struct miqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString, application_QString);
}

QSettings* QSettings_new10(struct QSettings_VTable* vtbl, int scope, struct miqt_string organization, struct miqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), organization_QString, application_QString, parent);
}

QSettings* QSettings_new11(struct QSettings_VTable* vtbl, int format, int scope, struct miqt_string organization, struct miqt_string application) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString, application_QString);
}

QSettings* QSettings_new12(struct QSettings_VTable* vtbl, int format, int scope, struct miqt_string organization, struct miqt_string application, QObject* parent) {
	QString organization_QString = QString::fromUtf8(organization.data, organization.len);
	QString application_QString = QString::fromUtf8(application.data, application.len);
	return new VirtualQSettings(vtbl, static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), organization_QString, application_QString, parent);
}

QSettings* QSettings_new13(struct QSettings_VTable* vtbl, struct miqt_string fileName, int format, QObject* parent) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new VirtualQSettings(vtbl, fileName_QString, static_cast<QSettings::Format>(format), parent);
}

QSettings* QSettings_new14(struct QSettings_VTable* vtbl, QObject* parent) {
	return new VirtualQSettings(vtbl, parent);
}

QSettings* QSettings_new15(struct QSettings_VTable* vtbl, int scope, QObject* parent) {
	return new VirtualQSettings(vtbl, static_cast<QSettings::Scope>(scope), parent);
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

struct miqt_string QSettings_tr(const char* s) {
	QString _ret = QSettings::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSettings_trUtf8(const char* s) {
	QString _ret = QSettings::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

void QSettings_beginGroup(QSettings* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->beginGroup(prefix_QString);
}

void QSettings_endGroup(QSettings* self) {
	self->endGroup();
}

struct miqt_string QSettings_group(const QSettings* self) {
	QString _ret = self->group();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSettings_beginReadArray(QSettings* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	return self->beginReadArray(prefix_QString);
}

void QSettings_beginWriteArray(QSettings* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->beginWriteArray(prefix_QString);
}

void QSettings_endArray(QSettings* self) {
	self->endArray();
}

void QSettings_setArrayIndex(QSettings* self, int i) {
	self->setArrayIndex(static_cast<int>(i));
}

struct miqt_array /* of struct miqt_string */  QSettings_allKeys(const QSettings* self) {
	QStringList _ret = self->allKeys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QSettings_childKeys(const QSettings* self) {
	QStringList _ret = self->childKeys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QSettings_childGroups(const QSettings* self) {
	QStringList _ret = self->childGroups();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSettings_isWritable(const QSettings* self) {
	return self->isWritable();
}

void QSettings_setValue(QSettings* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setValue(key_QString, *value);
}

QVariant* QSettings_value(const QSettings* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->value(key_QString));
}

void QSettings_remove(QSettings* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->remove(key_QString);
}

bool QSettings_contains(const QSettings* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return self->contains(key_QString);
}

void QSettings_setFallbacksEnabled(QSettings* self, bool b) {
	self->setFallbacksEnabled(b);
}

bool QSettings_fallbacksEnabled(const QSettings* self) {
	return self->fallbacksEnabled();
}

struct miqt_string QSettings_fileName(const QSettings* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

struct miqt_string QSettings_organizationName(const QSettings* self) {
	QString _ret = self->organizationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSettings_applicationName(const QSettings* self) {
	QString _ret = self->applicationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSettings_setIniCodec(QSettings* self, QTextCodec* codec) {
	self->setIniCodec(codec);
}

void QSettings_setIniCodecWithCodecName(QSettings* self, const char* codecName) {
	self->setIniCodec(codecName);
}

QTextCodec* QSettings_iniCodec(const QSettings* self) {
	return self->iniCodec();
}

void QSettings_setDefaultFormat(int format) {
	QSettings::setDefaultFormat(static_cast<QSettings::Format>(format));
}

int QSettings_defaultFormat() {
	QSettings::Format _ret = QSettings::defaultFormat();
	return static_cast<int>(_ret);
}

void QSettings_setSystemIniPath(struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QSettings::setSystemIniPath(dir_QString);
}

void QSettings_setUserIniPath(struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QSettings::setUserIniPath(dir_QString);
}

void QSettings_setPath(int format, int scope, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	QSettings::setPath(static_cast<QSettings::Format>(format), static_cast<QSettings::Scope>(scope), path_QString);
}

struct miqt_string QSettings_tr2(const char* s, const char* c) {
	QString _ret = QSettings::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSettings_tr3(const char* s, const char* c, int n) {
	QString _ret = QSettings::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSettings_trUtf82(const char* s, const char* c) {
	QString _ret = QSettings::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSettings_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSettings::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSettings_beginWriteArray2(QSettings* self, struct miqt_string prefix, int size) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->beginWriteArray(prefix_QString, static_cast<int>(size));
}

QVariant* QSettings_value2(const QSettings* self, struct miqt_string key, QVariant* defaultValue) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->value(key_QString, *defaultValue));
}

QMetaObject* QSettings_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSettings*)(self) )->QSettings::metaObject();

}

void* QSettings_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSettings*)(self) )->QSettings::qt_metacast(param1);

}

int QSettings_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSettings*)(self) )->QSettings::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSettings_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSettings*)(self) )->QSettings::event(event);

}

bool QSettings_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSettings*)(self) )->QSettings::eventFilter(watched, event);

}

void QSettings_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSettings*)(self) )->QSettings::timerEvent(event);

}

void QSettings_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSettings*)(self) )->QSettings::childEvent(event);

}

void QSettings_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSettings*)(self) )->QSettings::customEvent(event);

}

void QSettings_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSettings*)(self) )->QSettings::connectNotify(*signal);

}

void QSettings_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSettings*)(self) )->QSettings::disconnectNotify(*signal);

}

const QMetaObject* QSettings_staticMetaObject() { return &QSettings::staticMetaObject; }
QObject* QSettings_protectedbase_sender(const void* self) {
	VirtualQSettings* self_cast = static_cast<VirtualQSettings*>( (QSettings*)(self) );
	
	return self_cast->sender();

}

int QSettings_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSettings* self_cast = static_cast<VirtualQSettings*>( (QSettings*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSettings_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSettings* self_cast = static_cast<VirtualQSettings*>( (QSettings*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSettings_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSettings* self_cast = static_cast<VirtualQSettings*>( (QSettings*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSettings_delete(QSettings* self) {
	delete self;
}

