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
#include <QSlider>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qslider.h>
#include "gen_qslider.h"
class VirtualQSlider final : public QSlider {
	const QSlider_VTable* vtbl;
	void* vdata;
public:
	friend const QSlider_VTable* QSlider_vtbl(const VirtualQSlider* self);
	friend void* QSlider_vdata(const VirtualQSlider* self);
	friend void QSlider_setVdata(VirtualQSlider* self, void* vdata);

	VirtualQSlider(const QSlider_VTable* vtbl, void* vdata, QWidget* parent): QSlider(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSlider(const QSlider_VTable* vtbl, void* vdata): QSlider(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSlider(const QSlider_VTable* vtbl, void* vdata, Qt::Orientation orientation): QSlider(orientation), vtbl(vtbl), vdata(vdata) {}
	VirtualQSlider(const QSlider_VTable* vtbl, void* vdata, Qt::Orientation orientation, QWidget* parent): QSlider(orientation, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSlider() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSlider::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSlider_virtualbase_metaObject(const VirtualQSlider* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSlider::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSlider_virtualbase_metacast(VirtualQSlider* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSlider::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_metacall(VirtualQSlider* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSlider::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSlider_virtualbase_sizeHint(const VirtualQSlider* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSlider::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSlider_virtualbase_minimumSizeHint(const VirtualQSlider* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSlider::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_event(VirtualQSlider* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* ev) override {
		if (vtbl->paintEvent == 0) {
			QSlider::paintEvent(ev);
			return;
		}

		QPaintEvent* sigval1 = ev;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_paintEvent(VirtualQSlider* self, QPaintEvent* ev);

	virtual void mousePressEvent(QMouseEvent* ev) override {
		if (vtbl->mousePressEvent == 0) {
			QSlider::mousePressEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_mousePressEvent(VirtualQSlider* self, QMouseEvent* ev);

	virtual void mouseReleaseEvent(QMouseEvent* ev) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSlider::mouseReleaseEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_mouseReleaseEvent(VirtualQSlider* self, QMouseEvent* ev);

	virtual void mouseMoveEvent(QMouseEvent* ev) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSlider::mouseMoveEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_mouseMoveEvent(VirtualQSlider* self, QMouseEvent* ev);

	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QSlider::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(this, sigval1);

	}

	friend void QSlider_virtualbase_sliderChange(VirtualQSlider* self, int change);

	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QSlider::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_keyPressEvent(VirtualQSlider* self, QKeyEvent* ev);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QSlider::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_timerEvent(VirtualQSlider* self, QTimerEvent* param1);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QSlider::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_wheelEvent(VirtualQSlider* self, QWheelEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QSlider::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_changeEvent(VirtualQSlider* self, QEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSlider::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_devType(const VirtualQSlider* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSlider::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSlider_virtualbase_setVisible(VirtualQSlider* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSlider::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_heightForWidth(const VirtualQSlider* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSlider::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_hasHeightForWidth(const VirtualQSlider* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSlider::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSlider_virtualbase_paintEngine(const VirtualQSlider* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSlider::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_mouseDoubleClickEvent(VirtualQSlider* self, QMouseEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSlider::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_keyReleaseEvent(VirtualQSlider* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSlider::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_focusInEvent(VirtualQSlider* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSlider::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_focusOutEvent(VirtualQSlider* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSlider::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_enterEvent(VirtualQSlider* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSlider::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_leaveEvent(VirtualQSlider* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSlider::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_moveEvent(VirtualQSlider* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSlider::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_resizeEvent(VirtualQSlider* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSlider::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_closeEvent(VirtualQSlider* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSlider::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_contextMenuEvent(VirtualQSlider* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSlider::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_tabletEvent(VirtualQSlider* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSlider::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_actionEvent(VirtualQSlider* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSlider::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_dragEnterEvent(VirtualQSlider* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSlider::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_dragMoveEvent(VirtualQSlider* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSlider::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_dragLeaveEvent(VirtualQSlider* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSlider::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_dropEvent(VirtualQSlider* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSlider::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_showEvent(VirtualQSlider* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSlider::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_hideEvent(VirtualQSlider* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSlider::nativeEvent(eventType, message, result);
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

	friend bool QSlider_virtualbase_nativeEvent(VirtualQSlider* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSlider::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSlider_virtualbase_metric(const VirtualQSlider* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSlider::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSlider_virtualbase_initPainter(const VirtualQSlider* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSlider::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSlider_virtualbase_redirected(const VirtualQSlider* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSlider::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSlider_virtualbase_sharedPainter(const VirtualQSlider* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSlider::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_inputMethodEvent(VirtualQSlider* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSlider::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSlider_virtualbase_inputMethodQuery(const VirtualQSlider* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSlider::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_focusNextPrevChild(VirtualQSlider* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSlider::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSlider_virtualbase_eventFilter(VirtualQSlider* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSlider::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_childEvent(VirtualQSlider* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSlider::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSlider_virtualbase_customEvent(VirtualQSlider* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSlider::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSlider_virtualbase_connectNotify(VirtualQSlider* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSlider::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSlider_virtualbase_disconnectNotify(VirtualQSlider* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSlider_protectedbase_initStyleOption(const VirtualQSlider* self, QStyleOptionSlider* option);
	friend void QSlider_protectedbase_setRepeatAction(VirtualQSlider* self, int action);
	friend int QSlider_protectedbase_repeatAction(const VirtualQSlider* self);
	friend void QSlider_protectedbase_updateMicroFocus(VirtualQSlider* self);
	friend void QSlider_protectedbase_create(VirtualQSlider* self);
	friend void QSlider_protectedbase_destroy(VirtualQSlider* self);
	friend bool QSlider_protectedbase_focusNextChild(VirtualQSlider* self);
	friend bool QSlider_protectedbase_focusPreviousChild(VirtualQSlider* self);
	friend QObject* QSlider_protectedbase_sender(const VirtualQSlider* self);
	friend int QSlider_protectedbase_senderSignalIndex(const VirtualQSlider* self);
	friend int QSlider_protectedbase_receivers(const VirtualQSlider* self, const char* signal);
	friend bool QSlider_protectedbase_isSignalConnected(const VirtualQSlider* self, QMetaMethod* signal);
};

VirtualQSlider* QSlider_new(const QSlider_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSlider(vtbl, vdata, parent);
}

VirtualQSlider* QSlider_new2(const QSlider_VTable* vtbl, void* vdata) {
	return new VirtualQSlider(vtbl, vdata);
}

VirtualQSlider* QSlider_new3(const QSlider_VTable* vtbl, void* vdata, int orientation) {
	return new VirtualQSlider(vtbl, vdata, static_cast<Qt::Orientation>(orientation));
}

VirtualQSlider* QSlider_new4(const QSlider_VTable* vtbl, void* vdata, int orientation, QWidget* parent) {
	return new VirtualQSlider(vtbl, vdata, static_cast<Qt::Orientation>(orientation), parent);
}

void QSlider_virtbase(QSlider* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QSlider_metaObject(const QSlider* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSlider_metacast(QSlider* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSlider_metacall(QSlider* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSlider_tr(const char* s) {
	QString _ret = QSlider::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf8(const char* s) {
	QString _ret = QSlider::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QSlider_sizeHint(const QSlider* self) {
	return new QSize(self->sizeHint());
}

QSize* QSlider_minimumSizeHint(const QSlider* self) {
	return new QSize(self->minimumSizeHint());
}

void QSlider_setTickPosition(QSlider* self, int position) {
	self->setTickPosition(static_cast<QSlider::TickPosition>(position));
}

int QSlider_tickPosition(const QSlider* self) {
	QSlider::TickPosition _ret = self->tickPosition();
	return static_cast<int>(_ret);
}

void QSlider_setTickInterval(QSlider* self, int ti) {
	self->setTickInterval(static_cast<int>(ti));
}

int QSlider_tickInterval(const QSlider* self) {
	return self->tickInterval();
}

bool QSlider_event(QSlider* self, QEvent* event) {
	return self->event(event);
}

struct miqt_string QSlider_tr2(const char* s, const char* c) {
	QString _ret = QSlider::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_tr3(const char* s, const char* c, int n) {
	QString _ret = QSlider::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf82(const char* s, const char* c) {
	QString _ret = QSlider::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSlider_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSlider::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSlider_virtualbase_metaObject(const VirtualQSlider* self) {

	return (QMetaObject*) self->QSlider::metaObject();
}

void* QSlider_virtualbase_metacast(VirtualQSlider* self, const char* param1) {

	return self->QSlider::qt_metacast(param1);
}

int QSlider_virtualbase_metacall(VirtualQSlider* self, int param1, int param2, void** param3) {

	return self->QSlider::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QSlider_virtualbase_sizeHint(const VirtualQSlider* self) {

	return new QSize(self->QSlider::sizeHint());
}

QSize* QSlider_virtualbase_minimumSizeHint(const VirtualQSlider* self) {

	return new QSize(self->QSlider::minimumSizeHint());
}

bool QSlider_virtualbase_event(VirtualQSlider* self, QEvent* event) {

	return self->QSlider::event(event);
}

void QSlider_virtualbase_paintEvent(VirtualQSlider* self, QPaintEvent* ev) {

	self->QSlider::paintEvent(ev);
}

void QSlider_virtualbase_mousePressEvent(VirtualQSlider* self, QMouseEvent* ev) {

	self->QSlider::mousePressEvent(ev);
}

void QSlider_virtualbase_mouseReleaseEvent(VirtualQSlider* self, QMouseEvent* ev) {

	self->QSlider::mouseReleaseEvent(ev);
}

void QSlider_virtualbase_mouseMoveEvent(VirtualQSlider* self, QMouseEvent* ev) {

	self->QSlider::mouseMoveEvent(ev);
}

void QSlider_virtualbase_sliderChange(VirtualQSlider* self, int change) {

	self->QSlider::sliderChange(static_cast<VirtualQSlider::SliderChange>(change));
}

void QSlider_virtualbase_keyPressEvent(VirtualQSlider* self, QKeyEvent* ev) {

	self->QSlider::keyPressEvent(ev);
}

void QSlider_virtualbase_timerEvent(VirtualQSlider* self, QTimerEvent* param1) {

	self->QSlider::timerEvent(param1);
}

void QSlider_virtualbase_wheelEvent(VirtualQSlider* self, QWheelEvent* e) {

	self->QSlider::wheelEvent(e);
}

void QSlider_virtualbase_changeEvent(VirtualQSlider* self, QEvent* e) {

	self->QSlider::changeEvent(e);
}

int QSlider_virtualbase_devType(const VirtualQSlider* self) {

	return self->QSlider::devType();
}

void QSlider_virtualbase_setVisible(VirtualQSlider* self, bool visible) {

	self->QSlider::setVisible(visible);
}

int QSlider_virtualbase_heightForWidth(const VirtualQSlider* self, int param1) {

	return self->QSlider::heightForWidth(static_cast<int>(param1));
}

bool QSlider_virtualbase_hasHeightForWidth(const VirtualQSlider* self) {

	return self->QSlider::hasHeightForWidth();
}

QPaintEngine* QSlider_virtualbase_paintEngine(const VirtualQSlider* self) {

	return self->QSlider::paintEngine();
}

void QSlider_virtualbase_mouseDoubleClickEvent(VirtualQSlider* self, QMouseEvent* event) {

	self->QSlider::mouseDoubleClickEvent(event);
}

void QSlider_virtualbase_keyReleaseEvent(VirtualQSlider* self, QKeyEvent* event) {

	self->QSlider::keyReleaseEvent(event);
}

void QSlider_virtualbase_focusInEvent(VirtualQSlider* self, QFocusEvent* event) {

	self->QSlider::focusInEvent(event);
}

void QSlider_virtualbase_focusOutEvent(VirtualQSlider* self, QFocusEvent* event) {

	self->QSlider::focusOutEvent(event);
}

void QSlider_virtualbase_enterEvent(VirtualQSlider* self, QEvent* event) {

	self->QSlider::enterEvent(event);
}

void QSlider_virtualbase_leaveEvent(VirtualQSlider* self, QEvent* event) {

	self->QSlider::leaveEvent(event);
}

void QSlider_virtualbase_moveEvent(VirtualQSlider* self, QMoveEvent* event) {

	self->QSlider::moveEvent(event);
}

void QSlider_virtualbase_resizeEvent(VirtualQSlider* self, QResizeEvent* event) {

	self->QSlider::resizeEvent(event);
}

void QSlider_virtualbase_closeEvent(VirtualQSlider* self, QCloseEvent* event) {

	self->QSlider::closeEvent(event);
}

void QSlider_virtualbase_contextMenuEvent(VirtualQSlider* self, QContextMenuEvent* event) {

	self->QSlider::contextMenuEvent(event);
}

void QSlider_virtualbase_tabletEvent(VirtualQSlider* self, QTabletEvent* event) {

	self->QSlider::tabletEvent(event);
}

void QSlider_virtualbase_actionEvent(VirtualQSlider* self, QActionEvent* event) {

	self->QSlider::actionEvent(event);
}

void QSlider_virtualbase_dragEnterEvent(VirtualQSlider* self, QDragEnterEvent* event) {

	self->QSlider::dragEnterEvent(event);
}

void QSlider_virtualbase_dragMoveEvent(VirtualQSlider* self, QDragMoveEvent* event) {

	self->QSlider::dragMoveEvent(event);
}

void QSlider_virtualbase_dragLeaveEvent(VirtualQSlider* self, QDragLeaveEvent* event) {

	self->QSlider::dragLeaveEvent(event);
}

void QSlider_virtualbase_dropEvent(VirtualQSlider* self, QDropEvent* event) {

	self->QSlider::dropEvent(event);
}

void QSlider_virtualbase_showEvent(VirtualQSlider* self, QShowEvent* event) {

	self->QSlider::showEvent(event);
}

void QSlider_virtualbase_hideEvent(VirtualQSlider* self, QHideEvent* event) {

	self->QSlider::hideEvent(event);
}

bool QSlider_virtualbase_nativeEvent(VirtualQSlider* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSlider::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QSlider_virtualbase_metric(const VirtualQSlider* self, int param1) {

	return self->QSlider::metric(static_cast<VirtualQSlider::PaintDeviceMetric>(param1));
}

void QSlider_virtualbase_initPainter(const VirtualQSlider* self, QPainter* painter) {

	self->QSlider::initPainter(painter);
}

QPaintDevice* QSlider_virtualbase_redirected(const VirtualQSlider* self, QPoint* offset) {

	return self->QSlider::redirected(offset);
}

QPainter* QSlider_virtualbase_sharedPainter(const VirtualQSlider* self) {

	return self->QSlider::sharedPainter();
}

void QSlider_virtualbase_inputMethodEvent(VirtualQSlider* self, QInputMethodEvent* param1) {

	self->QSlider::inputMethodEvent(param1);
}

QVariant* QSlider_virtualbase_inputMethodQuery(const VirtualQSlider* self, int param1) {

	return new QVariant(self->QSlider::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSlider_virtualbase_focusNextPrevChild(VirtualQSlider* self, bool next) {

	return self->QSlider::focusNextPrevChild(next);
}

bool QSlider_virtualbase_eventFilter(VirtualQSlider* self, QObject* watched, QEvent* event) {

	return self->QSlider::eventFilter(watched, event);
}

void QSlider_virtualbase_childEvent(VirtualQSlider* self, QChildEvent* event) {

	self->QSlider::childEvent(event);
}

void QSlider_virtualbase_customEvent(VirtualQSlider* self, QEvent* event) {

	self->QSlider::customEvent(event);
}

void QSlider_virtualbase_connectNotify(VirtualQSlider* self, QMetaMethod* signal) {

	self->QSlider::connectNotify(*signal);
}

void QSlider_virtualbase_disconnectNotify(VirtualQSlider* self, QMetaMethod* signal) {

	self->QSlider::disconnectNotify(*signal);
}

const QMetaObject* QSlider_staticMetaObject() { return &QSlider::staticMetaObject; }

const QSlider_VTable* QSlider_vtbl(const VirtualQSlider* self) { return self->vtbl; }
void* QSlider_vdata(const VirtualQSlider* self) { return self->vdata; }
void QSlider_setVdata(VirtualQSlider* self, void* vdata) { self->vdata = vdata; }

void QSlider_protectedbase_initStyleOption(const VirtualQSlider* self, QStyleOptionSlider* option) {
	self->initStyleOption(option);
}

void QSlider_protectedbase_setRepeatAction(VirtualQSlider* self, int action) {
	self->setRepeatAction(static_cast<VirtualQSlider::SliderAction>(action));
}

int QSlider_protectedbase_repeatAction(const VirtualQSlider* self) {
	VirtualQSlider::SliderAction _ret = self->repeatAction();
	return static_cast<int>(_ret);
}

void QSlider_protectedbase_updateMicroFocus(VirtualQSlider* self) {
	self->updateMicroFocus();
}

void QSlider_protectedbase_create(VirtualQSlider* self) {
	self->create();
}

void QSlider_protectedbase_destroy(VirtualQSlider* self) {
	self->destroy();
}

bool QSlider_protectedbase_focusNextChild(VirtualQSlider* self) {
	return self->focusNextChild();
}

bool QSlider_protectedbase_focusPreviousChild(VirtualQSlider* self) {
	return self->focusPreviousChild();
}

QObject* QSlider_protectedbase_sender(const VirtualQSlider* self) {
	return self->sender();
}

int QSlider_protectedbase_senderSignalIndex(const VirtualQSlider* self) {
	return self->senderSignalIndex();
}

int QSlider_protectedbase_receivers(const VirtualQSlider* self, const char* signal) {
	return self->receivers(signal);
}

bool QSlider_protectedbase_isSignalConnected(const VirtualQSlider* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSlider_delete(QSlider* self) {
	delete self;
}

