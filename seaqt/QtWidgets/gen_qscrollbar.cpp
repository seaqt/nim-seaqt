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
#include <QScrollBar>
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
#include <qscrollbar.h>
#include "gen_qscrollbar.h"
class VirtualQScrollBar final : public QScrollBar {
	const QScrollBar_VTable* vtbl;
	void* vdata;
public:
	friend const QScrollBar_VTable* QScrollBar_vtbl(const VirtualQScrollBar* self);
	friend void* QScrollBar_vdata(const VirtualQScrollBar* self);
	friend void QScrollBar_setVdata(VirtualQScrollBar* self, void* vdata);

	VirtualQScrollBar(const QScrollBar_VTable* vtbl, void* vdata, QWidget* parent): QScrollBar(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQScrollBar(const QScrollBar_VTable* vtbl, void* vdata): QScrollBar(), vtbl(vtbl), vdata(vdata) {}
	VirtualQScrollBar(const QScrollBar_VTable* vtbl, void* vdata, Qt::Orientation param1): QScrollBar(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQScrollBar(const QScrollBar_VTable* vtbl, void* vdata, Qt::Orientation param1, QWidget* parent): QScrollBar(param1, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQScrollBar() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScrollBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QScrollBar_virtualbase_metaObject(const VirtualQScrollBar* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScrollBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QScrollBar_virtualbase_metacast(VirtualQScrollBar* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScrollBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_metacall(VirtualQScrollBar* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QScrollBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QScrollBar_virtualbase_sizeHint(const VirtualQScrollBar* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScrollBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_event(VirtualQScrollBar* self, QEvent* event);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QScrollBar::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_wheelEvent(VirtualQScrollBar* self, QWheelEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QScrollBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_paintEvent(VirtualQScrollBar* self, QPaintEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QScrollBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_mousePressEvent(VirtualQScrollBar* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QScrollBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseReleaseEvent(VirtualQScrollBar* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QScrollBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseMoveEvent(VirtualQScrollBar* self, QMouseEvent* param1);

	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QScrollBar::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_hideEvent(VirtualQScrollBar* self, QHideEvent* param1);

	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QScrollBar::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(this, sigval1);

	}

	friend void QScrollBar_virtualbase_sliderChange(VirtualQScrollBar* self, int change);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QScrollBar::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_contextMenuEvent(VirtualQScrollBar* self, QContextMenuEvent* param1);

	virtual void initStyleOption(QStyleOptionSlider* option) const override {
		if (vtbl->initStyleOption == 0) {
			QScrollBar::initStyleOption(option);
			return;
		}

		QStyleOptionSlider* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QScrollBar_virtualbase_initStyleOption(const VirtualQScrollBar* self, QStyleOptionSlider* option);

	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QScrollBar::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_keyPressEvent(VirtualQScrollBar* self, QKeyEvent* ev);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QScrollBar::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_timerEvent(VirtualQScrollBar* self, QTimerEvent* param1);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QScrollBar::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_changeEvent(VirtualQScrollBar* self, QEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QScrollBar::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_devType(const VirtualQScrollBar* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QScrollBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QScrollBar_virtualbase_setVisible(VirtualQScrollBar* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QScrollBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QScrollBar_virtualbase_minimumSizeHint(const VirtualQScrollBar* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QScrollBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_heightForWidth(const VirtualQScrollBar* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QScrollBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_hasHeightForWidth(const VirtualQScrollBar* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QScrollBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QScrollBar_virtualbase_paintEngine(const VirtualQScrollBar* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QScrollBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseDoubleClickEvent(VirtualQScrollBar* self, QMouseEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QScrollBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_keyReleaseEvent(VirtualQScrollBar* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QScrollBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_focusInEvent(VirtualQScrollBar* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QScrollBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_focusOutEvent(VirtualQScrollBar* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QScrollBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_enterEvent(VirtualQScrollBar* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QScrollBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_leaveEvent(VirtualQScrollBar* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QScrollBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_moveEvent(VirtualQScrollBar* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QScrollBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_resizeEvent(VirtualQScrollBar* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QScrollBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_closeEvent(VirtualQScrollBar* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QScrollBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_tabletEvent(VirtualQScrollBar* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QScrollBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_actionEvent(VirtualQScrollBar* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QScrollBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragEnterEvent(VirtualQScrollBar* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QScrollBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragMoveEvent(VirtualQScrollBar* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QScrollBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragLeaveEvent(VirtualQScrollBar* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QScrollBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_dropEvent(VirtualQScrollBar* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QScrollBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_showEvent(VirtualQScrollBar* self, QShowEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QScrollBar::nativeEvent(eventType, message, result);
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

	friend bool QScrollBar_virtualbase_nativeEvent(VirtualQScrollBar* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QScrollBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_metric(const VirtualQScrollBar* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QScrollBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QScrollBar_virtualbase_initPainter(const VirtualQScrollBar* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QScrollBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QScrollBar_virtualbase_redirected(const VirtualQScrollBar* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QScrollBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QScrollBar_virtualbase_sharedPainter(const VirtualQScrollBar* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QScrollBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_inputMethodEvent(VirtualQScrollBar* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QScrollBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QScrollBar_virtualbase_inputMethodQuery(const VirtualQScrollBar* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QScrollBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_focusNextPrevChild(VirtualQScrollBar* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScrollBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_eventFilter(VirtualQScrollBar* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScrollBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_childEvent(VirtualQScrollBar* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScrollBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QScrollBar_virtualbase_customEvent(VirtualQScrollBar* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScrollBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QScrollBar_virtualbase_connectNotify(VirtualQScrollBar* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScrollBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QScrollBar_virtualbase_disconnectNotify(VirtualQScrollBar* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QScrollBar_protectedbase_setRepeatAction(VirtualQScrollBar* self, int action);
	friend int QScrollBar_protectedbase_repeatAction(const VirtualQScrollBar* self);
	friend void QScrollBar_protectedbase_updateMicroFocus(VirtualQScrollBar* self);
	friend void QScrollBar_protectedbase_create(VirtualQScrollBar* self);
	friend void QScrollBar_protectedbase_destroy(VirtualQScrollBar* self);
	friend bool QScrollBar_protectedbase_focusNextChild(VirtualQScrollBar* self);
	friend bool QScrollBar_protectedbase_focusPreviousChild(VirtualQScrollBar* self);
	friend QObject* QScrollBar_protectedbase_sender(const VirtualQScrollBar* self);
	friend int QScrollBar_protectedbase_senderSignalIndex(const VirtualQScrollBar* self);
	friend int QScrollBar_protectedbase_receivers(const VirtualQScrollBar* self, const char* signal);
	friend bool QScrollBar_protectedbase_isSignalConnected(const VirtualQScrollBar* self, QMetaMethod* signal);
};

VirtualQScrollBar* QScrollBar_new(const QScrollBar_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQScrollBar(vtbl, vdata, parent);
}

VirtualQScrollBar* QScrollBar_new2(const QScrollBar_VTable* vtbl, void* vdata) {
	return new VirtualQScrollBar(vtbl, vdata);
}

VirtualQScrollBar* QScrollBar_new3(const QScrollBar_VTable* vtbl, void* vdata, int param1) {
	return new VirtualQScrollBar(vtbl, vdata, static_cast<Qt::Orientation>(param1));
}

VirtualQScrollBar* QScrollBar_new4(const QScrollBar_VTable* vtbl, void* vdata, int param1, QWidget* parent) {
	return new VirtualQScrollBar(vtbl, vdata, static_cast<Qt::Orientation>(param1), parent);
}

void QScrollBar_virtbase(QScrollBar* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QScrollBar_metaObject(const QScrollBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScrollBar_metacast(QScrollBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScrollBar_metacall(QScrollBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScrollBar_tr(const char* s) {
	QString _ret = QScrollBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QScrollBar_sizeHint(const QScrollBar* self) {
	return new QSize(self->sizeHint());
}

bool QScrollBar_event(QScrollBar* self, QEvent* event) {
	return self->event(event);
}

struct miqt_string QScrollBar_tr2(const char* s, const char* c) {
	QString _ret = QScrollBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QScrollBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QScrollBar_virtualbase_metaObject(const VirtualQScrollBar* self) {

	return (QMetaObject*) self->QScrollBar::metaObject();
}

void* QScrollBar_virtualbase_metacast(VirtualQScrollBar* self, const char* param1) {

	return self->QScrollBar::qt_metacast(param1);
}

int QScrollBar_virtualbase_metacall(VirtualQScrollBar* self, int param1, int param2, void** param3) {

	return self->QScrollBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QScrollBar_virtualbase_sizeHint(const VirtualQScrollBar* self) {

	return new QSize(self->QScrollBar::sizeHint());
}

bool QScrollBar_virtualbase_event(VirtualQScrollBar* self, QEvent* event) {

	return self->QScrollBar::event(event);
}

void QScrollBar_virtualbase_wheelEvent(VirtualQScrollBar* self, QWheelEvent* param1) {

	self->QScrollBar::wheelEvent(param1);
}

void QScrollBar_virtualbase_paintEvent(VirtualQScrollBar* self, QPaintEvent* param1) {

	self->QScrollBar::paintEvent(param1);
}

void QScrollBar_virtualbase_mousePressEvent(VirtualQScrollBar* self, QMouseEvent* param1) {

	self->QScrollBar::mousePressEvent(param1);
}

void QScrollBar_virtualbase_mouseReleaseEvent(VirtualQScrollBar* self, QMouseEvent* param1) {

	self->QScrollBar::mouseReleaseEvent(param1);
}

void QScrollBar_virtualbase_mouseMoveEvent(VirtualQScrollBar* self, QMouseEvent* param1) {

	self->QScrollBar::mouseMoveEvent(param1);
}

void QScrollBar_virtualbase_hideEvent(VirtualQScrollBar* self, QHideEvent* param1) {

	self->QScrollBar::hideEvent(param1);
}

void QScrollBar_virtualbase_sliderChange(VirtualQScrollBar* self, int change) {

	self->QScrollBar::sliderChange(static_cast<VirtualQScrollBar::SliderChange>(change));
}

void QScrollBar_virtualbase_contextMenuEvent(VirtualQScrollBar* self, QContextMenuEvent* param1) {

	self->QScrollBar::contextMenuEvent(param1);
}

void QScrollBar_virtualbase_initStyleOption(const VirtualQScrollBar* self, QStyleOptionSlider* option) {

	self->QScrollBar::initStyleOption(option);
}

void QScrollBar_virtualbase_keyPressEvent(VirtualQScrollBar* self, QKeyEvent* ev) {

	self->QScrollBar::keyPressEvent(ev);
}

void QScrollBar_virtualbase_timerEvent(VirtualQScrollBar* self, QTimerEvent* param1) {

	self->QScrollBar::timerEvent(param1);
}

void QScrollBar_virtualbase_changeEvent(VirtualQScrollBar* self, QEvent* e) {

	self->QScrollBar::changeEvent(e);
}

int QScrollBar_virtualbase_devType(const VirtualQScrollBar* self) {

	return self->QScrollBar::devType();
}

void QScrollBar_virtualbase_setVisible(VirtualQScrollBar* self, bool visible) {

	self->QScrollBar::setVisible(visible);
}

QSize* QScrollBar_virtualbase_minimumSizeHint(const VirtualQScrollBar* self) {

	return new QSize(self->QScrollBar::minimumSizeHint());
}

int QScrollBar_virtualbase_heightForWidth(const VirtualQScrollBar* self, int param1) {

	return self->QScrollBar::heightForWidth(static_cast<int>(param1));
}

bool QScrollBar_virtualbase_hasHeightForWidth(const VirtualQScrollBar* self) {

	return self->QScrollBar::hasHeightForWidth();
}

QPaintEngine* QScrollBar_virtualbase_paintEngine(const VirtualQScrollBar* self) {

	return self->QScrollBar::paintEngine();
}

void QScrollBar_virtualbase_mouseDoubleClickEvent(VirtualQScrollBar* self, QMouseEvent* event) {

	self->QScrollBar::mouseDoubleClickEvent(event);
}

void QScrollBar_virtualbase_keyReleaseEvent(VirtualQScrollBar* self, QKeyEvent* event) {

	self->QScrollBar::keyReleaseEvent(event);
}

void QScrollBar_virtualbase_focusInEvent(VirtualQScrollBar* self, QFocusEvent* event) {

	self->QScrollBar::focusInEvent(event);
}

void QScrollBar_virtualbase_focusOutEvent(VirtualQScrollBar* self, QFocusEvent* event) {

	self->QScrollBar::focusOutEvent(event);
}

void QScrollBar_virtualbase_enterEvent(VirtualQScrollBar* self, QEnterEvent* event) {

	self->QScrollBar::enterEvent(event);
}

void QScrollBar_virtualbase_leaveEvent(VirtualQScrollBar* self, QEvent* event) {

	self->QScrollBar::leaveEvent(event);
}

void QScrollBar_virtualbase_moveEvent(VirtualQScrollBar* self, QMoveEvent* event) {

	self->QScrollBar::moveEvent(event);
}

void QScrollBar_virtualbase_resizeEvent(VirtualQScrollBar* self, QResizeEvent* event) {

	self->QScrollBar::resizeEvent(event);
}

void QScrollBar_virtualbase_closeEvent(VirtualQScrollBar* self, QCloseEvent* event) {

	self->QScrollBar::closeEvent(event);
}

void QScrollBar_virtualbase_tabletEvent(VirtualQScrollBar* self, QTabletEvent* event) {

	self->QScrollBar::tabletEvent(event);
}

void QScrollBar_virtualbase_actionEvent(VirtualQScrollBar* self, QActionEvent* event) {

	self->QScrollBar::actionEvent(event);
}

void QScrollBar_virtualbase_dragEnterEvent(VirtualQScrollBar* self, QDragEnterEvent* event) {

	self->QScrollBar::dragEnterEvent(event);
}

void QScrollBar_virtualbase_dragMoveEvent(VirtualQScrollBar* self, QDragMoveEvent* event) {

	self->QScrollBar::dragMoveEvent(event);
}

void QScrollBar_virtualbase_dragLeaveEvent(VirtualQScrollBar* self, QDragLeaveEvent* event) {

	self->QScrollBar::dragLeaveEvent(event);
}

void QScrollBar_virtualbase_dropEvent(VirtualQScrollBar* self, QDropEvent* event) {

	self->QScrollBar::dropEvent(event);
}

void QScrollBar_virtualbase_showEvent(VirtualQScrollBar* self, QShowEvent* event) {

	self->QScrollBar::showEvent(event);
}

bool QScrollBar_virtualbase_nativeEvent(VirtualQScrollBar* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QScrollBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QScrollBar_virtualbase_metric(const VirtualQScrollBar* self, int param1) {

	return self->QScrollBar::metric(static_cast<VirtualQScrollBar::PaintDeviceMetric>(param1));
}

void QScrollBar_virtualbase_initPainter(const VirtualQScrollBar* self, QPainter* painter) {

	self->QScrollBar::initPainter(painter);
}

QPaintDevice* QScrollBar_virtualbase_redirected(const VirtualQScrollBar* self, QPoint* offset) {

	return self->QScrollBar::redirected(offset);
}

QPainter* QScrollBar_virtualbase_sharedPainter(const VirtualQScrollBar* self) {

	return self->QScrollBar::sharedPainter();
}

void QScrollBar_virtualbase_inputMethodEvent(VirtualQScrollBar* self, QInputMethodEvent* param1) {

	self->QScrollBar::inputMethodEvent(param1);
}

QVariant* QScrollBar_virtualbase_inputMethodQuery(const VirtualQScrollBar* self, int param1) {

	return new QVariant(self->QScrollBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QScrollBar_virtualbase_focusNextPrevChild(VirtualQScrollBar* self, bool next) {

	return self->QScrollBar::focusNextPrevChild(next);
}

bool QScrollBar_virtualbase_eventFilter(VirtualQScrollBar* self, QObject* watched, QEvent* event) {

	return self->QScrollBar::eventFilter(watched, event);
}

void QScrollBar_virtualbase_childEvent(VirtualQScrollBar* self, QChildEvent* event) {

	self->QScrollBar::childEvent(event);
}

void QScrollBar_virtualbase_customEvent(VirtualQScrollBar* self, QEvent* event) {

	self->QScrollBar::customEvent(event);
}

void QScrollBar_virtualbase_connectNotify(VirtualQScrollBar* self, QMetaMethod* signal) {

	self->QScrollBar::connectNotify(*signal);
}

void QScrollBar_virtualbase_disconnectNotify(VirtualQScrollBar* self, QMetaMethod* signal) {

	self->QScrollBar::disconnectNotify(*signal);
}

const QMetaObject* QScrollBar_staticMetaObject() { return &QScrollBar::staticMetaObject; }

const QScrollBar_VTable* QScrollBar_vtbl(const VirtualQScrollBar* self) { return self->vtbl; }
void* QScrollBar_vdata(const VirtualQScrollBar* self) { return self->vdata; }
void QScrollBar_setVdata(VirtualQScrollBar* self, void* vdata) { self->vdata = vdata; }

void QScrollBar_protectedbase_setRepeatAction(VirtualQScrollBar* self, int action) {
	self->setRepeatAction(static_cast<VirtualQScrollBar::SliderAction>(action));
}

int QScrollBar_protectedbase_repeatAction(const VirtualQScrollBar* self) {
	VirtualQScrollBar::SliderAction _ret = self->repeatAction();
	return static_cast<int>(_ret);
}

void QScrollBar_protectedbase_updateMicroFocus(VirtualQScrollBar* self) {
	self->updateMicroFocus();
}

void QScrollBar_protectedbase_create(VirtualQScrollBar* self) {
	self->create();
}

void QScrollBar_protectedbase_destroy(VirtualQScrollBar* self) {
	self->destroy();
}

bool QScrollBar_protectedbase_focusNextChild(VirtualQScrollBar* self) {
	return self->focusNextChild();
}

bool QScrollBar_protectedbase_focusPreviousChild(VirtualQScrollBar* self) {
	return self->focusPreviousChild();
}

QObject* QScrollBar_protectedbase_sender(const VirtualQScrollBar* self) {
	return self->sender();
}

int QScrollBar_protectedbase_senderSignalIndex(const VirtualQScrollBar* self) {
	return self->senderSignalIndex();
}

int QScrollBar_protectedbase_receivers(const VirtualQScrollBar* self, const char* signal) {
	return self->receivers(signal);
}

bool QScrollBar_protectedbase_isSignalConnected(const VirtualQScrollBar* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QScrollBar_delete(QScrollBar* self) {
	delete self;
}

