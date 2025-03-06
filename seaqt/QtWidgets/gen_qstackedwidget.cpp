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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QStackedWidget>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qstackedwidget.h>
#include "gen_qstackedwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStackedWidget final : public QStackedWidget {
	struct QStackedWidget_VTable* vtbl;
public:

	VirtualQStackedWidget(struct QStackedWidget_VTable* vtbl, QWidget* parent): QStackedWidget(parent), vtbl(vtbl) {};
	VirtualQStackedWidget(struct QStackedWidget_VTable* vtbl): QStackedWidget(), vtbl(vtbl) {};

	virtual ~VirtualQStackedWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStackedWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStackedWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStackedWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStackedWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStackedWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QStackedWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStackedWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStackedWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QStackedWidget::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QStackedWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QStackedWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QStackedWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QStackedWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStackedWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QStackedWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStackedWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QStackedWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QStackedWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QStackedWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QStackedWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QStackedWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QStackedWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QStackedWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QStackedWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QStackedWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QStackedWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QStackedWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QStackedWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QStackedWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QStackedWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QStackedWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QStackedWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QStackedWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QStackedWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QStackedWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QStackedWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QStackedWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QStackedWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QStackedWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QStackedWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QStackedWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QStackedWidget::nativeEvent(eventType, message, result);
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

	friend bool QStackedWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QStackedWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QStackedWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QStackedWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QStackedWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QStackedWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QStackedWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QStackedWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QStackedWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QStackedWidget_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QStackedWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStackedWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStackedWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStackedWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStackedWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStackedWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStackedWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStackedWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStackedWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QStackedWidget_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QStackedWidget_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
	friend void QStackedWidget_protectedbase_updateMicroFocus(void* self);
	friend void QStackedWidget_protectedbase_create(void* self);
	friend void QStackedWidget_protectedbase_destroy(void* self);
	friend bool QStackedWidget_protectedbase_focusNextChild(void* self);
	friend bool QStackedWidget_protectedbase_focusPreviousChild(void* self);
	friend QObject* QStackedWidget_protectedbase_sender(const void* self);
	friend int QStackedWidget_protectedbase_senderSignalIndex(const void* self);
	friend int QStackedWidget_protectedbase_receivers(const void* self, const char* signal);
	friend bool QStackedWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QStackedWidget* QStackedWidget_new(struct QStackedWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQStackedWidget(vtbl, parent);
}

QStackedWidget* QStackedWidget_new2(struct QStackedWidget_VTable* vtbl) {
	return new VirtualQStackedWidget(vtbl);
}

void QStackedWidget_virtbase(QStackedWidget* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QStackedWidget_metaObject(const QStackedWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStackedWidget_metacast(QStackedWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStackedWidget_metacall(QStackedWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStackedWidget_tr(const char* s) {
	QString _ret = QStackedWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf8(const char* s) {
	QString _ret = QStackedWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStackedWidget_addWidget(QStackedWidget* self, QWidget* w) {
	return self->addWidget(w);
}

int QStackedWidget_insertWidget(QStackedWidget* self, int index, QWidget* w) {
	return self->insertWidget(static_cast<int>(index), w);
}

void QStackedWidget_removeWidget(QStackedWidget* self, QWidget* w) {
	self->removeWidget(w);
}

QWidget* QStackedWidget_currentWidget(const QStackedWidget* self) {
	return self->currentWidget();
}

int QStackedWidget_currentIndex(const QStackedWidget* self) {
	return self->currentIndex();
}

int QStackedWidget_indexOf(const QStackedWidget* self, QWidget* param1) {
	return self->indexOf(param1);
}

QWidget* QStackedWidget_widget(const QStackedWidget* self, int param1) {
	return self->widget(static_cast<int>(param1));
}

int QStackedWidget_count(const QStackedWidget* self) {
	return self->count();
}

void QStackedWidget_setCurrentIndex(QStackedWidget* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QStackedWidget_setCurrentWidget(QStackedWidget* self, QWidget* w) {
	self->setCurrentWidget(w);
}

void QStackedWidget_currentChanged(QStackedWidget* self, int param1) {
	self->currentChanged(static_cast<int>(param1));
}

void QStackedWidget_connect_currentChanged(QStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedWidget::connect(self, static_cast<void (QStackedWidget::*)(int)>(&QStackedWidget::currentChanged), self, local_caller{slot, callback, release});
}

void QStackedWidget_widgetRemoved(QStackedWidget* self, int index) {
	self->widgetRemoved(static_cast<int>(index));
}

void QStackedWidget_connect_widgetRemoved(QStackedWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedWidget::connect(self, static_cast<void (QStackedWidget::*)(int)>(&QStackedWidget::widgetRemoved), self, local_caller{slot, callback, release});
}

struct miqt_string QStackedWidget_tr2(const char* s, const char* c) {
	QString _ret = QStackedWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QStackedWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QStackedWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStackedWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStackedWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::metaObject();

}

void* QStackedWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::qt_metacast(param1);

}

int QStackedWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QStackedWidget_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::event(e);

}

QSize* QStackedWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQStackedWidget*)(self) )->QStackedWidget::sizeHint());

}

void QStackedWidget_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::paintEvent(param1);

}

void QStackedWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::changeEvent(param1);

}

int QStackedWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::devType();

}

void QStackedWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::setVisible(visible);

}

QSize* QStackedWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQStackedWidget*)(self) )->QStackedWidget::minimumSizeHint());

}

int QStackedWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::heightForWidth(static_cast<int>(param1));

}

bool QStackedWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::hasHeightForWidth();

}

QPaintEngine* QStackedWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::paintEngine();

}

void QStackedWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::mousePressEvent(event);

}

void QStackedWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::mouseReleaseEvent(event);

}

void QStackedWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::mouseDoubleClickEvent(event);

}

void QStackedWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::mouseMoveEvent(event);

}

void QStackedWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::wheelEvent(event);

}

void QStackedWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::keyPressEvent(event);

}

void QStackedWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::keyReleaseEvent(event);

}

void QStackedWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::focusInEvent(event);

}

void QStackedWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::focusOutEvent(event);

}

void QStackedWidget_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::enterEvent(event);

}

void QStackedWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::leaveEvent(event);

}

void QStackedWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::moveEvent(event);

}

void QStackedWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::resizeEvent(event);

}

void QStackedWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::closeEvent(event);

}

void QStackedWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::contextMenuEvent(event);

}

void QStackedWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::tabletEvent(event);

}

void QStackedWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::actionEvent(event);

}

void QStackedWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::dragEnterEvent(event);

}

void QStackedWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::dragMoveEvent(event);

}

void QStackedWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::dragLeaveEvent(event);

}

void QStackedWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::dropEvent(event);

}

void QStackedWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::showEvent(event);

}

void QStackedWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::hideEvent(event);

}

bool QStackedWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QStackedWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::metric(static_cast<VirtualQStackedWidget::PaintDeviceMetric>(param1));

}

void QStackedWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQStackedWidget*)(self) )->QStackedWidget::initPainter(painter);

}

QPaintDevice* QStackedWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::redirected(offset);

}

QPainter* QStackedWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQStackedWidget*)(self) )->QStackedWidget::sharedPainter();

}

void QStackedWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::inputMethodEvent(param1);

}

QVariant* QStackedWidget_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQStackedWidget*)(self) )->QStackedWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QStackedWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::focusNextPrevChild(next);

}

bool QStackedWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStackedWidget*)(self) )->QStackedWidget::eventFilter(watched, event);

}

void QStackedWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::timerEvent(event);

}

void QStackedWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::childEvent(event);

}

void QStackedWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::customEvent(event);

}

void QStackedWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::connectNotify(*signal);

}

void QStackedWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStackedWidget*)(self) )->QStackedWidget::disconnectNotify(*signal);

}

const QMetaObject* QStackedWidget_staticMetaObject() { return &QStackedWidget::staticMetaObject; }
void QStackedWidget_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	self_cast->drawFrame(param1);

}

void QStackedWidget_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	self_cast->initStyleOption(option);

}

void QStackedWidget_protectedbase_updateMicroFocus(void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	self_cast->updateMicroFocus();

}

void QStackedWidget_protectedbase_create(void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	self_cast->create();

}

void QStackedWidget_protectedbase_destroy(void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	self_cast->destroy();

}

bool QStackedWidget_protectedbase_focusNextChild(void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->focusNextChild();

}

bool QStackedWidget_protectedbase_focusPreviousChild(void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QStackedWidget_protectedbase_sender(const void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->sender();

}

int QStackedWidget_protectedbase_senderSignalIndex(const void* self) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QStackedWidget_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->receivers(signal);

}

bool QStackedWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQStackedWidget* self_cast = static_cast<VirtualQStackedWidget*>( (QStackedWidget*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QStackedWidget_delete(QStackedWidget* self) {
	delete self;
}

