#include <QAbstractSlider>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDial>
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
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdial.h>
#include "gen_qdial.h"
class VirtualQDial final : public QDial {
	const QDial_VTable* vtbl;
	void* vdata;
public:
	friend const QDial_VTable* QDial_vtbl(const VirtualQDial* self);
	friend void* QDial_vdata(const VirtualQDial* self);
	friend void QDial_setVdata(VirtualQDial* self, void* vdata);

	VirtualQDial(const QDial_VTable* vtbl, void* vdata, QWidget* parent): QDial(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDial(const QDial_VTable* vtbl, void* vdata): QDial(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDial() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDial::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDial_virtualbase_metaObject(const VirtualQDial* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDial::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDial_virtualbase_metacast(VirtualQDial* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDial::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_metacall(VirtualQDial* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDial::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDial_virtualbase_sizeHint(const VirtualQDial* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDial::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDial_virtualbase_minimumSizeHint(const VirtualQDial* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QDial::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_event(VirtualQDial* self, QEvent* e);

	virtual void resizeEvent(QResizeEvent* re) override {
		if (vtbl->resizeEvent == 0) {
			QDial::resizeEvent(re);
			return;
		}

		QResizeEvent* sigval1 = re;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDial_virtualbase_resizeEvent(VirtualQDial* self, QResizeEvent* re);

	virtual void paintEvent(QPaintEvent* pe) override {
		if (vtbl->paintEvent == 0) {
			QDial::paintEvent(pe);
			return;
		}

		QPaintEvent* sigval1 = pe;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDial_virtualbase_paintEvent(VirtualQDial* self, QPaintEvent* pe);

	virtual void mousePressEvent(QMouseEvent* me) override {
		if (vtbl->mousePressEvent == 0) {
			QDial::mousePressEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDial_virtualbase_mousePressEvent(VirtualQDial* self, QMouseEvent* me);

	virtual void mouseReleaseEvent(QMouseEvent* me) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDial::mouseReleaseEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDial_virtualbase_mouseReleaseEvent(VirtualQDial* self, QMouseEvent* me);

	virtual void mouseMoveEvent(QMouseEvent* me) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDial::mouseMoveEvent(me);
			return;
		}

		QMouseEvent* sigval1 = me;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDial_virtualbase_mouseMoveEvent(VirtualQDial* self, QMouseEvent* me);

	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QDial::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(this, sigval1);

	}

	friend void QDial_virtualbase_sliderChange(VirtualQDial* self, int change);

	virtual void initStyleOption(QStyleOptionSlider* option) const override {
		if (vtbl->initStyleOption == 0) {
			QDial::initStyleOption(option);
			return;
		}

		QStyleOptionSlider* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QDial_virtualbase_initStyleOption(const VirtualQDial* self, QStyleOptionSlider* option);

	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QDial::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDial_virtualbase_keyPressEvent(VirtualQDial* self, QKeyEvent* ev);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QDial::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDial_virtualbase_timerEvent(VirtualQDial* self, QTimerEvent* param1);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QDial::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDial_virtualbase_wheelEvent(VirtualQDial* self, QWheelEvent* e);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QDial::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDial_virtualbase_changeEvent(VirtualQDial* self, QEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDial::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_devType(const VirtualQDial* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDial::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDial_virtualbase_setVisible(VirtualQDial* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDial::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_heightForWidth(const VirtualQDial* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDial::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_hasHeightForWidth(const VirtualQDial* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDial::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDial_virtualbase_paintEngine(const VirtualQDial* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDial::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDial_virtualbase_mouseDoubleClickEvent(VirtualQDial* self, QMouseEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDial::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDial_virtualbase_keyReleaseEvent(VirtualQDial* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDial::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDial_virtualbase_focusInEvent(VirtualQDial* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDial::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDial_virtualbase_focusOutEvent(VirtualQDial* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDial::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDial_virtualbase_enterEvent(VirtualQDial* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDial::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDial_virtualbase_leaveEvent(VirtualQDial* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDial::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDial_virtualbase_moveEvent(VirtualQDial* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDial::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDial_virtualbase_closeEvent(VirtualQDial* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDial::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDial_virtualbase_contextMenuEvent(VirtualQDial* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDial::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDial_virtualbase_tabletEvent(VirtualQDial* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDial::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDial_virtualbase_actionEvent(VirtualQDial* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDial::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDial_virtualbase_dragEnterEvent(VirtualQDial* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDial::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDial_virtualbase_dragMoveEvent(VirtualQDial* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDial::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDial_virtualbase_dragLeaveEvent(VirtualQDial* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDial::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDial_virtualbase_dropEvent(VirtualQDial* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDial::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDial_virtualbase_showEvent(VirtualQDial* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDial::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDial_virtualbase_hideEvent(VirtualQDial* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDial::nativeEvent(eventType, message, result);
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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_nativeEvent(VirtualQDial* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDial::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDial_virtualbase_metric(const VirtualQDial* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDial::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDial_virtualbase_initPainter(const VirtualQDial* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDial::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDial_virtualbase_redirected(const VirtualQDial* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDial::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDial_virtualbase_sharedPainter(const VirtualQDial* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDial::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDial_virtualbase_inputMethodEvent(VirtualQDial* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDial::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDial_virtualbase_inputMethodQuery(const VirtualQDial* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDial::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_focusNextPrevChild(VirtualQDial* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDial::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDial_virtualbase_eventFilter(VirtualQDial* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDial::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDial_virtualbase_childEvent(VirtualQDial* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDial::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDial_virtualbase_customEvent(VirtualQDial* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDial::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDial_virtualbase_connectNotify(VirtualQDial* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDial::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDial_virtualbase_disconnectNotify(VirtualQDial* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDial_protectedbase_setRepeatAction(VirtualQDial* self, int action);
	friend int QDial_protectedbase_repeatAction(const VirtualQDial* self);
	friend void QDial_protectedbase_updateMicroFocus(VirtualQDial* self);
	friend void QDial_protectedbase_create(VirtualQDial* self);
	friend void QDial_protectedbase_destroy(VirtualQDial* self);
	friend bool QDial_protectedbase_focusNextChild(VirtualQDial* self);
	friend bool QDial_protectedbase_focusPreviousChild(VirtualQDial* self);
	friend QObject* QDial_protectedbase_sender(const VirtualQDial* self);
	friend int QDial_protectedbase_senderSignalIndex(const VirtualQDial* self);
	friend int QDial_protectedbase_receivers(const VirtualQDial* self, const char* signal);
	friend bool QDial_protectedbase_isSignalConnected(const VirtualQDial* self, QMetaMethod* signal);
};

VirtualQDial* QDial_new(const QDial_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDial(vtbl, vdata, parent);
}

VirtualQDial* QDial_new2(const QDial_VTable* vtbl, void* vdata) {
	return new VirtualQDial(vtbl, vdata);
}

void QDial_virtbase(QDial* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QDial_metaObject(const QDial* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDial_metacast(QDial* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDial_metacall(QDial* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDial_tr(const char* s) {
	QString _ret = QDial::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDial_wrapping(const QDial* self) {
	return self->wrapping();
}

int QDial_notchSize(const QDial* self) {
	return self->notchSize();
}

void QDial_setNotchTarget(QDial* self, double target) {
	self->setNotchTarget(static_cast<double>(target));
}

double QDial_notchTarget(const QDial* self) {
	qreal _ret = self->notchTarget();
	return static_cast<double>(_ret);
}

bool QDial_notchesVisible(const QDial* self) {
	return self->notchesVisible();
}

QSize* QDial_sizeHint(const QDial* self) {
	return new QSize(self->sizeHint());
}

QSize* QDial_minimumSizeHint(const QDial* self) {
	return new QSize(self->minimumSizeHint());
}

void QDial_setNotchesVisible(QDial* self, bool visible) {
	self->setNotchesVisible(visible);
}

void QDial_setWrapping(QDial* self, bool on) {
	self->setWrapping(on);
}

struct miqt_string QDial_tr2(const char* s, const char* c) {
	QString _ret = QDial::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDial_tr3(const char* s, const char* c, int n) {
	QString _ret = QDial::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDial_virtualbase_metaObject(const VirtualQDial* self) {

	return (QMetaObject*) self->QDial::metaObject();
}

void* QDial_virtualbase_metacast(VirtualQDial* self, const char* param1) {

	return self->QDial::qt_metacast(param1);
}

int QDial_virtualbase_metacall(VirtualQDial* self, int param1, int param2, void** param3) {

	return self->QDial::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QDial_virtualbase_sizeHint(const VirtualQDial* self) {

	return new QSize(self->QDial::sizeHint());
}

QSize* QDial_virtualbase_minimumSizeHint(const VirtualQDial* self) {

	return new QSize(self->QDial::minimumSizeHint());
}

bool QDial_virtualbase_event(VirtualQDial* self, QEvent* e) {

	return self->QDial::event(e);
}

void QDial_virtualbase_resizeEvent(VirtualQDial* self, QResizeEvent* re) {

	self->QDial::resizeEvent(re);
}

void QDial_virtualbase_paintEvent(VirtualQDial* self, QPaintEvent* pe) {

	self->QDial::paintEvent(pe);
}

void QDial_virtualbase_mousePressEvent(VirtualQDial* self, QMouseEvent* me) {

	self->QDial::mousePressEvent(me);
}

void QDial_virtualbase_mouseReleaseEvent(VirtualQDial* self, QMouseEvent* me) {

	self->QDial::mouseReleaseEvent(me);
}

void QDial_virtualbase_mouseMoveEvent(VirtualQDial* self, QMouseEvent* me) {

	self->QDial::mouseMoveEvent(me);
}

void QDial_virtualbase_sliderChange(VirtualQDial* self, int change) {

	self->QDial::sliderChange(static_cast<VirtualQDial::SliderChange>(change));
}

void QDial_virtualbase_initStyleOption(const VirtualQDial* self, QStyleOptionSlider* option) {

	self->QDial::initStyleOption(option);
}

void QDial_virtualbase_keyPressEvent(VirtualQDial* self, QKeyEvent* ev) {

	self->QDial::keyPressEvent(ev);
}

void QDial_virtualbase_timerEvent(VirtualQDial* self, QTimerEvent* param1) {

	self->QDial::timerEvent(param1);
}

void QDial_virtualbase_wheelEvent(VirtualQDial* self, QWheelEvent* e) {

	self->QDial::wheelEvent(e);
}

void QDial_virtualbase_changeEvent(VirtualQDial* self, QEvent* e) {

	self->QDial::changeEvent(e);
}

int QDial_virtualbase_devType(const VirtualQDial* self) {

	return self->QDial::devType();
}

void QDial_virtualbase_setVisible(VirtualQDial* self, bool visible) {

	self->QDial::setVisible(visible);
}

int QDial_virtualbase_heightForWidth(const VirtualQDial* self, int param1) {

	return self->QDial::heightForWidth(static_cast<int>(param1));
}

bool QDial_virtualbase_hasHeightForWidth(const VirtualQDial* self) {

	return self->QDial::hasHeightForWidth();
}

QPaintEngine* QDial_virtualbase_paintEngine(const VirtualQDial* self) {

	return self->QDial::paintEngine();
}

void QDial_virtualbase_mouseDoubleClickEvent(VirtualQDial* self, QMouseEvent* event) {

	self->QDial::mouseDoubleClickEvent(event);
}

void QDial_virtualbase_keyReleaseEvent(VirtualQDial* self, QKeyEvent* event) {

	self->QDial::keyReleaseEvent(event);
}

void QDial_virtualbase_focusInEvent(VirtualQDial* self, QFocusEvent* event) {

	self->QDial::focusInEvent(event);
}

void QDial_virtualbase_focusOutEvent(VirtualQDial* self, QFocusEvent* event) {

	self->QDial::focusOutEvent(event);
}

void QDial_virtualbase_enterEvent(VirtualQDial* self, QEnterEvent* event) {

	self->QDial::enterEvent(event);
}

void QDial_virtualbase_leaveEvent(VirtualQDial* self, QEvent* event) {

	self->QDial::leaveEvent(event);
}

void QDial_virtualbase_moveEvent(VirtualQDial* self, QMoveEvent* event) {

	self->QDial::moveEvent(event);
}

void QDial_virtualbase_closeEvent(VirtualQDial* self, QCloseEvent* event) {

	self->QDial::closeEvent(event);
}

void QDial_virtualbase_contextMenuEvent(VirtualQDial* self, QContextMenuEvent* event) {

	self->QDial::contextMenuEvent(event);
}

void QDial_virtualbase_tabletEvent(VirtualQDial* self, QTabletEvent* event) {

	self->QDial::tabletEvent(event);
}

void QDial_virtualbase_actionEvent(VirtualQDial* self, QActionEvent* event) {

	self->QDial::actionEvent(event);
}

void QDial_virtualbase_dragEnterEvent(VirtualQDial* self, QDragEnterEvent* event) {

	self->QDial::dragEnterEvent(event);
}

void QDial_virtualbase_dragMoveEvent(VirtualQDial* self, QDragMoveEvent* event) {

	self->QDial::dragMoveEvent(event);
}

void QDial_virtualbase_dragLeaveEvent(VirtualQDial* self, QDragLeaveEvent* event) {

	self->QDial::dragLeaveEvent(event);
}

void QDial_virtualbase_dropEvent(VirtualQDial* self, QDropEvent* event) {

	self->QDial::dropEvent(event);
}

void QDial_virtualbase_showEvent(VirtualQDial* self, QShowEvent* event) {

	self->QDial::showEvent(event);
}

void QDial_virtualbase_hideEvent(VirtualQDial* self, QHideEvent* event) {

	self->QDial::hideEvent(event);
}

bool QDial_virtualbase_nativeEvent(VirtualQDial* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDial::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QDial_virtualbase_metric(const VirtualQDial* self, int param1) {

	return self->QDial::metric(static_cast<VirtualQDial::PaintDeviceMetric>(param1));
}

void QDial_virtualbase_initPainter(const VirtualQDial* self, QPainter* painter) {

	self->QDial::initPainter(painter);
}

QPaintDevice* QDial_virtualbase_redirected(const VirtualQDial* self, QPoint* offset) {

	return self->QDial::redirected(offset);
}

QPainter* QDial_virtualbase_sharedPainter(const VirtualQDial* self) {

	return self->QDial::sharedPainter();
}

void QDial_virtualbase_inputMethodEvent(VirtualQDial* self, QInputMethodEvent* param1) {

	self->QDial::inputMethodEvent(param1);
}

QVariant* QDial_virtualbase_inputMethodQuery(const VirtualQDial* self, int param1) {

	return new QVariant(self->QDial::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDial_virtualbase_focusNextPrevChild(VirtualQDial* self, bool next) {

	return self->QDial::focusNextPrevChild(next);
}

bool QDial_virtualbase_eventFilter(VirtualQDial* self, QObject* watched, QEvent* event) {

	return self->QDial::eventFilter(watched, event);
}

void QDial_virtualbase_childEvent(VirtualQDial* self, QChildEvent* event) {

	self->QDial::childEvent(event);
}

void QDial_virtualbase_customEvent(VirtualQDial* self, QEvent* event) {

	self->QDial::customEvent(event);
}

void QDial_virtualbase_connectNotify(VirtualQDial* self, QMetaMethod* signal) {

	self->QDial::connectNotify(*signal);
}

void QDial_virtualbase_disconnectNotify(VirtualQDial* self, QMetaMethod* signal) {

	self->QDial::disconnectNotify(*signal);
}

const QMetaObject* QDial_staticMetaObject() { return &QDial::staticMetaObject; }

const QDial_VTable* QDial_vtbl(const VirtualQDial* self) { return self->vtbl; }
void* QDial_vdata(const VirtualQDial* self) { return self->vdata; }
void QDial_setVdata(VirtualQDial* self, void* vdata) { self->vdata = vdata; }

void QDial_protectedbase_setRepeatAction(VirtualQDial* self, int action) {
	self->setRepeatAction(static_cast<VirtualQDial::SliderAction>(action));
}

int QDial_protectedbase_repeatAction(const VirtualQDial* self) {
	VirtualQDial::SliderAction _ret = self->repeatAction();
	return static_cast<int>(_ret);
}

void QDial_protectedbase_updateMicroFocus(VirtualQDial* self) {
	self->updateMicroFocus();
}

void QDial_protectedbase_create(VirtualQDial* self) {
	self->create();
}

void QDial_protectedbase_destroy(VirtualQDial* self) {
	self->destroy();
}

bool QDial_protectedbase_focusNextChild(VirtualQDial* self) {
	return self->focusNextChild();
}

bool QDial_protectedbase_focusPreviousChild(VirtualQDial* self) {
	return self->focusPreviousChild();
}

QObject* QDial_protectedbase_sender(const VirtualQDial* self) {
	return self->sender();
}

int QDial_protectedbase_senderSignalIndex(const VirtualQDial* self) {
	return self->senderSignalIndex();
}

int QDial_protectedbase_receivers(const VirtualQDial* self, const char* signal) {
	return self->receivers(signal);
}

bool QDial_protectedbase_isSignalConnected(const VirtualQDial* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDial_delete(QDial* self) {
	delete self;
}

