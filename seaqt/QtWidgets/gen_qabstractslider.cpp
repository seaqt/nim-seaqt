#include <QAbstractSlider>
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
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractslider.h>
#include "gen_qabstractslider.h"
class VirtualQAbstractSlider final : public QAbstractSlider {
	const QAbstractSlider_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractSlider_VTable* QAbstractSlider_vtbl(const VirtualQAbstractSlider* self);
	friend void* QAbstractSlider_vdata(const VirtualQAbstractSlider* self);
	friend void QAbstractSlider_setVdata(VirtualQAbstractSlider* self, void* vdata);

	VirtualQAbstractSlider(const QAbstractSlider_VTable* vtbl, void* vdata, QWidget* parent): QAbstractSlider(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractSlider(const QAbstractSlider_VTable* vtbl, void* vdata): QAbstractSlider(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractSlider() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSlider::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractSlider_virtualbase_metaObject(const VirtualQAbstractSlider* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSlider::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractSlider_virtualbase_metacast(VirtualQAbstractSlider* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSlider::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_metacall(VirtualQAbstractSlider* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QAbstractSlider::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_event(VirtualQAbstractSlider* self, QEvent* e);

	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QAbstractSlider::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_sliderChange(VirtualQAbstractSlider* self, int change);

	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractSlider::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_keyPressEvent(VirtualQAbstractSlider* self, QKeyEvent* ev);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSlider::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_timerEvent(VirtualQAbstractSlider* self, QTimerEvent* param1);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractSlider::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_wheelEvent(VirtualQAbstractSlider* self, QWheelEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QAbstractSlider::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_changeEvent(VirtualQAbstractSlider* self, QEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractSlider::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_devType(const VirtualQAbstractSlider* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractSlider::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_setVisible(VirtualQAbstractSlider* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractSlider::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSlider_virtualbase_sizeHint(const VirtualQAbstractSlider* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractSlider::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractSlider_virtualbase_minimumSizeHint(const VirtualQAbstractSlider* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractSlider::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_heightForWidth(const VirtualQAbstractSlider* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractSlider::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_hasHeightForWidth(const VirtualQAbstractSlider* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractSlider::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const VirtualQAbstractSlider* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractSlider::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mousePressEvent(VirtualQAbstractSlider* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractSlider::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseReleaseEvent(VirtualQAbstractSlider* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractSlider::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSlider* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractSlider::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_mouseMoveEvent(VirtualQAbstractSlider* self, QMouseEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractSlider::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_keyReleaseEvent(VirtualQAbstractSlider* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractSlider::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_focusInEvent(VirtualQAbstractSlider* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractSlider::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_focusOutEvent(VirtualQAbstractSlider* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractSlider::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_enterEvent(VirtualQAbstractSlider* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractSlider::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_leaveEvent(VirtualQAbstractSlider* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractSlider::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_paintEvent(VirtualQAbstractSlider* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractSlider::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_moveEvent(VirtualQAbstractSlider* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractSlider::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_resizeEvent(VirtualQAbstractSlider* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractSlider::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_closeEvent(VirtualQAbstractSlider* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractSlider::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_contextMenuEvent(VirtualQAbstractSlider* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractSlider::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_tabletEvent(VirtualQAbstractSlider* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractSlider::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_actionEvent(VirtualQAbstractSlider* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractSlider::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragEnterEvent(VirtualQAbstractSlider* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractSlider::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragMoveEvent(VirtualQAbstractSlider* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractSlider::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dragLeaveEvent(VirtualQAbstractSlider* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractSlider::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_dropEvent(VirtualQAbstractSlider* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractSlider::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_showEvent(VirtualQAbstractSlider* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractSlider::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_hideEvent(VirtualQAbstractSlider* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractSlider::nativeEvent(eventType, message, result);
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

	friend bool QAbstractSlider_virtualbase_nativeEvent(VirtualQAbstractSlider* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractSlider::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSlider_virtualbase_metric(const VirtualQAbstractSlider* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractSlider::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_initPainter(const VirtualQAbstractSlider* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractSlider::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractSlider_virtualbase_redirected(const VirtualQAbstractSlider* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractSlider::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractSlider_virtualbase_sharedPainter(const VirtualQAbstractSlider* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractSlider::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_inputMethodEvent(VirtualQAbstractSlider* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractSlider::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const VirtualQAbstractSlider* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractSlider::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_focusNextPrevChild(VirtualQAbstractSlider* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSlider::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractSlider_virtualbase_eventFilter(VirtualQAbstractSlider* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSlider::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_childEvent(VirtualQAbstractSlider* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSlider::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_customEvent(VirtualQAbstractSlider* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSlider::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_connectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSlider::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractSlider_virtualbase_disconnectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractSlider_protectedbase_setRepeatAction(VirtualQAbstractSlider* self, int action);
	friend int QAbstractSlider_protectedbase_repeatAction(const VirtualQAbstractSlider* self);
	friend void QAbstractSlider_protectedbase_setRepeatAction2(VirtualQAbstractSlider* self, int action, int thresholdTime);
	friend void QAbstractSlider_protectedbase_setRepeatAction3(VirtualQAbstractSlider* self, int action, int thresholdTime, int repeatTime);
	friend void QAbstractSlider_protectedbase_updateMicroFocus(VirtualQAbstractSlider* self);
	friend void QAbstractSlider_protectedbase_create(VirtualQAbstractSlider* self);
	friend void QAbstractSlider_protectedbase_destroy(VirtualQAbstractSlider* self);
	friend bool QAbstractSlider_protectedbase_focusNextChild(VirtualQAbstractSlider* self);
	friend bool QAbstractSlider_protectedbase_focusPreviousChild(VirtualQAbstractSlider* self);
	friend QObject* QAbstractSlider_protectedbase_sender(const VirtualQAbstractSlider* self);
	friend int QAbstractSlider_protectedbase_senderSignalIndex(const VirtualQAbstractSlider* self);
	friend int QAbstractSlider_protectedbase_receivers(const VirtualQAbstractSlider* self, const char* signal);
	friend bool QAbstractSlider_protectedbase_isSignalConnected(const VirtualQAbstractSlider* self, QMetaMethod* signal);
};

VirtualQAbstractSlider* QAbstractSlider_new(const QAbstractSlider_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQAbstractSlider(vtbl, vdata, parent);
}

VirtualQAbstractSlider* QAbstractSlider_new2(const QAbstractSlider_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractSlider(vtbl, vdata);
}

void QAbstractSlider_virtbase(QAbstractSlider* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractSlider_metaObject(const QAbstractSlider* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSlider_metacast(QAbstractSlider* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSlider_metacall(QAbstractSlider* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSlider_tr(const char* s) {
	QString _ret = QAbstractSlider::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSlider_trUtf8(const char* s) {
	QString _ret = QAbstractSlider::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractSlider_orientation(const QAbstractSlider* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QAbstractSlider_setMinimum(QAbstractSlider* self, int minimum) {
	self->setMinimum(static_cast<int>(minimum));
}

int QAbstractSlider_minimum(const QAbstractSlider* self) {
	return self->minimum();
}

void QAbstractSlider_setMaximum(QAbstractSlider* self, int maximum) {
	self->setMaximum(static_cast<int>(maximum));
}

int QAbstractSlider_maximum(const QAbstractSlider* self) {
	return self->maximum();
}

void QAbstractSlider_setSingleStep(QAbstractSlider* self, int singleStep) {
	self->setSingleStep(static_cast<int>(singleStep));
}

int QAbstractSlider_singleStep(const QAbstractSlider* self) {
	return self->singleStep();
}

void QAbstractSlider_setPageStep(QAbstractSlider* self, int pageStep) {
	self->setPageStep(static_cast<int>(pageStep));
}

int QAbstractSlider_pageStep(const QAbstractSlider* self) {
	return self->pageStep();
}

void QAbstractSlider_setTracking(QAbstractSlider* self, bool enable) {
	self->setTracking(enable);
}

bool QAbstractSlider_hasTracking(const QAbstractSlider* self) {
	return self->hasTracking();
}

void QAbstractSlider_setSliderDown(QAbstractSlider* self, bool sliderDown) {
	self->setSliderDown(sliderDown);
}

bool QAbstractSlider_isSliderDown(const QAbstractSlider* self) {
	return self->isSliderDown();
}

void QAbstractSlider_setSliderPosition(QAbstractSlider* self, int sliderPosition) {
	self->setSliderPosition(static_cast<int>(sliderPosition));
}

int QAbstractSlider_sliderPosition(const QAbstractSlider* self) {
	return self->sliderPosition();
}

void QAbstractSlider_setInvertedAppearance(QAbstractSlider* self, bool invertedAppearance) {
	self->setInvertedAppearance(invertedAppearance);
}

bool QAbstractSlider_invertedAppearance(const QAbstractSlider* self) {
	return self->invertedAppearance();
}

void QAbstractSlider_setInvertedControls(QAbstractSlider* self, bool invertedControls) {
	self->setInvertedControls(invertedControls);
}

bool QAbstractSlider_invertedControls(const QAbstractSlider* self) {
	return self->invertedControls();
}

int QAbstractSlider_value(const QAbstractSlider* self) {
	return self->value();
}

void QAbstractSlider_triggerAction(QAbstractSlider* self, int action) {
	self->triggerAction(static_cast<QAbstractSlider::SliderAction>(action));
}

void QAbstractSlider_setValue(QAbstractSlider* self, int value) {
	self->setValue(static_cast<int>(value));
}

void QAbstractSlider_setOrientation(QAbstractSlider* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

void QAbstractSlider_setRange(QAbstractSlider* self, int min, int max) {
	self->setRange(static_cast<int>(min), static_cast<int>(max));
}

void QAbstractSlider_valueChanged(QAbstractSlider* self, int value) {
	self->valueChanged(static_cast<int>(value));
}

void QAbstractSlider_connect_valueChanged(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int value) {
			int sigval1 = value;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::valueChanged), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderPressed(QAbstractSlider* self) {
	self->sliderPressed();
}

void QAbstractSlider_connect_sliderPressed(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)()>(&QAbstractSlider::sliderPressed), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderMoved(QAbstractSlider* self, int position) {
	self->sliderMoved(static_cast<int>(position));
}

void QAbstractSlider_connect_sliderMoved(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int position) {
			int sigval1 = position;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::sliderMoved), self, local_caller{slot, callback, release});
}

void QAbstractSlider_sliderReleased(QAbstractSlider* self) {
	self->sliderReleased();
}

void QAbstractSlider_connect_sliderReleased(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)()>(&QAbstractSlider::sliderReleased), self, local_caller{slot, callback, release});
}

void QAbstractSlider_rangeChanged(QAbstractSlider* self, int min, int max) {
	self->rangeChanged(static_cast<int>(min), static_cast<int>(max));
}

void QAbstractSlider_connect_rangeChanged(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int min, int max) {
			int sigval1 = min;
			int sigval2 = max;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int, int)>(&QAbstractSlider::rangeChanged), self, local_caller{slot, callback, release});
}

void QAbstractSlider_actionTriggered(QAbstractSlider* self, int action) {
	self->actionTriggered(static_cast<int>(action));
}

void QAbstractSlider_connect_actionTriggered(VirtualQAbstractSlider* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int action) {
			int sigval1 = action;
			callback(slot, sigval1);
		}
	};
	VirtualQAbstractSlider::connect(self, static_cast<void (QAbstractSlider::*)(int)>(&QAbstractSlider::actionTriggered), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractSlider_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSlider::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSlider_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSlider::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSlider_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractSlider::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSlider_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractSlider::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractSlider_virtualbase_metaObject(const VirtualQAbstractSlider* self) {

	return (QMetaObject*) self->QAbstractSlider::metaObject();
}

void* QAbstractSlider_virtualbase_metacast(VirtualQAbstractSlider* self, const char* param1) {

	return self->QAbstractSlider::qt_metacast(param1);
}

int QAbstractSlider_virtualbase_metacall(VirtualQAbstractSlider* self, int param1, int param2, void** param3) {

	return self->QAbstractSlider::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAbstractSlider_virtualbase_event(VirtualQAbstractSlider* self, QEvent* e) {

	return self->QAbstractSlider::event(e);
}

void QAbstractSlider_virtualbase_sliderChange(VirtualQAbstractSlider* self, int change) {

	self->QAbstractSlider::sliderChange(static_cast<VirtualQAbstractSlider::SliderChange>(change));
}

void QAbstractSlider_virtualbase_keyPressEvent(VirtualQAbstractSlider* self, QKeyEvent* ev) {

	self->QAbstractSlider::keyPressEvent(ev);
}

void QAbstractSlider_virtualbase_timerEvent(VirtualQAbstractSlider* self, QTimerEvent* param1) {

	self->QAbstractSlider::timerEvent(param1);
}

void QAbstractSlider_virtualbase_wheelEvent(VirtualQAbstractSlider* self, QWheelEvent* e) {

	self->QAbstractSlider::wheelEvent(e);
}

void QAbstractSlider_virtualbase_changeEvent(VirtualQAbstractSlider* self, QEvent* e) {

	self->QAbstractSlider::changeEvent(e);
}

int QAbstractSlider_virtualbase_devType(const VirtualQAbstractSlider* self) {

	return self->QAbstractSlider::devType();
}

void QAbstractSlider_virtualbase_setVisible(VirtualQAbstractSlider* self, bool visible) {

	self->QAbstractSlider::setVisible(visible);
}

QSize* QAbstractSlider_virtualbase_sizeHint(const VirtualQAbstractSlider* self) {

	return new QSize(self->QAbstractSlider::sizeHint());
}

QSize* QAbstractSlider_virtualbase_minimumSizeHint(const VirtualQAbstractSlider* self) {

	return new QSize(self->QAbstractSlider::minimumSizeHint());
}

int QAbstractSlider_virtualbase_heightForWidth(const VirtualQAbstractSlider* self, int param1) {

	return self->QAbstractSlider::heightForWidth(static_cast<int>(param1));
}

bool QAbstractSlider_virtualbase_hasHeightForWidth(const VirtualQAbstractSlider* self) {

	return self->QAbstractSlider::hasHeightForWidth();
}

QPaintEngine* QAbstractSlider_virtualbase_paintEngine(const VirtualQAbstractSlider* self) {

	return self->QAbstractSlider::paintEngine();
}

void QAbstractSlider_virtualbase_mousePressEvent(VirtualQAbstractSlider* self, QMouseEvent* event) {

	self->QAbstractSlider::mousePressEvent(event);
}

void QAbstractSlider_virtualbase_mouseReleaseEvent(VirtualQAbstractSlider* self, QMouseEvent* event) {

	self->QAbstractSlider::mouseReleaseEvent(event);
}

void QAbstractSlider_virtualbase_mouseDoubleClickEvent(VirtualQAbstractSlider* self, QMouseEvent* event) {

	self->QAbstractSlider::mouseDoubleClickEvent(event);
}

void QAbstractSlider_virtualbase_mouseMoveEvent(VirtualQAbstractSlider* self, QMouseEvent* event) {

	self->QAbstractSlider::mouseMoveEvent(event);
}

void QAbstractSlider_virtualbase_keyReleaseEvent(VirtualQAbstractSlider* self, QKeyEvent* event) {

	self->QAbstractSlider::keyReleaseEvent(event);
}

void QAbstractSlider_virtualbase_focusInEvent(VirtualQAbstractSlider* self, QFocusEvent* event) {

	self->QAbstractSlider::focusInEvent(event);
}

void QAbstractSlider_virtualbase_focusOutEvent(VirtualQAbstractSlider* self, QFocusEvent* event) {

	self->QAbstractSlider::focusOutEvent(event);
}

void QAbstractSlider_virtualbase_enterEvent(VirtualQAbstractSlider* self, QEvent* event) {

	self->QAbstractSlider::enterEvent(event);
}

void QAbstractSlider_virtualbase_leaveEvent(VirtualQAbstractSlider* self, QEvent* event) {

	self->QAbstractSlider::leaveEvent(event);
}

void QAbstractSlider_virtualbase_paintEvent(VirtualQAbstractSlider* self, QPaintEvent* event) {

	self->QAbstractSlider::paintEvent(event);
}

void QAbstractSlider_virtualbase_moveEvent(VirtualQAbstractSlider* self, QMoveEvent* event) {

	self->QAbstractSlider::moveEvent(event);
}

void QAbstractSlider_virtualbase_resizeEvent(VirtualQAbstractSlider* self, QResizeEvent* event) {

	self->QAbstractSlider::resizeEvent(event);
}

void QAbstractSlider_virtualbase_closeEvent(VirtualQAbstractSlider* self, QCloseEvent* event) {

	self->QAbstractSlider::closeEvent(event);
}

void QAbstractSlider_virtualbase_contextMenuEvent(VirtualQAbstractSlider* self, QContextMenuEvent* event) {

	self->QAbstractSlider::contextMenuEvent(event);
}

void QAbstractSlider_virtualbase_tabletEvent(VirtualQAbstractSlider* self, QTabletEvent* event) {

	self->QAbstractSlider::tabletEvent(event);
}

void QAbstractSlider_virtualbase_actionEvent(VirtualQAbstractSlider* self, QActionEvent* event) {

	self->QAbstractSlider::actionEvent(event);
}

void QAbstractSlider_virtualbase_dragEnterEvent(VirtualQAbstractSlider* self, QDragEnterEvent* event) {

	self->QAbstractSlider::dragEnterEvent(event);
}

void QAbstractSlider_virtualbase_dragMoveEvent(VirtualQAbstractSlider* self, QDragMoveEvent* event) {

	self->QAbstractSlider::dragMoveEvent(event);
}

void QAbstractSlider_virtualbase_dragLeaveEvent(VirtualQAbstractSlider* self, QDragLeaveEvent* event) {

	self->QAbstractSlider::dragLeaveEvent(event);
}

void QAbstractSlider_virtualbase_dropEvent(VirtualQAbstractSlider* self, QDropEvent* event) {

	self->QAbstractSlider::dropEvent(event);
}

void QAbstractSlider_virtualbase_showEvent(VirtualQAbstractSlider* self, QShowEvent* event) {

	self->QAbstractSlider::showEvent(event);
}

void QAbstractSlider_virtualbase_hideEvent(VirtualQAbstractSlider* self, QHideEvent* event) {

	self->QAbstractSlider::hideEvent(event);
}

bool QAbstractSlider_virtualbase_nativeEvent(VirtualQAbstractSlider* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractSlider::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QAbstractSlider_virtualbase_metric(const VirtualQAbstractSlider* self, int param1) {

	return self->QAbstractSlider::metric(static_cast<VirtualQAbstractSlider::PaintDeviceMetric>(param1));
}

void QAbstractSlider_virtualbase_initPainter(const VirtualQAbstractSlider* self, QPainter* painter) {

	self->QAbstractSlider::initPainter(painter);
}

QPaintDevice* QAbstractSlider_virtualbase_redirected(const VirtualQAbstractSlider* self, QPoint* offset) {

	return self->QAbstractSlider::redirected(offset);
}

QPainter* QAbstractSlider_virtualbase_sharedPainter(const VirtualQAbstractSlider* self) {

	return self->QAbstractSlider::sharedPainter();
}

void QAbstractSlider_virtualbase_inputMethodEvent(VirtualQAbstractSlider* self, QInputMethodEvent* param1) {

	self->QAbstractSlider::inputMethodEvent(param1);
}

QVariant* QAbstractSlider_virtualbase_inputMethodQuery(const VirtualQAbstractSlider* self, int param1) {

	return new QVariant(self->QAbstractSlider::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QAbstractSlider_virtualbase_focusNextPrevChild(VirtualQAbstractSlider* self, bool next) {

	return self->QAbstractSlider::focusNextPrevChild(next);
}

bool QAbstractSlider_virtualbase_eventFilter(VirtualQAbstractSlider* self, QObject* watched, QEvent* event) {

	return self->QAbstractSlider::eventFilter(watched, event);
}

void QAbstractSlider_virtualbase_childEvent(VirtualQAbstractSlider* self, QChildEvent* event) {

	self->QAbstractSlider::childEvent(event);
}

void QAbstractSlider_virtualbase_customEvent(VirtualQAbstractSlider* self, QEvent* event) {

	self->QAbstractSlider::customEvent(event);
}

void QAbstractSlider_virtualbase_connectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal) {

	self->QAbstractSlider::connectNotify(*signal);
}

void QAbstractSlider_virtualbase_disconnectNotify(VirtualQAbstractSlider* self, QMetaMethod* signal) {

	self->QAbstractSlider::disconnectNotify(*signal);
}

const QMetaObject* QAbstractSlider_staticMetaObject() { return &QAbstractSlider::staticMetaObject; }

const QAbstractSlider_VTable* QAbstractSlider_vtbl(const VirtualQAbstractSlider* self) { return self->vtbl; }
void* QAbstractSlider_vdata(const VirtualQAbstractSlider* self) { return self->vdata; }
void QAbstractSlider_setVdata(VirtualQAbstractSlider* self, void* vdata) { self->vdata = vdata; }

void QAbstractSlider_protectedbase_setRepeatAction(VirtualQAbstractSlider* self, int action) {
	self->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action));
}

int QAbstractSlider_protectedbase_repeatAction(const VirtualQAbstractSlider* self) {
	VirtualQAbstractSlider::SliderAction _ret = self->repeatAction();
	return static_cast<int>(_ret);
}

void QAbstractSlider_protectedbase_setRepeatAction2(VirtualQAbstractSlider* self, int action, int thresholdTime) {
	self->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action), static_cast<int>(thresholdTime));
}

void QAbstractSlider_protectedbase_setRepeatAction3(VirtualQAbstractSlider* self, int action, int thresholdTime, int repeatTime) {
	self->setRepeatAction(static_cast<VirtualQAbstractSlider::SliderAction>(action), static_cast<int>(thresholdTime), static_cast<int>(repeatTime));
}

void QAbstractSlider_protectedbase_updateMicroFocus(VirtualQAbstractSlider* self) {
	self->updateMicroFocus();
}

void QAbstractSlider_protectedbase_create(VirtualQAbstractSlider* self) {
	self->create();
}

void QAbstractSlider_protectedbase_destroy(VirtualQAbstractSlider* self) {
	self->destroy();
}

bool QAbstractSlider_protectedbase_focusNextChild(VirtualQAbstractSlider* self) {
	return self->focusNextChild();
}

bool QAbstractSlider_protectedbase_focusPreviousChild(VirtualQAbstractSlider* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractSlider_protectedbase_sender(const VirtualQAbstractSlider* self) {
	return self->sender();
}

int QAbstractSlider_protectedbase_senderSignalIndex(const VirtualQAbstractSlider* self) {
	return self->senderSignalIndex();
}

int QAbstractSlider_protectedbase_receivers(const VirtualQAbstractSlider* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractSlider_protectedbase_isSignalConnected(const VirtualQAbstractSlider* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractSlider_delete(QAbstractSlider* self) {
	delete self;
}

