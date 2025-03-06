#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qframe.h>
#include "gen_qframe.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFrame final : public QFrame {
	struct QFrame_VTable* vtbl;
public:

	VirtualQFrame(struct QFrame_VTable* vtbl, QWidget* parent): QFrame(parent), vtbl(vtbl) {};
	VirtualQFrame(struct QFrame_VTable* vtbl): QFrame(), vtbl(vtbl) {};
	VirtualQFrame(struct QFrame_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QFrame(parent, f), vtbl(vtbl) {};

	virtual ~VirtualQFrame() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFrame::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFrame_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFrame::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFrame_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFrame::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFrame::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFrame_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFrame::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QFrame::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QFrame::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFrame::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFrame::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFrame::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFrame_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFrame::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFrame::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFrame::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QFrame_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFrame::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFrame::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFrame::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFrame::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFrame::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QFrame::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFrame::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFrame::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFrame::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFrame::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFrame::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFrame::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QFrame::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFrame::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QFrame::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFrame::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFrame::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFrame::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFrame::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFrame::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFrame::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QFrame::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFrame::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFrame::nativeEvent(eventType, message, result);
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

	friend bool QFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFrame::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFrame_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFrame::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFrame::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFrame_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFrame::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QFrame_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFrame::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFrame::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QFrame_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFrame::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFrame::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFrame_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFrame::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFrame::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFrame::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFrame::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFrame::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFrame_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QFrame_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QFrame_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QFrame_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QFrame_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QFrame_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QFrame_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QFrame_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QFrame_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QFrame_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QFrame_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QFrame* QFrame_new(struct QFrame_VTable* vtbl, QWidget* parent) {
	return new VirtualQFrame(vtbl, parent);
}

QFrame* QFrame_new2(struct QFrame_VTable* vtbl) {
	return new VirtualQFrame(vtbl);
}

QFrame* QFrame_new3(struct QFrame_VTable* vtbl, QWidget* parent, int f) {
	return new VirtualQFrame(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QFrame_virtbase(QFrame* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QFrame_metaObject(const QFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFrame_metacast(QFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFrame_metacall(QFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFrame_tr(const char* s) {
	QString _ret = QFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_trUtf8(const char* s) {
	QString _ret = QFrame::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QFrame_frameStyle(const QFrame* self) {
	return self->frameStyle();
}

void QFrame_setFrameStyle(QFrame* self, int frameStyle) {
	self->setFrameStyle(static_cast<int>(frameStyle));
}

int QFrame_frameWidth(const QFrame* self) {
	return self->frameWidth();
}

QSize* QFrame_sizeHint(const QFrame* self) {
	return new QSize(self->sizeHint());
}

int QFrame_frameShape(const QFrame* self) {
	QFrame::Shape _ret = self->frameShape();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShape(QFrame* self, int frameShape) {
	self->setFrameShape(static_cast<QFrame::Shape>(frameShape));
}

int QFrame_frameShadow(const QFrame* self) {
	QFrame::Shadow _ret = self->frameShadow();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShadow(QFrame* self, int frameShadow) {
	self->setFrameShadow(static_cast<QFrame::Shadow>(frameShadow));
}

int QFrame_lineWidth(const QFrame* self) {
	return self->lineWidth();
}

void QFrame_setLineWidth(QFrame* self, int lineWidth) {
	self->setLineWidth(static_cast<int>(lineWidth));
}

int QFrame_midLineWidth(const QFrame* self) {
	return self->midLineWidth();
}

void QFrame_setMidLineWidth(QFrame* self, int midLineWidth) {
	self->setMidLineWidth(static_cast<int>(midLineWidth));
}

QRect* QFrame_frameRect(const QFrame* self) {
	return new QRect(self->frameRect());
}

void QFrame_setFrameRect(QFrame* self, QRect* frameRect) {
	self->setFrameRect(*frameRect);
}

struct miqt_string QFrame_tr2(const char* s, const char* c) {
	QString _ret = QFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_tr3(const char* s, const char* c, int n) {
	QString _ret = QFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_trUtf82(const char* s, const char* c) {
	QString _ret = QFrame::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFrame::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFrame_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFrame*)(self) )->QFrame::metaObject();

}

void* QFrame_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFrame*)(self) )->QFrame::qt_metacast(param1);

}

int QFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFrame*)(self) )->QFrame::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QFrame_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQFrame*)(self) )->QFrame::sizeHint());

}

bool QFrame_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQFrame*)(self) )->QFrame::event(e);

}

void QFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQFrame*)(self) )->QFrame::paintEvent(param1);

}

void QFrame_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQFrame*)(self) )->QFrame::changeEvent(param1);

}

int QFrame_virtualbase_devType(const void* self) {

	return ( (const VirtualQFrame*)(self) )->QFrame::devType();

}

void QFrame_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQFrame*)(self) )->QFrame::setVisible(visible);

}

QSize* QFrame_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQFrame*)(self) )->QFrame::minimumSizeHint());

}

int QFrame_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQFrame*)(self) )->QFrame::heightForWidth(static_cast<int>(param1));

}

bool QFrame_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQFrame*)(self) )->QFrame::hasHeightForWidth();

}

QPaintEngine* QFrame_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQFrame*)(self) )->QFrame::paintEngine();

}

void QFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::mousePressEvent(event);

}

void QFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::mouseReleaseEvent(event);

}

void QFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::mouseDoubleClickEvent(event);

}

void QFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::mouseMoveEvent(event);

}

void QFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::wheelEvent(event);

}

void QFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::keyPressEvent(event);

}

void QFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::keyReleaseEvent(event);

}

void QFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::focusInEvent(event);

}

void QFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::focusOutEvent(event);

}

void QFrame_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::enterEvent(event);

}

void QFrame_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::leaveEvent(event);

}

void QFrame_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::moveEvent(event);

}

void QFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::resizeEvent(event);

}

void QFrame_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::closeEvent(event);

}

void QFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::contextMenuEvent(event);

}

void QFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::tabletEvent(event);

}

void QFrame_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::actionEvent(event);

}

void QFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::dragEnterEvent(event);

}

void QFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::dragMoveEvent(event);

}

void QFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::dragLeaveEvent(event);

}

void QFrame_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::dropEvent(event);

}

void QFrame_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::showEvent(event);

}

void QFrame_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::hideEvent(event);

}

bool QFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQFrame*)(self) )->QFrame::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QFrame_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQFrame*)(self) )->QFrame::metric(static_cast<VirtualQFrame::PaintDeviceMetric>(param1));

}

void QFrame_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQFrame*)(self) )->QFrame::initPainter(painter);

}

QPaintDevice* QFrame_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQFrame*)(self) )->QFrame::redirected(offset);

}

QPainter* QFrame_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQFrame*)(self) )->QFrame::sharedPainter();

}

void QFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQFrame*)(self) )->QFrame::inputMethodEvent(param1);

}

QVariant* QFrame_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQFrame*)(self) )->QFrame::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QFrame_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQFrame*)(self) )->QFrame::focusNextPrevChild(next);

}

bool QFrame_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQFrame*)(self) )->QFrame::eventFilter(watched, event);

}

void QFrame_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::timerEvent(event);

}

void QFrame_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::childEvent(event);

}

void QFrame_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFrame*)(self) )->QFrame::customEvent(event);

}

void QFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFrame*)(self) )->QFrame::connectNotify(*signal);

}

void QFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFrame*)(self) )->QFrame::disconnectNotify(*signal);

}

const QMetaObject* QFrame_staticMetaObject() { return &QFrame::staticMetaObject; }
void QFrame_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QFrame_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QFrame_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QFrame_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QFrame_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QFrame_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QFrame_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QFrame_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QFrame_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QFrame_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QFrame_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQFrame* self_cast = dynamic_cast<VirtualQFrame*>( (QFrame*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QFrame_delete(QFrame* self) {
	delete self;
}

