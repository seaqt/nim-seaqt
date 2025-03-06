#include <QChildEvent>
#include <QClipboard>
#include <QCoreApplication>
#include <QCursor>
#include <QEvent>
#include <QFont>
#include <QGuiApplication>
#include <QIcon>
#include <QInputMethod>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPalette>
#include <QPoint>
#include <QScreen>
#include <QSessionManager>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleHints>
#include <QTimerEvent>
#include <QWindow>
#include <qguiapplication.h>
#include "gen_qguiapplication.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGuiApplication final : public QGuiApplication {
	struct QGuiApplication_VTable* vtbl;
public:

	VirtualQGuiApplication(struct QGuiApplication_VTable* vtbl, int& argc, char** argv): QGuiApplication(argc, argv), vtbl(vtbl) {};
	VirtualQGuiApplication(struct QGuiApplication_VTable* vtbl, int& argc, char** argv, int param3): QGuiApplication(argc, argv, param3), vtbl(vtbl) {};

	virtual ~VirtualQGuiApplication() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGuiApplication::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGuiApplication_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGuiApplication::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGuiApplication_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGuiApplication::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGuiApplication_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool notify(QObject* param1, QEvent* param2) override {
		if (vtbl->notify == 0) {
			return QGuiApplication::notify(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->notify(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGuiApplication_virtualbase_notify(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QGuiApplication::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGuiApplication_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGuiApplication::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGuiApplication_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGuiApplication::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGuiApplication_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGuiApplication::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGuiApplication_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGuiApplication::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGuiApplication_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGuiApplication::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGuiApplication_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGuiApplication::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGuiApplication_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGuiApplication_protectedbase_sender(const void* self);
	friend int QGuiApplication_protectedbase_senderSignalIndex(const void* self);
	friend int QGuiApplication_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGuiApplication_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGuiApplication* QGuiApplication_new(struct QGuiApplication_VTable* vtbl, int* argc, char** argv) {
	return new VirtualQGuiApplication(vtbl, static_cast<int&>(*argc), argv);
}

QGuiApplication* QGuiApplication_new2(struct QGuiApplication_VTable* vtbl, int* argc, char** argv, int param3) {
	return new VirtualQGuiApplication(vtbl, static_cast<int&>(*argc), argv, static_cast<int>(param3));
}

void QGuiApplication_virtbase(QGuiApplication* src, QCoreApplication** outptr_QCoreApplication) {
	*outptr_QCoreApplication = static_cast<QCoreApplication*>(src);
}

QMetaObject* QGuiApplication_metaObject(const QGuiApplication* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGuiApplication_metacast(QGuiApplication* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGuiApplication_metacall(QGuiApplication* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGuiApplication_tr(const char* s) {
	QString _ret = QGuiApplication::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGuiApplication_trUtf8(const char* s) {
	QString _ret = QGuiApplication::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGuiApplication_setApplicationDisplayName(struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QGuiApplication::setApplicationDisplayName(name_QString);
}

struct miqt_string QGuiApplication_applicationDisplayName() {
	QString _ret = QGuiApplication::applicationDisplayName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGuiApplication_setDesktopFileName(struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QGuiApplication::setDesktopFileName(name_QString);
}

struct miqt_string QGuiApplication_desktopFileName() {
	QString _ret = QGuiApplication::desktopFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QWindow* */  QGuiApplication_allWindows() {
	QWindowList _ret = QGuiApplication::allWindows();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWindow** _arr = static_cast<QWindow**>(malloc(sizeof(QWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QWindow* */  QGuiApplication_topLevelWindows() {
	QWindowList _ret = QGuiApplication::topLevelWindows();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWindow** _arr = static_cast<QWindow**>(malloc(sizeof(QWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWindow* QGuiApplication_topLevelAt(QPoint* pos) {
	return QGuiApplication::topLevelAt(*pos);
}

void QGuiApplication_setWindowIcon(QIcon* icon) {
	QGuiApplication::setWindowIcon(*icon);
}

QIcon* QGuiApplication_windowIcon() {
	return new QIcon(QGuiApplication::windowIcon());
}

struct miqt_string QGuiApplication_platformName() {
	QString _ret = QGuiApplication::platformName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWindow* QGuiApplication_modalWindow() {
	return QGuiApplication::modalWindow();
}

QWindow* QGuiApplication_focusWindow() {
	return QGuiApplication::focusWindow();
}

QObject* QGuiApplication_focusObject() {
	return QGuiApplication::focusObject();
}

QScreen* QGuiApplication_primaryScreen() {
	return QGuiApplication::primaryScreen();
}

struct miqt_array /* of QScreen* */  QGuiApplication_screens() {
	QList<QScreen *> _ret = QGuiApplication::screens();
	// Convert QList<> from C++ memory to manually-managed C memory
	QScreen** _arr = static_cast<QScreen**>(malloc(sizeof(QScreen*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QScreen* QGuiApplication_screenAt(QPoint* point) {
	return QGuiApplication::screenAt(*point);
}

double QGuiApplication_devicePixelRatio(const QGuiApplication* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

QCursor* QGuiApplication_overrideCursor() {
	return QGuiApplication::overrideCursor();
}

void QGuiApplication_setOverrideCursor(QCursor* overrideCursor) {
	QGuiApplication::setOverrideCursor(*overrideCursor);
}

void QGuiApplication_changeOverrideCursor(QCursor* param1) {
	QGuiApplication::changeOverrideCursor(*param1);
}

void QGuiApplication_restoreOverrideCursor() {
	QGuiApplication::restoreOverrideCursor();
}

QFont* QGuiApplication_font() {
	return new QFont(QGuiApplication::font());
}

void QGuiApplication_setFont(QFont* font) {
	QGuiApplication::setFont(*font);
}

QClipboard* QGuiApplication_clipboard() {
	return QGuiApplication::clipboard();
}

QPalette* QGuiApplication_palette() {
	return new QPalette(QGuiApplication::palette());
}

void QGuiApplication_setPalette(QPalette* pal) {
	QGuiApplication::setPalette(*pal);
}

int QGuiApplication_keyboardModifiers() {
	Qt::KeyboardModifiers _ret = QGuiApplication::keyboardModifiers();
	return static_cast<int>(_ret);
}

int QGuiApplication_queryKeyboardModifiers() {
	Qt::KeyboardModifiers _ret = QGuiApplication::queryKeyboardModifiers();
	return static_cast<int>(_ret);
}

int QGuiApplication_mouseButtons() {
	Qt::MouseButtons _ret = QGuiApplication::mouseButtons();
	return static_cast<int>(_ret);
}

void QGuiApplication_setLayoutDirection(int direction) {
	QGuiApplication::setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

int QGuiApplication_layoutDirection() {
	Qt::LayoutDirection _ret = QGuiApplication::layoutDirection();
	return static_cast<int>(_ret);
}

bool QGuiApplication_isRightToLeft() {
	return QGuiApplication::isRightToLeft();
}

bool QGuiApplication_isLeftToRight() {
	return QGuiApplication::isLeftToRight();
}

QStyleHints* QGuiApplication_styleHints() {
	return QGuiApplication::styleHints();
}

void QGuiApplication_setDesktopSettingsAware(bool on) {
	QGuiApplication::setDesktopSettingsAware(on);
}

bool QGuiApplication_desktopSettingsAware() {
	return QGuiApplication::desktopSettingsAware();
}

QInputMethod* QGuiApplication_inputMethod() {
	return QGuiApplication::inputMethod();
}

void QGuiApplication_setQuitOnLastWindowClosed(bool quit) {
	QGuiApplication::setQuitOnLastWindowClosed(quit);
}

bool QGuiApplication_quitOnLastWindowClosed() {
	return QGuiApplication::quitOnLastWindowClosed();
}

int QGuiApplication_applicationState() {
	Qt::ApplicationState _ret = QGuiApplication::applicationState();
	return static_cast<int>(_ret);
}

void QGuiApplication_setHighDpiScaleFactorRoundingPolicy(int policy) {
	QGuiApplication::setHighDpiScaleFactorRoundingPolicy(static_cast<Qt::HighDpiScaleFactorRoundingPolicy>(policy));
}

int QGuiApplication_highDpiScaleFactorRoundingPolicy() {
	Qt::HighDpiScaleFactorRoundingPolicy _ret = QGuiApplication::highDpiScaleFactorRoundingPolicy();
	return static_cast<int>(_ret);
}

int QGuiApplication_exec() {
	return QGuiApplication::exec();
}

bool QGuiApplication_notify(QGuiApplication* self, QObject* param1, QEvent* param2) {
	return self->notify(param1, param2);
}

bool QGuiApplication_isSessionRestored(const QGuiApplication* self) {
	return self->isSessionRestored();
}

struct miqt_string QGuiApplication_sessionId(const QGuiApplication* self) {
	QString _ret = self->sessionId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGuiApplication_sessionKey(const QGuiApplication* self) {
	QString _ret = self->sessionKey();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QGuiApplication_isSavingSession(const QGuiApplication* self) {
	return self->isSavingSession();
}

bool QGuiApplication_isFallbackSessionManagementEnabled() {
	return QGuiApplication::isFallbackSessionManagementEnabled();
}

void QGuiApplication_setFallbackSessionManagementEnabled(bool fallbackSessionManagementEnabled) {
	QGuiApplication::setFallbackSessionManagementEnabled(fallbackSessionManagementEnabled);
}

void QGuiApplication_sync() {
	QGuiApplication::sync();
}

void QGuiApplication_fontDatabaseChanged(QGuiApplication* self) {
	self->fontDatabaseChanged();
}

void QGuiApplication_connect_fontDatabaseChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)()>(&QGuiApplication::fontDatabaseChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_screenAdded(QGuiApplication* self, QScreen* screen) {
	self->screenAdded(screen);
}

void QGuiApplication_connect_screenAdded(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScreen*);
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QScreen*)>(&QGuiApplication::screenAdded), self, local_caller{slot, callback, release});
}

void QGuiApplication_screenRemoved(QGuiApplication* self, QScreen* screen) {
	self->screenRemoved(screen);
}

void QGuiApplication_connect_screenRemoved(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScreen*);
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QScreen*)>(&QGuiApplication::screenRemoved), self, local_caller{slot, callback, release});
}

void QGuiApplication_primaryScreenChanged(QGuiApplication* self, QScreen* screen) {
	self->primaryScreenChanged(screen);
}

void QGuiApplication_connect_primaryScreenChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScreen*);
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QScreen*)>(&QGuiApplication::primaryScreenChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_lastWindowClosed(QGuiApplication* self) {
	self->lastWindowClosed();
}

void QGuiApplication_connect_lastWindowClosed(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)()>(&QGuiApplication::lastWindowClosed), self, local_caller{slot, callback, release});
}

void QGuiApplication_focusObjectChanged(QGuiApplication* self, QObject* focusObject) {
	self->focusObjectChanged(focusObject);
}

void QGuiApplication_connect_focusObjectChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* focusObject) {
			QObject* sigval1 = focusObject;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QObject*)>(&QGuiApplication::focusObjectChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_focusWindowChanged(QGuiApplication* self, QWindow* focusWindow) {
	self->focusWindowChanged(focusWindow);
}

void QGuiApplication_connect_focusWindowChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QWindow*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWindow*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWindow*);
		void operator()(QWindow* focusWindow) {
			QWindow* sigval1 = focusWindow;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QWindow*)>(&QGuiApplication::focusWindowChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_applicationStateChanged(QGuiApplication* self, int state) {
	self->applicationStateChanged(static_cast<Qt::ApplicationState>(state));
}

void QGuiApplication_connect_applicationStateChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ApplicationState state) {
			Qt::ApplicationState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(Qt::ApplicationState)>(&QGuiApplication::applicationStateChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_layoutDirectionChanged(QGuiApplication* self, int direction) {
	self->layoutDirectionChanged(static_cast<Qt::LayoutDirection>(direction));
}

void QGuiApplication_connect_layoutDirectionChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::LayoutDirection direction) {
			Qt::LayoutDirection direction_ret = direction;
			int sigval1 = static_cast<int>(direction_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(Qt::LayoutDirection)>(&QGuiApplication::layoutDirectionChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_commitDataRequest(QGuiApplication* self, QSessionManager* sessionManager) {
	self->commitDataRequest(*sessionManager);
}

void QGuiApplication_connect_commitDataRequest(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QSessionManager*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSessionManager*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSessionManager*);
		void operator()(QSessionManager& sessionManager) {
			QSessionManager& sessionManager_ret = sessionManager;
			// Cast returned reference into pointer
			QSessionManager* sigval1 = &sessionManager_ret;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QSessionManager&)>(&QGuiApplication::commitDataRequest), self, local_caller{slot, callback, release});
}

void QGuiApplication_saveStateRequest(QGuiApplication* self, QSessionManager* sessionManager) {
	self->saveStateRequest(*sessionManager);
}

void QGuiApplication_connect_saveStateRequest(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QSessionManager*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QSessionManager*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QSessionManager*);
		void operator()(QSessionManager& sessionManager) {
			QSessionManager& sessionManager_ret = sessionManager;
			// Cast returned reference into pointer
			QSessionManager* sigval1 = &sessionManager_ret;
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(QSessionManager&)>(&QGuiApplication::saveStateRequest), self, local_caller{slot, callback, release});
}

void QGuiApplication_paletteChanged(QGuiApplication* self, QPalette* pal) {
	self->paletteChanged(*pal);
}

void QGuiApplication_connect_paletteChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QPalette*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPalette*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPalette*);
		void operator()(const QPalette& pal) {
			const QPalette& pal_ret = pal;
			// Cast returned reference into pointer
			QPalette* sigval1 = const_cast<QPalette*>(&pal_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(const QPalette&)>(&QGuiApplication::paletteChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_applicationDisplayNameChanged(QGuiApplication* self) {
	self->applicationDisplayNameChanged();
}

void QGuiApplication_connect_applicationDisplayNameChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)()>(&QGuiApplication::applicationDisplayNameChanged), self, local_caller{slot, callback, release});
}

void QGuiApplication_fontChanged(QGuiApplication* self, QFont* font) {
	self->fontChanged(*font);
}

void QGuiApplication_connect_fontChanged(QGuiApplication* self, intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QFont*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QFont*);
		void operator()(const QFont& font) {
			const QFont& font_ret = font;
			// Cast returned reference into pointer
			QFont* sigval1 = const_cast<QFont*>(&font_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQGuiApplication::connect(self, static_cast<void (QGuiApplication::*)(const QFont&)>(&QGuiApplication::fontChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGuiApplication_tr2(const char* s, const char* c) {
	QString _ret = QGuiApplication::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGuiApplication_tr3(const char* s, const char* c, int n) {
	QString _ret = QGuiApplication::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGuiApplication_trUtf82(const char* s, const char* c) {
	QString _ret = QGuiApplication::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGuiApplication_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGuiApplication::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGuiApplication_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGuiApplication*)(self) )->QGuiApplication::metaObject();

}

void* QGuiApplication_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGuiApplication*)(self) )->QGuiApplication::qt_metacast(param1);

}

int QGuiApplication_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGuiApplication*)(self) )->QGuiApplication::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGuiApplication_virtualbase_notify(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQGuiApplication*)(self) )->QGuiApplication::notify(param1, param2);

}

bool QGuiApplication_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQGuiApplication*)(self) )->QGuiApplication::event(param1);

}

bool QGuiApplication_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGuiApplication*)(self) )->QGuiApplication::eventFilter(watched, event);

}

void QGuiApplication_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGuiApplication*)(self) )->QGuiApplication::timerEvent(event);

}

void QGuiApplication_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGuiApplication*)(self) )->QGuiApplication::childEvent(event);

}

void QGuiApplication_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGuiApplication*)(self) )->QGuiApplication::customEvent(event);

}

void QGuiApplication_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGuiApplication*)(self) )->QGuiApplication::connectNotify(*signal);

}

void QGuiApplication_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGuiApplication*)(self) )->QGuiApplication::disconnectNotify(*signal);

}

const QMetaObject* QGuiApplication_staticMetaObject() { return &QGuiApplication::staticMetaObject; }
QObject* QGuiApplication_protectedbase_sender(const void* self) {
	VirtualQGuiApplication* self_cast = static_cast<VirtualQGuiApplication*>( (QGuiApplication*)(self) );
	
	return self_cast->sender();

}

int QGuiApplication_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGuiApplication* self_cast = static_cast<VirtualQGuiApplication*>( (QGuiApplication*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGuiApplication_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGuiApplication* self_cast = static_cast<VirtualQGuiApplication*>( (QGuiApplication*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGuiApplication_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGuiApplication* self_cast = static_cast<VirtualQGuiApplication*>( (QGuiApplication*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGuiApplication_delete(QGuiApplication* self) {
	delete self;
}

