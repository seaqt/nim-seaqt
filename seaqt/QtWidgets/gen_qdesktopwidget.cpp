#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesktopWidget>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdesktopwidget.h>
#include "gen_qdesktopwidget.h"
class VirtualQDesktopWidget final : public QDesktopWidget {
	const QDesktopWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QDesktopWidget_VTable* QDesktopWidget_vtbl(const VirtualQDesktopWidget* self);
	friend void* QDesktopWidget_vdata(const VirtualQDesktopWidget* self);
	friend void QDesktopWidget_setVdata(VirtualQDesktopWidget* self, void* vdata);

	VirtualQDesktopWidget(const QDesktopWidget_VTable* vtbl, void* vdata): QDesktopWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDesktopWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesktopWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDesktopWidget_virtualbase_metaObject(const VirtualQDesktopWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesktopWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDesktopWidget_virtualbase_metacast(VirtualQDesktopWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesktopWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDesktopWidget_virtualbase_metacall(VirtualQDesktopWidget* self, int param1, int param2, void** param3);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QDesktopWidget::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_resizeEvent(VirtualQDesktopWidget* self, QResizeEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesktopWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDesktopWidget_virtualbase_devType(const VirtualQDesktopWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesktopWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_setVisible(VirtualQDesktopWidget* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesktopWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDesktopWidget_virtualbase_sizeHint(const VirtualQDesktopWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesktopWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDesktopWidget_virtualbase_minimumSizeHint(const VirtualQDesktopWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesktopWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDesktopWidget_virtualbase_heightForWidth(const VirtualQDesktopWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesktopWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDesktopWidget_virtualbase_hasHeightForWidth(const VirtualQDesktopWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesktopWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDesktopWidget_virtualbase_paintEngine(const VirtualQDesktopWidget* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesktopWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDesktopWidget_virtualbase_event(VirtualQDesktopWidget* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesktopWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_mousePressEvent(VirtualQDesktopWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesktopWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_mouseReleaseEvent(VirtualQDesktopWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesktopWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_mouseDoubleClickEvent(VirtualQDesktopWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesktopWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_mouseMoveEvent(VirtualQDesktopWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesktopWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_wheelEvent(VirtualQDesktopWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesktopWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_keyPressEvent(VirtualQDesktopWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesktopWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_keyReleaseEvent(VirtualQDesktopWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesktopWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_focusInEvent(VirtualQDesktopWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesktopWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_focusOutEvent(VirtualQDesktopWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesktopWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_enterEvent(VirtualQDesktopWidget* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesktopWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_leaveEvent(VirtualQDesktopWidget* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesktopWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_paintEvent(VirtualQDesktopWidget* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesktopWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_moveEvent(VirtualQDesktopWidget* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesktopWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_closeEvent(VirtualQDesktopWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesktopWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_contextMenuEvent(VirtualQDesktopWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesktopWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_tabletEvent(VirtualQDesktopWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesktopWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_actionEvent(VirtualQDesktopWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesktopWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_dragEnterEvent(VirtualQDesktopWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesktopWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_dragMoveEvent(VirtualQDesktopWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesktopWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_dragLeaveEvent(VirtualQDesktopWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesktopWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_dropEvent(VirtualQDesktopWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesktopWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_showEvent(VirtualQDesktopWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesktopWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_hideEvent(VirtualQDesktopWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesktopWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDesktopWidget_virtualbase_nativeEvent(VirtualQDesktopWidget* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesktopWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_changeEvent(VirtualQDesktopWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesktopWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDesktopWidget_virtualbase_metric(const VirtualQDesktopWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesktopWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_initPainter(const VirtualQDesktopWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesktopWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDesktopWidget_virtualbase_redirected(const VirtualQDesktopWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesktopWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDesktopWidget_virtualbase_sharedPainter(const VirtualQDesktopWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesktopWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_inputMethodEvent(VirtualQDesktopWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesktopWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDesktopWidget_virtualbase_inputMethodQuery(const VirtualQDesktopWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesktopWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDesktopWidget_virtualbase_focusNextPrevChild(VirtualQDesktopWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesktopWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDesktopWidget_virtualbase_eventFilter(VirtualQDesktopWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesktopWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_timerEvent(VirtualQDesktopWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesktopWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_childEvent(VirtualQDesktopWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesktopWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_customEvent(VirtualQDesktopWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesktopWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_connectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesktopWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDesktopWidget_virtualbase_disconnectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesktopWidget_protectedbase_updateMicroFocus(VirtualQDesktopWidget* self);
	friend void QDesktopWidget_protectedbase_create(VirtualQDesktopWidget* self);
	friend void QDesktopWidget_protectedbase_destroy(VirtualQDesktopWidget* self);
	friend bool QDesktopWidget_protectedbase_focusNextChild(VirtualQDesktopWidget* self);
	friend bool QDesktopWidget_protectedbase_focusPreviousChild(VirtualQDesktopWidget* self);
	friend QObject* QDesktopWidget_protectedbase_sender(const VirtualQDesktopWidget* self);
	friend int QDesktopWidget_protectedbase_senderSignalIndex(const VirtualQDesktopWidget* self);
	friend int QDesktopWidget_protectedbase_receivers(const VirtualQDesktopWidget* self, const char* signal);
	friend bool QDesktopWidget_protectedbase_isSignalConnected(const VirtualQDesktopWidget* self, QMetaMethod* signal);
};

VirtualQDesktopWidget* QDesktopWidget_new(const QDesktopWidget_VTable* vtbl, void* vdata) {
	return new VirtualQDesktopWidget(vtbl, vdata);
}

void QDesktopWidget_virtbase(QDesktopWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesktopWidget_metaObject(const QDesktopWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesktopWidget_metacast(QDesktopWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesktopWidget_metacall(QDesktopWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDesktopWidget_tr(const char* s) {
	QString _ret = QDesktopWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf8(const char* s) {
	QString _ret = QDesktopWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesktopWidget_screenNumber(const QDesktopWidget* self) {
	return self->screenNumber();
}

QRect* QDesktopWidget_screenGeometry(const QDesktopWidget* self, QWidget* widget) {
	return new QRect(self->screenGeometry(widget));
}

QRect* QDesktopWidget_availableGeometry(const QDesktopWidget* self, QWidget* widget) {
	return new QRect(self->availableGeometry(widget));
}

bool QDesktopWidget_isVirtualDesktop(const QDesktopWidget* self) {
	return self->isVirtualDesktop();
}

int QDesktopWidget_numScreens(const QDesktopWidget* self) {
	return self->numScreens();
}

int QDesktopWidget_screenCount(const QDesktopWidget* self) {
	return self->screenCount();
}

int QDesktopWidget_primaryScreen(const QDesktopWidget* self) {
	return self->primaryScreen();
}

int QDesktopWidget_screenNumberWithQPoint(const QDesktopWidget* self, QPoint* param1) {
	return self->screenNumber(*param1);
}

QWidget* QDesktopWidget_screen(QDesktopWidget* self) {
	return self->screen();
}

QRect* QDesktopWidget_screenGeometry2(const QDesktopWidget* self) {
	return new QRect(self->screenGeometry());
}

QRect* QDesktopWidget_screenGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
	return new QRect(self->screenGeometry(*point));
}

QRect* QDesktopWidget_availableGeometry2(const QDesktopWidget* self) {
	return new QRect(self->availableGeometry());
}

QRect* QDesktopWidget_availableGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
	return new QRect(self->availableGeometry(*point));
}

void QDesktopWidget_resized(QDesktopWidget* self, int param1) {
	self->resized(static_cast<int>(param1));
}

void QDesktopWidget_connect_resized(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::resized), self, local_caller{slot, callback, release});
}

void QDesktopWidget_workAreaResized(QDesktopWidget* self, int param1) {
	self->workAreaResized(static_cast<int>(param1));
}

void QDesktopWidget_connect_workAreaResized(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::workAreaResized), self, local_caller{slot, callback, release});
}

void QDesktopWidget_screenCountChanged(QDesktopWidget* self, int param1) {
	self->screenCountChanged(static_cast<int>(param1));
}

void QDesktopWidget_connect_screenCountChanged(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int param1) {
			int sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::screenCountChanged), self, local_caller{slot, callback, release});
}

void QDesktopWidget_primaryScreenChanged(QDesktopWidget* self) {
	self->primaryScreenChanged();
}

void QDesktopWidget_connect_primaryScreenChanged(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)()>(&QDesktopWidget::primaryScreenChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDesktopWidget_tr2(const char* s, const char* c) {
	QString _ret = QDesktopWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QDesktopWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QDesktopWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDesktopWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesktopWidget_screenNumber1(const QDesktopWidget* self, QWidget* widget) {
	return self->screenNumber(widget);
}

QWidget* QDesktopWidget_screen1(QDesktopWidget* self, int screen) {
	return self->screen(static_cast<int>(screen));
}

QRect* QDesktopWidget_screenGeometry1(const QDesktopWidget* self, int screen) {
	return new QRect(self->screenGeometry(static_cast<int>(screen)));
}

QRect* QDesktopWidget_availableGeometry1(const QDesktopWidget* self, int screen) {
	return new QRect(self->availableGeometry(static_cast<int>(screen)));
}

QMetaObject* QDesktopWidget_virtualbase_metaObject(const VirtualQDesktopWidget* self) {

	return (QMetaObject*) self->QDesktopWidget::metaObject();
}

void* QDesktopWidget_virtualbase_metacast(VirtualQDesktopWidget* self, const char* param1) {

	return self->QDesktopWidget::qt_metacast(param1);
}

int QDesktopWidget_virtualbase_metacall(VirtualQDesktopWidget* self, int param1, int param2, void** param3) {

	return self->QDesktopWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QDesktopWidget_virtualbase_resizeEvent(VirtualQDesktopWidget* self, QResizeEvent* e) {

	self->QDesktopWidget::resizeEvent(e);
}

int QDesktopWidget_virtualbase_devType(const VirtualQDesktopWidget* self) {

	return self->QDesktopWidget::devType();
}

void QDesktopWidget_virtualbase_setVisible(VirtualQDesktopWidget* self, bool visible) {

	self->QDesktopWidget::setVisible(visible);
}

QSize* QDesktopWidget_virtualbase_sizeHint(const VirtualQDesktopWidget* self) {

	return new QSize(self->QDesktopWidget::sizeHint());
}

QSize* QDesktopWidget_virtualbase_minimumSizeHint(const VirtualQDesktopWidget* self) {

	return new QSize(self->QDesktopWidget::minimumSizeHint());
}

int QDesktopWidget_virtualbase_heightForWidth(const VirtualQDesktopWidget* self, int param1) {

	return self->QDesktopWidget::heightForWidth(static_cast<int>(param1));
}

bool QDesktopWidget_virtualbase_hasHeightForWidth(const VirtualQDesktopWidget* self) {

	return self->QDesktopWidget::hasHeightForWidth();
}

QPaintEngine* QDesktopWidget_virtualbase_paintEngine(const VirtualQDesktopWidget* self) {

	return self->QDesktopWidget::paintEngine();
}

bool QDesktopWidget_virtualbase_event(VirtualQDesktopWidget* self, QEvent* event) {

	return self->QDesktopWidget::event(event);
}

void QDesktopWidget_virtualbase_mousePressEvent(VirtualQDesktopWidget* self, QMouseEvent* event) {

	self->QDesktopWidget::mousePressEvent(event);
}

void QDesktopWidget_virtualbase_mouseReleaseEvent(VirtualQDesktopWidget* self, QMouseEvent* event) {

	self->QDesktopWidget::mouseReleaseEvent(event);
}

void QDesktopWidget_virtualbase_mouseDoubleClickEvent(VirtualQDesktopWidget* self, QMouseEvent* event) {

	self->QDesktopWidget::mouseDoubleClickEvent(event);
}

void QDesktopWidget_virtualbase_mouseMoveEvent(VirtualQDesktopWidget* self, QMouseEvent* event) {

	self->QDesktopWidget::mouseMoveEvent(event);
}

void QDesktopWidget_virtualbase_wheelEvent(VirtualQDesktopWidget* self, QWheelEvent* event) {

	self->QDesktopWidget::wheelEvent(event);
}

void QDesktopWidget_virtualbase_keyPressEvent(VirtualQDesktopWidget* self, QKeyEvent* event) {

	self->QDesktopWidget::keyPressEvent(event);
}

void QDesktopWidget_virtualbase_keyReleaseEvent(VirtualQDesktopWidget* self, QKeyEvent* event) {

	self->QDesktopWidget::keyReleaseEvent(event);
}

void QDesktopWidget_virtualbase_focusInEvent(VirtualQDesktopWidget* self, QFocusEvent* event) {

	self->QDesktopWidget::focusInEvent(event);
}

void QDesktopWidget_virtualbase_focusOutEvent(VirtualQDesktopWidget* self, QFocusEvent* event) {

	self->QDesktopWidget::focusOutEvent(event);
}

void QDesktopWidget_virtualbase_enterEvent(VirtualQDesktopWidget* self, QEvent* event) {

	self->QDesktopWidget::enterEvent(event);
}

void QDesktopWidget_virtualbase_leaveEvent(VirtualQDesktopWidget* self, QEvent* event) {

	self->QDesktopWidget::leaveEvent(event);
}

void QDesktopWidget_virtualbase_paintEvent(VirtualQDesktopWidget* self, QPaintEvent* event) {

	self->QDesktopWidget::paintEvent(event);
}

void QDesktopWidget_virtualbase_moveEvent(VirtualQDesktopWidget* self, QMoveEvent* event) {

	self->QDesktopWidget::moveEvent(event);
}

void QDesktopWidget_virtualbase_closeEvent(VirtualQDesktopWidget* self, QCloseEvent* event) {

	self->QDesktopWidget::closeEvent(event);
}

void QDesktopWidget_virtualbase_contextMenuEvent(VirtualQDesktopWidget* self, QContextMenuEvent* event) {

	self->QDesktopWidget::contextMenuEvent(event);
}

void QDesktopWidget_virtualbase_tabletEvent(VirtualQDesktopWidget* self, QTabletEvent* event) {

	self->QDesktopWidget::tabletEvent(event);
}

void QDesktopWidget_virtualbase_actionEvent(VirtualQDesktopWidget* self, QActionEvent* event) {

	self->QDesktopWidget::actionEvent(event);
}

void QDesktopWidget_virtualbase_dragEnterEvent(VirtualQDesktopWidget* self, QDragEnterEvent* event) {

	self->QDesktopWidget::dragEnterEvent(event);
}

void QDesktopWidget_virtualbase_dragMoveEvent(VirtualQDesktopWidget* self, QDragMoveEvent* event) {

	self->QDesktopWidget::dragMoveEvent(event);
}

void QDesktopWidget_virtualbase_dragLeaveEvent(VirtualQDesktopWidget* self, QDragLeaveEvent* event) {

	self->QDesktopWidget::dragLeaveEvent(event);
}

void QDesktopWidget_virtualbase_dropEvent(VirtualQDesktopWidget* self, QDropEvent* event) {

	self->QDesktopWidget::dropEvent(event);
}

void QDesktopWidget_virtualbase_showEvent(VirtualQDesktopWidget* self, QShowEvent* event) {

	self->QDesktopWidget::showEvent(event);
}

void QDesktopWidget_virtualbase_hideEvent(VirtualQDesktopWidget* self, QHideEvent* event) {

	self->QDesktopWidget::hideEvent(event);
}

bool QDesktopWidget_virtualbase_nativeEvent(VirtualQDesktopWidget* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesktopWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QDesktopWidget_virtualbase_changeEvent(VirtualQDesktopWidget* self, QEvent* param1) {

	self->QDesktopWidget::changeEvent(param1);
}

int QDesktopWidget_virtualbase_metric(const VirtualQDesktopWidget* self, int param1) {

	return self->QDesktopWidget::metric(static_cast<VirtualQDesktopWidget::PaintDeviceMetric>(param1));
}

void QDesktopWidget_virtualbase_initPainter(const VirtualQDesktopWidget* self, QPainter* painter) {

	self->QDesktopWidget::initPainter(painter);
}

QPaintDevice* QDesktopWidget_virtualbase_redirected(const VirtualQDesktopWidget* self, QPoint* offset) {

	return self->QDesktopWidget::redirected(offset);
}

QPainter* QDesktopWidget_virtualbase_sharedPainter(const VirtualQDesktopWidget* self) {

	return self->QDesktopWidget::sharedPainter();
}

void QDesktopWidget_virtualbase_inputMethodEvent(VirtualQDesktopWidget* self, QInputMethodEvent* param1) {

	self->QDesktopWidget::inputMethodEvent(param1);
}

QVariant* QDesktopWidget_virtualbase_inputMethodQuery(const VirtualQDesktopWidget* self, int param1) {

	return new QVariant(self->QDesktopWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesktopWidget_virtualbase_focusNextPrevChild(VirtualQDesktopWidget* self, bool next) {

	return self->QDesktopWidget::focusNextPrevChild(next);
}

bool QDesktopWidget_virtualbase_eventFilter(VirtualQDesktopWidget* self, QObject* watched, QEvent* event) {

	return self->QDesktopWidget::eventFilter(watched, event);
}

void QDesktopWidget_virtualbase_timerEvent(VirtualQDesktopWidget* self, QTimerEvent* event) {

	self->QDesktopWidget::timerEvent(event);
}

void QDesktopWidget_virtualbase_childEvent(VirtualQDesktopWidget* self, QChildEvent* event) {

	self->QDesktopWidget::childEvent(event);
}

void QDesktopWidget_virtualbase_customEvent(VirtualQDesktopWidget* self, QEvent* event) {

	self->QDesktopWidget::customEvent(event);
}

void QDesktopWidget_virtualbase_connectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal) {

	self->QDesktopWidget::connectNotify(*signal);
}

void QDesktopWidget_virtualbase_disconnectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal) {

	self->QDesktopWidget::disconnectNotify(*signal);
}

const QMetaObject* QDesktopWidget_staticMetaObject() { return &QDesktopWidget::staticMetaObject; }

const QDesktopWidget_VTable* QDesktopWidget_vtbl(const VirtualQDesktopWidget* self) { return self->vtbl; }
void* QDesktopWidget_vdata(const VirtualQDesktopWidget* self) { return self->vdata; }
void QDesktopWidget_setVdata(VirtualQDesktopWidget* self, void* vdata) { self->vdata = vdata; }

void QDesktopWidget_protectedbase_updateMicroFocus(VirtualQDesktopWidget* self) {
	self->updateMicroFocus();
}

void QDesktopWidget_protectedbase_create(VirtualQDesktopWidget* self) {
	self->create();
}

void QDesktopWidget_protectedbase_destroy(VirtualQDesktopWidget* self) {
	self->destroy();
}

bool QDesktopWidget_protectedbase_focusNextChild(VirtualQDesktopWidget* self) {
	return self->focusNextChild();
}

bool QDesktopWidget_protectedbase_focusPreviousChild(VirtualQDesktopWidget* self) {
	return self->focusPreviousChild();
}

QObject* QDesktopWidget_protectedbase_sender(const VirtualQDesktopWidget* self) {
	return self->sender();
}

int QDesktopWidget_protectedbase_senderSignalIndex(const VirtualQDesktopWidget* self) {
	return self->senderSignalIndex();
}

int QDesktopWidget_protectedbase_receivers(const VirtualQDesktopWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesktopWidget_protectedbase_isSignalConnected(const VirtualQDesktopWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesktopWidget_delete(QDesktopWidget* self) {
	delete self;
}

