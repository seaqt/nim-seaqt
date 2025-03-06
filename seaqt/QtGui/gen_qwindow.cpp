#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QCursor>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QKeyEvent>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QScreen>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QWheelEvent>
#include <QWindow>
#include <qwindow.h>
#include "gen_qwindow.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWindow final : public QWindow {
	struct QWindow_VTable* vtbl;
public:

	VirtualQWindow(struct QWindow_VTable* vtbl): QWindow(), vtbl(vtbl) {};
	VirtualQWindow(struct QWindow_VTable* vtbl, QWindow* parent): QWindow(parent), vtbl(vtbl) {};
	VirtualQWindow(struct QWindow_VTable* vtbl, QScreen* screen): QWindow(screen), vtbl(vtbl) {};

	virtual ~VirtualQWindow() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QWindow_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QWindow_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWindow::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QWindow::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(vtbl, this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QWindow_virtualbase_surfaceType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QWindow::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(vtbl, this);

		return *callback_return_value;
	}

	friend QSurfaceFormat* QWindow_virtualbase_format(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QWindow::size();
		}


		QSize* callback_return_value = vtbl->size(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QWindow_virtualbase_size(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QWindow::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(vtbl, this);

		return callback_return_value;
	}

	friend QAccessibleInterface* QWindow_virtualbase_accessibleRoot(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QWindow::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(vtbl, this);

		return callback_return_value;
	}

	friend QObject* QWindow_virtualbase_focusObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QWindow::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QWindow::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QWindow::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QWindow::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QWindow::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QWindow::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QWindow::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWindow::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QWindow_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QWindow::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWindow::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QWindow::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWindow::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWindow::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWindow::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QWindow::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QWindow::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QWindow::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWindow::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWindow_protectedbase_sender(const void* self);
	friend int QWindow_protectedbase_senderSignalIndex(const void* self);
	friend int QWindow_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWindow_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWindow* QWindow_new(struct QWindow_VTable* vtbl) {
	return new VirtualQWindow(vtbl);
}

QWindow* QWindow_new2(struct QWindow_VTable* vtbl, QWindow* parent) {
	return new VirtualQWindow(vtbl, parent);
}

QWindow* QWindow_new3(struct QWindow_VTable* vtbl, QScreen* screen) {
	return new VirtualQWindow(vtbl, screen);
}

void QWindow_virtbase(QWindow* src, QObject** outptr_QObject, QSurface** outptr_QSurface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QSurface = static_cast<QSurface*>(src);
}

QMetaObject* QWindow_metaObject(const QWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWindow_metacast(QWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWindow_metacall(QWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWindow_tr(const char* s) {
	QString _ret = QWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWindow_trUtf8(const char* s) {
	QString _ret = QWindow::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWindow_setSurfaceType(QWindow* self, int surfaceType) {
	self->setSurfaceType(static_cast<QSurface::SurfaceType>(surfaceType));
}

int QWindow_surfaceType(const QWindow* self) {
	QSurface::SurfaceType _ret = self->surfaceType();
	return static_cast<int>(_ret);
}

bool QWindow_isVisible(const QWindow* self) {
	return self->isVisible();
}

int QWindow_visibility(const QWindow* self) {
	QWindow::Visibility _ret = self->visibility();
	return static_cast<int>(_ret);
}

void QWindow_setVisibility(QWindow* self, int v) {
	self->setVisibility(static_cast<QWindow::Visibility>(v));
}

void QWindow_create(QWindow* self) {
	self->create();
}

uintptr_t QWindow_winId(const QWindow* self) {
	WId _ret = self->winId();
	return static_cast<uintptr_t>(_ret);
}

QWindow* QWindow_parent(const QWindow* self, int mode) {
	return self->parent(static_cast<QWindow::AncestorMode>(mode));
}

QWindow* QWindow_parent2(const QWindow* self) {
	return self->parent();
}

void QWindow_setParent(QWindow* self, QWindow* parent) {
	self->setParent(parent);
}

bool QWindow_isTopLevel(const QWindow* self) {
	return self->isTopLevel();
}

bool QWindow_isModal(const QWindow* self) {
	return self->isModal();
}

int QWindow_modality(const QWindow* self) {
	Qt::WindowModality _ret = self->modality();
	return static_cast<int>(_ret);
}

void QWindow_setModality(QWindow* self, int modality) {
	self->setModality(static_cast<Qt::WindowModality>(modality));
}

void QWindow_setFormat(QWindow* self, QSurfaceFormat* format) {
	self->setFormat(*format);
}

QSurfaceFormat* QWindow_format(const QWindow* self) {
	return new QSurfaceFormat(self->format());
}

QSurfaceFormat* QWindow_requestedFormat(const QWindow* self) {
	return new QSurfaceFormat(self->requestedFormat());
}

void QWindow_setFlags(QWindow* self, int flags) {
	self->setFlags(static_cast<Qt::WindowFlags>(flags));
}

int QWindow_flags(const QWindow* self) {
	Qt::WindowFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QWindow_setFlag(QWindow* self, int param1) {
	self->setFlag(static_cast<Qt::WindowType>(param1));
}

int QWindow_type(const QWindow* self) {
	Qt::WindowType _ret = self->type();
	return static_cast<int>(_ret);
}

struct miqt_string QWindow_title(const QWindow* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWindow_setOpacity(QWindow* self, double level) {
	self->setOpacity(static_cast<qreal>(level));
}

double QWindow_opacity(const QWindow* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QWindow_setMask(QWindow* self, QRegion* region) {
	self->setMask(*region);
}

QRegion* QWindow_mask(const QWindow* self) {
	return new QRegion(self->mask());
}

bool QWindow_isActive(const QWindow* self) {
	return self->isActive();
}

void QWindow_reportContentOrientationChange(QWindow* self, int orientation) {
	self->reportContentOrientationChange(static_cast<Qt::ScreenOrientation>(orientation));
}

int QWindow_contentOrientation(const QWindow* self) {
	Qt::ScreenOrientation _ret = self->contentOrientation();
	return static_cast<int>(_ret);
}

double QWindow_devicePixelRatio(const QWindow* self) {
	qreal _ret = self->devicePixelRatio();
	return static_cast<double>(_ret);
}

int QWindow_windowState(const QWindow* self) {
	Qt::WindowState _ret = self->windowState();
	return static_cast<int>(_ret);
}

int QWindow_windowStates(const QWindow* self) {
	Qt::WindowStates _ret = self->windowStates();
	return static_cast<int>(_ret);
}

void QWindow_setWindowState(QWindow* self, int state) {
	self->setWindowState(static_cast<Qt::WindowState>(state));
}

void QWindow_setWindowStates(QWindow* self, int states) {
	self->setWindowStates(static_cast<Qt::WindowStates>(states));
}

void QWindow_setTransientParent(QWindow* self, QWindow* parent) {
	self->setTransientParent(parent);
}

QWindow* QWindow_transientParent(const QWindow* self) {
	return self->transientParent();
}

bool QWindow_isAncestorOf(const QWindow* self, QWindow* child) {
	return self->isAncestorOf(child);
}

bool QWindow_isExposed(const QWindow* self) {
	return self->isExposed();
}

int QWindow_minimumWidth(const QWindow* self) {
	return self->minimumWidth();
}

int QWindow_minimumHeight(const QWindow* self) {
	return self->minimumHeight();
}

int QWindow_maximumWidth(const QWindow* self) {
	return self->maximumWidth();
}

int QWindow_maximumHeight(const QWindow* self) {
	return self->maximumHeight();
}

QSize* QWindow_minimumSize(const QWindow* self) {
	return new QSize(self->minimumSize());
}

QSize* QWindow_maximumSize(const QWindow* self) {
	return new QSize(self->maximumSize());
}

QSize* QWindow_baseSize(const QWindow* self) {
	return new QSize(self->baseSize());
}

QSize* QWindow_sizeIncrement(const QWindow* self) {
	return new QSize(self->sizeIncrement());
}

void QWindow_setMinimumSize(QWindow* self, QSize* size) {
	self->setMinimumSize(*size);
}

void QWindow_setMaximumSize(QWindow* self, QSize* size) {
	self->setMaximumSize(*size);
}

void QWindow_setBaseSize(QWindow* self, QSize* size) {
	self->setBaseSize(*size);
}

void QWindow_setSizeIncrement(QWindow* self, QSize* size) {
	self->setSizeIncrement(*size);
}

QRect* QWindow_geometry(const QWindow* self) {
	return new QRect(self->geometry());
}

QMargins* QWindow_frameMargins(const QWindow* self) {
	return new QMargins(self->frameMargins());
}

QRect* QWindow_frameGeometry(const QWindow* self) {
	return new QRect(self->frameGeometry());
}

QPoint* QWindow_framePosition(const QWindow* self) {
	return new QPoint(self->framePosition());
}

void QWindow_setFramePosition(QWindow* self, QPoint* point) {
	self->setFramePosition(*point);
}

int QWindow_width(const QWindow* self) {
	return self->width();
}

int QWindow_height(const QWindow* self) {
	return self->height();
}

int QWindow_x(const QWindow* self) {
	return self->x();
}

int QWindow_y(const QWindow* self) {
	return self->y();
}

QSize* QWindow_size(const QWindow* self) {
	return new QSize(self->size());
}

QPoint* QWindow_position(const QWindow* self) {
	return new QPoint(self->position());
}

void QWindow_setPosition(QWindow* self, QPoint* pt) {
	self->setPosition(*pt);
}

void QWindow_setPosition2(QWindow* self, int posx, int posy) {
	self->setPosition(static_cast<int>(posx), static_cast<int>(posy));
}

void QWindow_resize(QWindow* self, QSize* newSize) {
	self->resize(*newSize);
}

void QWindow_resize2(QWindow* self, int w, int h) {
	self->resize(static_cast<int>(w), static_cast<int>(h));
}

void QWindow_setFilePath(QWindow* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->setFilePath(filePath_QString);
}

struct miqt_string QWindow_filePath(const QWindow* self) {
	QString _ret = self->filePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWindow_setIcon(QWindow* self, QIcon* icon) {
	self->setIcon(*icon);
}

QIcon* QWindow_icon(const QWindow* self) {
	return new QIcon(self->icon());
}

void QWindow_destroy(QWindow* self) {
	self->destroy();
}

bool QWindow_setKeyboardGrabEnabled(QWindow* self, bool grab) {
	return self->setKeyboardGrabEnabled(grab);
}

bool QWindow_setMouseGrabEnabled(QWindow* self, bool grab) {
	return self->setMouseGrabEnabled(grab);
}

QScreen* QWindow_screen(const QWindow* self) {
	return self->screen();
}

void QWindow_setScreen(QWindow* self, QScreen* screen) {
	self->setScreen(screen);
}

QAccessibleInterface* QWindow_accessibleRoot(const QWindow* self) {
	return self->accessibleRoot();
}

QObject* QWindow_focusObject(const QWindow* self) {
	return self->focusObject();
}

QPoint* QWindow_mapToGlobal(const QWindow* self, QPoint* pos) {
	return new QPoint(self->mapToGlobal(*pos));
}

QPoint* QWindow_mapFromGlobal(const QWindow* self, QPoint* pos) {
	return new QPoint(self->mapFromGlobal(*pos));
}

QCursor* QWindow_cursor(const QWindow* self) {
	return new QCursor(self->cursor());
}

void QWindow_setCursor(QWindow* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

void QWindow_unsetCursor(QWindow* self) {
	self->unsetCursor();
}

QWindow* QWindow_fromWinId(uintptr_t id) {
	return QWindow::fromWinId(static_cast<WId>(id));
}

void QWindow_requestActivate(QWindow* self) {
	self->requestActivate();
}

void QWindow_setVisible(QWindow* self, bool visible) {
	self->setVisible(visible);
}

void QWindow_show(QWindow* self) {
	self->show();
}

void QWindow_hide(QWindow* self) {
	self->hide();
}

void QWindow_showMinimized(QWindow* self) {
	self->showMinimized();
}

void QWindow_showMaximized(QWindow* self) {
	self->showMaximized();
}

void QWindow_showFullScreen(QWindow* self) {
	self->showFullScreen();
}

void QWindow_showNormal(QWindow* self) {
	self->showNormal();
}

bool QWindow_close(QWindow* self) {
	return self->close();
}

void QWindow_raise(QWindow* self) {
	self->raise();
}

void QWindow_lower(QWindow* self) {
	self->lower();
}

bool QWindow_startSystemResize(QWindow* self, int edges) {
	return self->startSystemResize(static_cast<Qt::Edges>(edges));
}

bool QWindow_startSystemMove(QWindow* self) {
	return self->startSystemMove();
}

void QWindow_setTitle(QWindow* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

void QWindow_setX(QWindow* self, int arg) {
	self->setX(static_cast<int>(arg));
}

void QWindow_setY(QWindow* self, int arg) {
	self->setY(static_cast<int>(arg));
}

void QWindow_setWidth(QWindow* self, int arg) {
	self->setWidth(static_cast<int>(arg));
}

void QWindow_setHeight(QWindow* self, int arg) {
	self->setHeight(static_cast<int>(arg));
}

void QWindow_setGeometry(QWindow* self, int posx, int posy, int w, int h) {
	self->setGeometry(static_cast<int>(posx), static_cast<int>(posy), static_cast<int>(w), static_cast<int>(h));
}

void QWindow_setGeometryWithRect(QWindow* self, QRect* rect) {
	self->setGeometry(*rect);
}

void QWindow_setMinimumWidth(QWindow* self, int w) {
	self->setMinimumWidth(static_cast<int>(w));
}

void QWindow_setMinimumHeight(QWindow* self, int h) {
	self->setMinimumHeight(static_cast<int>(h));
}

void QWindow_setMaximumWidth(QWindow* self, int w) {
	self->setMaximumWidth(static_cast<int>(w));
}

void QWindow_setMaximumHeight(QWindow* self, int h) {
	self->setMaximumHeight(static_cast<int>(h));
}

void QWindow_alert(QWindow* self, int msec) {
	self->alert(static_cast<int>(msec));
}

void QWindow_requestUpdate(QWindow* self) {
	self->requestUpdate();
}

void QWindow_screenChanged(QWindow* self, QScreen* screen) {
	self->screenChanged(screen);
}

void QWindow_connect_screenChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScreen*);
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(QScreen*)>(&QWindow::screenChanged), self, local_caller{slot, callback, release});
}

void QWindow_modalityChanged(QWindow* self, int modality) {
	self->modalityChanged(static_cast<Qt::WindowModality>(modality));
}

void QWindow_connect_modalityChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::WindowModality modality) {
			Qt::WindowModality modality_ret = modality;
			int sigval1 = static_cast<int>(modality_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(Qt::WindowModality)>(&QWindow::modalityChanged), self, local_caller{slot, callback, release});
}

void QWindow_windowStateChanged(QWindow* self, int windowState) {
	self->windowStateChanged(static_cast<Qt::WindowState>(windowState));
}

void QWindow_connect_windowStateChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::WindowState windowState) {
			Qt::WindowState windowState_ret = windowState;
			int sigval1 = static_cast<int>(windowState_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(Qt::WindowState)>(&QWindow::windowStateChanged), self, local_caller{slot, callback, release});
}

void QWindow_windowTitleChanged(QWindow* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->windowTitleChanged(title_QString);
}

void QWindow_connect_windowTitleChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval1 = title_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(const QString&)>(&QWindow::windowTitleChanged), self, local_caller{slot, callback, release});
}

void QWindow_xChanged(QWindow* self, int arg) {
	self->xChanged(static_cast<int>(arg));
}

void QWindow_connect_xChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::xChanged), self, local_caller{slot, callback, release});
}

void QWindow_yChanged(QWindow* self, int arg) {
	self->yChanged(static_cast<int>(arg));
}

void QWindow_connect_yChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::yChanged), self, local_caller{slot, callback, release});
}

void QWindow_widthChanged(QWindow* self, int arg) {
	self->widthChanged(static_cast<int>(arg));
}

void QWindow_connect_widthChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::widthChanged), self, local_caller{slot, callback, release});
}

void QWindow_heightChanged(QWindow* self, int arg) {
	self->heightChanged(static_cast<int>(arg));
}

void QWindow_connect_heightChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::heightChanged), self, local_caller{slot, callback, release});
}

void QWindow_minimumWidthChanged(QWindow* self, int arg) {
	self->minimumWidthChanged(static_cast<int>(arg));
}

void QWindow_connect_minimumWidthChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::minimumWidthChanged), self, local_caller{slot, callback, release});
}

void QWindow_minimumHeightChanged(QWindow* self, int arg) {
	self->minimumHeightChanged(static_cast<int>(arg));
}

void QWindow_connect_minimumHeightChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::minimumHeightChanged), self, local_caller{slot, callback, release});
}

void QWindow_maximumWidthChanged(QWindow* self, int arg) {
	self->maximumWidthChanged(static_cast<int>(arg));
}

void QWindow_connect_maximumWidthChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::maximumWidthChanged), self, local_caller{slot, callback, release});
}

void QWindow_maximumHeightChanged(QWindow* self, int arg) {
	self->maximumHeightChanged(static_cast<int>(arg));
}

void QWindow_connect_maximumHeightChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int arg) {
			int sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(int)>(&QWindow::maximumHeightChanged), self, local_caller{slot, callback, release});
}

void QWindow_visibleChanged(QWindow* self, bool arg) {
	self->visibleChanged(arg);
}

void QWindow_connect_visibleChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool arg) {
			bool sigval1 = arg;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(bool)>(&QWindow::visibleChanged), self, local_caller{slot, callback, release});
}

void QWindow_visibilityChanged(QWindow* self, int visibility) {
	self->visibilityChanged(static_cast<QWindow::Visibility>(visibility));
}

void QWindow_connect_visibilityChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QWindow::Visibility visibility) {
			QWindow::Visibility visibility_ret = visibility;
			int sigval1 = static_cast<int>(visibility_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(QWindow::Visibility)>(&QWindow::visibilityChanged), self, local_caller{slot, callback, release});
}

void QWindow_activeChanged(QWindow* self) {
	self->activeChanged();
}

void QWindow_connect_activeChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)()>(&QWindow::activeChanged), self, local_caller{slot, callback, release});
}

void QWindow_contentOrientationChanged(QWindow* self, int orientation) {
	self->contentOrientationChanged(static_cast<Qt::ScreenOrientation>(orientation));
}

void QWindow_connect_contentOrientationChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(Qt::ScreenOrientation orientation) {
			Qt::ScreenOrientation orientation_ret = orientation;
			int sigval1 = static_cast<int>(orientation_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(Qt::ScreenOrientation)>(&QWindow::contentOrientationChanged), self, local_caller{slot, callback, release});
}

void QWindow_focusObjectChanged(QWindow* self, QObject* object) {
	self->focusObjectChanged(object);
}

void QWindow_connect_focusObjectChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QObject*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QObject*);
		void operator()(QObject* object) {
			QObject* sigval1 = object;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(QObject*)>(&QWindow::focusObjectChanged), self, local_caller{slot, callback, release});
}

void QWindow_opacityChanged(QWindow* self, double opacity) {
	self->opacityChanged(static_cast<qreal>(opacity));
}

void QWindow_connect_opacityChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, double);
		void operator()(qreal opacity) {
			qreal opacity_ret = opacity;
			double sigval1 = static_cast<double>(opacity_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(qreal)>(&QWindow::opacityChanged), self, local_caller{slot, callback, release});
}

void QWindow_transientParentChanged(QWindow* self, QWindow* transientParent) {
	self->transientParentChanged(transientParent);
}

void QWindow_connect_transientParentChanged(QWindow* self, intptr_t slot, void (*callback)(intptr_t, QWindow*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QWindow*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QWindow*);
		void operator()(QWindow* transientParent) {
			QWindow* sigval1 = transientParent;
			callback(slot, sigval1);
		}
	};
	VirtualQWindow::connect(self, static_cast<void (QWindow::*)(QWindow*)>(&QWindow::transientParentChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWindow_tr2(const char* s, const char* c) {
	QString _ret = QWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWindow_trUtf82(const char* s, const char* c) {
	QString _ret = QWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWindow_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWindow_setFlag2(QWindow* self, int param1, bool on) {
	self->setFlag(static_cast<Qt::WindowType>(param1), on);
}

bool QWindow_isAncestorOf2(const QWindow* self, QWindow* child, int mode) {
	return self->isAncestorOf(child, static_cast<QWindow::AncestorMode>(mode));
}

QMetaObject* QWindow_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWindow*)(self) )->QWindow::metaObject();

}

void* QWindow_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWindow*)(self) )->QWindow::qt_metacast(param1);

}

int QWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWindow*)(self) )->QWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QWindow_virtualbase_surfaceType(const void* self) {

	VirtualQWindow::SurfaceType _ret = ( (const VirtualQWindow*)(self) )->QWindow::surfaceType();
	return static_cast<int>(_ret);

}

QSurfaceFormat* QWindow_virtualbase_format(const void* self) {

	return new QSurfaceFormat(( (const VirtualQWindow*)(self) )->QWindow::format());

}

QSize* QWindow_virtualbase_size(const void* self) {

	return new QSize(( (const VirtualQWindow*)(self) )->QWindow::size());

}

QAccessibleInterface* QWindow_virtualbase_accessibleRoot(const void* self) {

	return ( (const VirtualQWindow*)(self) )->QWindow::accessibleRoot();

}

QObject* QWindow_virtualbase_focusObject(const void* self) {

	return ( (const VirtualQWindow*)(self) )->QWindow::focusObject();

}

void QWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::exposeEvent(param1);

}

void QWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::resizeEvent(param1);

}

void QWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::moveEvent(param1);

}

void QWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::focusInEvent(param1);

}

void QWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::focusOutEvent(param1);

}

void QWindow_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::showEvent(param1);

}

void QWindow_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::hideEvent(param1);

}

bool QWindow_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQWindow*)(self) )->QWindow::event(param1);

}

void QWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::keyPressEvent(param1);

}

void QWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::keyReleaseEvent(param1);

}

void QWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::mousePressEvent(param1);

}

void QWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::mouseReleaseEvent(param1);

}

void QWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::mouseDoubleClickEvent(param1);

}

void QWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::mouseMoveEvent(param1);

}

void QWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::wheelEvent(param1);

}

void QWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::touchEvent(param1);

}

void QWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {

	( (VirtualQWindow*)(self) )->QWindow::tabletEvent(param1);

}

bool QWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQWindow*)(self) )->QWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

bool QWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWindow*)(self) )->QWindow::eventFilter(watched, event);

}

void QWindow_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWindow*)(self) )->QWindow::timerEvent(event);

}

void QWindow_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWindow*)(self) )->QWindow::childEvent(event);

}

void QWindow_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWindow*)(self) )->QWindow::customEvent(event);

}

void QWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWindow*)(self) )->QWindow::connectNotify(*signal);

}

void QWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWindow*)(self) )->QWindow::disconnectNotify(*signal);

}

const QMetaObject* QWindow_staticMetaObject() { return &QWindow::staticMetaObject; }
QObject* QWindow_protectedbase_sender(const void* self) {
	VirtualQWindow* self_cast = static_cast<VirtualQWindow*>( (QWindow*)(self) );
	
	return self_cast->sender();

}

int QWindow_protectedbase_senderSignalIndex(const void* self) {
	VirtualQWindow* self_cast = static_cast<VirtualQWindow*>( (QWindow*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWindow_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQWindow* self_cast = static_cast<VirtualQWindow*>( (QWindow*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWindow_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQWindow* self_cast = static_cast<VirtualQWindow*>( (QWindow*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWindow_delete(QWindow* self) {
	delete self;
}

