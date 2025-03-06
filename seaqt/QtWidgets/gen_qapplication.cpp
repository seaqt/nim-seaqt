#include <QApplication>
#include <QChildEvent>
#include <QCoreApplication>
#include <QEvent>
#include <QFont>
#include <QFontMetrics>
#include <QGuiApplication>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPalette>
#include <QPoint>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QTimerEvent>
#include <QWidget>
#include <qapplication.h>
#include "gen_qapplication.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQApplication final : public QApplication {
	struct QApplication_VTable* vtbl;
public:

	VirtualQApplication(struct QApplication_VTable* vtbl, int& argc, char** argv): QApplication(argc, argv), vtbl(vtbl) {};
	VirtualQApplication(struct QApplication_VTable* vtbl, int& argc, char** argv, int param3): QApplication(argc, argv, param3), vtbl(vtbl) {};

	virtual ~VirtualQApplication() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QApplication::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QApplication_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QApplication::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QApplication_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QApplication::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QApplication_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool notify(QObject* param1, QEvent* param2) override {
		if (vtbl->notify == 0) {
			return QApplication::notify(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->notify(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QApplication_virtualbase_notify(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QApplication::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QApplication_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QApplication::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QApplication_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QApplication::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QApplication_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QApplication::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QApplication_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QApplication::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QApplication_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QApplication::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QApplication_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QApplication::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QApplication_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void* QApplication_protectedbase_resolveInterface(bool* _dynamic_cast_ok, const void* self, const char* name, int revision);
	friend QObject* QApplication_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QApplication_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QApplication_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QApplication_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QApplication* QApplication_new(struct QApplication_VTable* vtbl, int* argc, char** argv) {
	return new VirtualQApplication(vtbl, static_cast<int&>(*argc), argv);
}

QApplication* QApplication_new2(struct QApplication_VTable* vtbl, int* argc, char** argv, int param3) {
	return new VirtualQApplication(vtbl, static_cast<int&>(*argc), argv, static_cast<int>(param3));
}

void QApplication_virtbase(QApplication* src, QGuiApplication** outptr_QGuiApplication) {
	*outptr_QGuiApplication = static_cast<QGuiApplication*>(src);
}

QMetaObject* QApplication_metaObject(const QApplication* self) {
	return (QMetaObject*) self->metaObject();
}

void* QApplication_metacast(QApplication* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QApplication_metacall(QApplication* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QApplication_tr(const char* s) {
	QString _ret = QApplication::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStyle* QApplication_style() {
	return QApplication::style();
}

void QApplication_setStyle(QStyle* style) {
	QApplication::setStyle(style);
}

QStyle* QApplication_setStyleWithStyle(struct miqt_string style) {
	QString style_QString = QString::fromUtf8(style.data, style.len);
	return QApplication::setStyle(style_QString);
}

QPalette* QApplication_palette(QWidget* param1) {
	return new QPalette(QApplication::palette(param1));
}

QPalette* QApplication_paletteWithClassName(const char* className) {
	return new QPalette(QApplication::palette(className));
}

void QApplication_setPalette(QPalette* param1) {
	QApplication::setPalette(*param1);
}

QFont* QApplication_font() {
	return new QFont(QApplication::font());
}

QFont* QApplication_fontWithQWidget(QWidget* param1) {
	return new QFont(QApplication::font(param1));
}

QFont* QApplication_fontWithClassName(const char* className) {
	return new QFont(QApplication::font(className));
}

void QApplication_setFont(QFont* param1) {
	QApplication::setFont(*param1);
}

QFontMetrics* QApplication_fontMetrics() {
	return new QFontMetrics(QApplication::fontMetrics());
}

struct miqt_array /* of QWidget* */  QApplication_allWidgets() {
	QWidgetList _ret = QApplication::allWidgets();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QWidget* */  QApplication_topLevelWidgets() {
	QWidgetList _ret = QApplication::topLevelWidgets();
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWidget* QApplication_activePopupWidget() {
	return QApplication::activePopupWidget();
}

QWidget* QApplication_activeModalWidget() {
	return QApplication::activeModalWidget();
}

QWidget* QApplication_focusWidget() {
	return QApplication::focusWidget();
}

QWidget* QApplication_activeWindow() {
	return QApplication::activeWindow();
}

void QApplication_setActiveWindow(QWidget* act) {
	QApplication::setActiveWindow(act);
}

QWidget* QApplication_widgetAt(QPoint* p) {
	return QApplication::widgetAt(*p);
}

QWidget* QApplication_widgetAt2(int x, int y) {
	return QApplication::widgetAt(static_cast<int>(x), static_cast<int>(y));
}

QWidget* QApplication_topLevelAt(QPoint* p) {
	return QApplication::topLevelAt(*p);
}

QWidget* QApplication_topLevelAt2(int x, int y) {
	return QApplication::topLevelAt(static_cast<int>(x), static_cast<int>(y));
}

void QApplication_beep() {
	QApplication::beep();
}

void QApplication_alert(QWidget* widget) {
	QApplication::alert(widget);
}

void QApplication_setCursorFlashTime(int cursorFlashTime) {
	QApplication::setCursorFlashTime(static_cast<int>(cursorFlashTime));
}

int QApplication_cursorFlashTime() {
	return QApplication::cursorFlashTime();
}

void QApplication_setDoubleClickInterval(int doubleClickInterval) {
	QApplication::setDoubleClickInterval(static_cast<int>(doubleClickInterval));
}

int QApplication_doubleClickInterval() {
	return QApplication::doubleClickInterval();
}

void QApplication_setKeyboardInputInterval(int keyboardInputInterval) {
	QApplication::setKeyboardInputInterval(static_cast<int>(keyboardInputInterval));
}

int QApplication_keyboardInputInterval() {
	return QApplication::keyboardInputInterval();
}

void QApplication_setWheelScrollLines(int wheelScrollLines) {
	QApplication::setWheelScrollLines(static_cast<int>(wheelScrollLines));
}

int QApplication_wheelScrollLines() {
	return QApplication::wheelScrollLines();
}

void QApplication_setStartDragTime(int ms) {
	QApplication::setStartDragTime(static_cast<int>(ms));
}

int QApplication_startDragTime() {
	return QApplication::startDragTime();
}

void QApplication_setStartDragDistance(int l) {
	QApplication::setStartDragDistance(static_cast<int>(l));
}

int QApplication_startDragDistance() {
	return QApplication::startDragDistance();
}

bool QApplication_isEffectEnabled(int param1) {
	return QApplication::isEffectEnabled(static_cast<Qt::UIEffect>(param1));
}

void QApplication_setEffectEnabled(int param1) {
	QApplication::setEffectEnabled(static_cast<Qt::UIEffect>(param1));
}

int QApplication_exec() {
	return QApplication::exec();
}

bool QApplication_notify(QApplication* self, QObject* param1, QEvent* param2) {
	return self->notify(param1, param2);
}

void QApplication_focusChanged(QApplication* self, QWidget* old, QWidget* now) {
	self->focusChanged(old, now);
}

void QApplication_connect_focusChanged(QApplication* self, intptr_t slot, void (*callback)(intptr_t, QWidget*, QWidget*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWidget*, QWidget*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWidget*, QWidget*);
		void operator()(QWidget* old, QWidget* now) {
			QWidget* sigval1 = old;
			QWidget* sigval2 = now;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQApplication::connect(self, static_cast<void (QApplication::*)(QWidget*, QWidget*)>(&QApplication::focusChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QApplication_styleSheet(const QApplication* self) {
	QString _ret = self->styleSheet();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QApplication_setStyleSheet(QApplication* self, struct miqt_string sheet) {
	QString sheet_QString = QString::fromUtf8(sheet.data, sheet.len);
	self->setStyleSheet(sheet_QString);
}

void QApplication_setAutoSipEnabled(QApplication* self, const bool enabled) {
	self->setAutoSipEnabled(enabled);
}

bool QApplication_autoSipEnabled(const QApplication* self) {
	return self->autoSipEnabled();
}

void QApplication_closeAllWindows() {
	QApplication::closeAllWindows();
}

void QApplication_aboutQt() {
	QApplication::aboutQt();
}

struct miqt_string QApplication_tr2(const char* s, const char* c) {
	QString _ret = QApplication::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QApplication_tr3(const char* s, const char* c, int n) {
	QString _ret = QApplication::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QApplication_setPalette2(QPalette* param1, const char* className) {
	QApplication::setPalette(*param1, className);
}

void QApplication_setFont2(QFont* param1, const char* className) {
	QApplication::setFont(*param1, className);
}

void QApplication_alert2(QWidget* widget, int duration) {
	QApplication::alert(widget, static_cast<int>(duration));
}

void QApplication_setEffectEnabled2(int param1, bool enable) {
	QApplication::setEffectEnabled(static_cast<Qt::UIEffect>(param1), enable);
}

QMetaObject* QApplication_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQApplication*)(self) )->QApplication::metaObject();

}

void* QApplication_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQApplication*)(self) )->QApplication::qt_metacast(param1);

}

int QApplication_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQApplication*)(self) )->QApplication::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QApplication_virtualbase_notify(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQApplication*)(self) )->QApplication::notify(param1, param2);

}

bool QApplication_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQApplication*)(self) )->QApplication::event(param1);

}

bool QApplication_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQApplication*)(self) )->QApplication::eventFilter(watched, event);

}

void QApplication_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQApplication*)(self) )->QApplication::timerEvent(event);

}

void QApplication_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQApplication*)(self) )->QApplication::childEvent(event);

}

void QApplication_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQApplication*)(self) )->QApplication::customEvent(event);

}

void QApplication_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQApplication*)(self) )->QApplication::connectNotify(*signal);

}

void QApplication_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQApplication*)(self) )->QApplication::disconnectNotify(*signal);

}

const QMetaObject* QApplication_staticMetaObject() { return &QApplication::staticMetaObject; }
void* QApplication_protectedbase_resolveInterface(bool* _dynamic_cast_ok, const void* self, const char* name, int revision) {
	VirtualQApplication* self_cast = dynamic_cast<VirtualQApplication*>( (QApplication*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->resolveInterface(name, static_cast<int>(revision));

}

QObject* QApplication_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQApplication* self_cast = dynamic_cast<VirtualQApplication*>( (QApplication*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QApplication_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQApplication* self_cast = dynamic_cast<VirtualQApplication*>( (QApplication*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QApplication_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQApplication* self_cast = dynamic_cast<VirtualQApplication*>( (QApplication*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QApplication_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQApplication* self_cast = dynamic_cast<VirtualQApplication*>( (QApplication*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QApplication_delete(QApplication* self) {
	delete self;
}

