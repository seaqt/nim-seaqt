#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QProgressBar>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionProgressBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qprogressbar.h>
#include "gen_qprogressbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQProgressBar final : public QProgressBar {
	struct QProgressBar_VTable* vtbl;
public:

	VirtualQProgressBar(struct QProgressBar_VTable* vtbl, QWidget* parent): QProgressBar(parent), vtbl(vtbl) {};
	VirtualQProgressBar(struct QProgressBar_VTable* vtbl): QProgressBar(), vtbl(vtbl) {};

	virtual ~VirtualQProgressBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProgressBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QProgressBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProgressBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QProgressBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProgressBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QString text() const override {
		if (vtbl->text == 0) {
			return QProgressBar::text();
		}


		struct miqt_string callback_return_value = vtbl->text(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QProgressBar_virtualbase_text(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QProgressBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QProgressBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QProgressBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QProgressBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QProgressBar::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QProgressBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionProgressBar* option) const override {
		if (vtbl->initStyleOption == 0) {
			QProgressBar::initStyleOption(option);
			return;
		}

		QStyleOptionProgressBar* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_initStyleOption(const void* self, QStyleOptionProgressBar* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QProgressBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QProgressBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QProgressBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QProgressBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QProgressBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QProgressBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QProgressBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QProgressBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QProgressBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QProgressBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QProgressBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QProgressBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QProgressBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QProgressBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QProgressBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QProgressBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QProgressBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QProgressBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QProgressBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QProgressBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QProgressBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QProgressBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QProgressBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QProgressBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QProgressBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QProgressBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QProgressBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QProgressBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QProgressBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QProgressBar::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QProgressBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QProgressBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QProgressBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QProgressBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QProgressBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QProgressBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QProgressBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QProgressBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QProgressBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QProgressBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QProgressBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QProgressBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QProgressBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QProgressBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProgressBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProgressBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProgressBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProgressBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProgressBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QProgressBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QProgressBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QProgressBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QProgressBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QProgressBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QProgressBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QProgressBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QProgressBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QProgressBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QProgressBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QProgressBar* QProgressBar_new(struct QProgressBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQProgressBar(vtbl, parent);
}

QProgressBar* QProgressBar_new2(struct QProgressBar_VTable* vtbl) {
	return new VirtualQProgressBar(vtbl);
}

void QProgressBar_virtbase(QProgressBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QProgressBar_metaObject(const QProgressBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProgressBar_metacast(QProgressBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProgressBar_metacall(QProgressBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProgressBar_tr(const char* s) {
	QString _ret = QProgressBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QProgressBar_minimum(const QProgressBar* self) {
	return self->minimum();
}

int QProgressBar_maximum(const QProgressBar* self) {
	return self->maximum();
}

int QProgressBar_value(const QProgressBar* self) {
	return self->value();
}

struct miqt_string QProgressBar_text(const QProgressBar* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressBar_setTextVisible(QProgressBar* self, bool visible) {
	self->setTextVisible(visible);
}

bool QProgressBar_isTextVisible(const QProgressBar* self) {
	return self->isTextVisible();
}

int QProgressBar_alignment(const QProgressBar* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QProgressBar_setAlignment(QProgressBar* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

QSize* QProgressBar_sizeHint(const QProgressBar* self) {
	return new QSize(self->sizeHint());
}

QSize* QProgressBar_minimumSizeHint(const QProgressBar* self) {
	return new QSize(self->minimumSizeHint());
}

int QProgressBar_orientation(const QProgressBar* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QProgressBar_setInvertedAppearance(QProgressBar* self, bool invert) {
	self->setInvertedAppearance(invert);
}

bool QProgressBar_invertedAppearance(const QProgressBar* self) {
	return self->invertedAppearance();
}

void QProgressBar_setTextDirection(QProgressBar* self, int textDirection) {
	self->setTextDirection(static_cast<QProgressBar::Direction>(textDirection));
}

int QProgressBar_textDirection(const QProgressBar* self) {
	QProgressBar::Direction _ret = self->textDirection();
	return static_cast<int>(_ret);
}

void QProgressBar_setFormat(QProgressBar* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	self->setFormat(format_QString);
}

void QProgressBar_resetFormat(QProgressBar* self) {
	self->resetFormat();
}

struct miqt_string QProgressBar_format(const QProgressBar* self) {
	QString _ret = self->format();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProgressBar_reset(QProgressBar* self) {
	self->reset();
}

void QProgressBar_setRange(QProgressBar* self, int minimum, int maximum) {
	self->setRange(static_cast<int>(minimum), static_cast<int>(maximum));
}

void QProgressBar_setMinimum(QProgressBar* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

void QProgressBar_setMaximum(QProgressBar* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

void QProgressBar_setValue(QProgressBar* self, int value) {
	self->setValue(static_cast<int>(value));
}

void QProgressBar_setOrientation(QProgressBar* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void QProgressBar_valueChanged(QProgressBar* self, int value) {
	self->valueChanged(static_cast<int>(value));
}

void QProgressBar_connect_valueChanged(QProgressBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQProgressBar::connect(self, static_cast<void (QProgressBar::*)(int)>(&QProgressBar::valueChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QProgressBar_tr2(const char* s, const char* c) {
	QString _ret = QProgressBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProgressBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QProgressBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QProgressBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQProgressBar*)(self) )->QProgressBar::metaObject();

}

void* QProgressBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::qt_metacast(param1);

}

int QProgressBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

struct miqt_string QProgressBar_virtualbase_text(const void* self) {

	QString _ret = ( (const VirtualQProgressBar*)(self) )->QProgressBar::text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

QSize* QProgressBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQProgressBar*)(self) )->QProgressBar::sizeHint());

}

QSize* QProgressBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQProgressBar*)(self) )->QProgressBar::minimumSizeHint());

}

bool QProgressBar_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::event(e);

}

void QProgressBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::paintEvent(param1);

}

void QProgressBar_virtualbase_initStyleOption(const void* self, QStyleOptionProgressBar* option) {

	( (const VirtualQProgressBar*)(self) )->QProgressBar::initStyleOption(option);

}

int QProgressBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::devType();

}

void QProgressBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::setVisible(visible);

}

int QProgressBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::heightForWidth(static_cast<int>(param1));

}

bool QProgressBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::hasHeightForWidth();

}

QPaintEngine* QProgressBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::paintEngine();

}

void QProgressBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::mousePressEvent(event);

}

void QProgressBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::mouseReleaseEvent(event);

}

void QProgressBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::mouseDoubleClickEvent(event);

}

void QProgressBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::mouseMoveEvent(event);

}

void QProgressBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::wheelEvent(event);

}

void QProgressBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::keyPressEvent(event);

}

void QProgressBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::keyReleaseEvent(event);

}

void QProgressBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::focusInEvent(event);

}

void QProgressBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::focusOutEvent(event);

}

void QProgressBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::enterEvent(event);

}

void QProgressBar_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::leaveEvent(event);

}

void QProgressBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::moveEvent(event);

}

void QProgressBar_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::resizeEvent(event);

}

void QProgressBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::closeEvent(event);

}

void QProgressBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::contextMenuEvent(event);

}

void QProgressBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::tabletEvent(event);

}

void QProgressBar_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::actionEvent(event);

}

void QProgressBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::dragEnterEvent(event);

}

void QProgressBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::dragMoveEvent(event);

}

void QProgressBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::dragLeaveEvent(event);

}

void QProgressBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::dropEvent(event);

}

void QProgressBar_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::showEvent(event);

}

void QProgressBar_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::hideEvent(event);

}

bool QProgressBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QProgressBar_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::changeEvent(param1);

}

int QProgressBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::metric(static_cast<VirtualQProgressBar::PaintDeviceMetric>(param1));

}

void QProgressBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQProgressBar*)(self) )->QProgressBar::initPainter(painter);

}

QPaintDevice* QProgressBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::redirected(offset);

}

QPainter* QProgressBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQProgressBar*)(self) )->QProgressBar::sharedPainter();

}

void QProgressBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::inputMethodEvent(param1);

}

QVariant* QProgressBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQProgressBar*)(self) )->QProgressBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QProgressBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::focusNextPrevChild(next);

}

bool QProgressBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQProgressBar*)(self) )->QProgressBar::eventFilter(watched, event);

}

void QProgressBar_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::timerEvent(event);

}

void QProgressBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::childEvent(event);

}

void QProgressBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::customEvent(event);

}

void QProgressBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::connectNotify(*signal);

}

void QProgressBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQProgressBar*)(self) )->QProgressBar::disconnectNotify(*signal);

}

const QMetaObject* QProgressBar_staticMetaObject() { return &QProgressBar::staticMetaObject; }
void QProgressBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QProgressBar_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QProgressBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QProgressBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QProgressBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QProgressBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QProgressBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QProgressBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QProgressBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQProgressBar* self_cast = dynamic_cast<VirtualQProgressBar*>( (QProgressBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QProgressBar_delete(QProgressBar* self) {
	delete self;
}

