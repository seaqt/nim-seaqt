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
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLCDNumber>
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
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qlcdnumber.h>
#include "gen_qlcdnumber.h"
class VirtualQLCDNumber final : public QLCDNumber {
	const QLCDNumber_VTable* vtbl;
	void* vdata;
public:
	friend const QLCDNumber_VTable* QLCDNumber_vtbl(const VirtualQLCDNumber* self);
	friend void* QLCDNumber_vdata(const VirtualQLCDNumber* self);
	friend void QLCDNumber_setVdata(VirtualQLCDNumber* self, void* vdata);

	VirtualQLCDNumber(const QLCDNumber_VTable* vtbl, void* vdata, QWidget* parent): QLCDNumber(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLCDNumber(const QLCDNumber_VTable* vtbl, void* vdata): QLCDNumber(), vtbl(vtbl), vdata(vdata) {}
	VirtualQLCDNumber(const QLCDNumber_VTable* vtbl, void* vdata, uint numDigits): QLCDNumber(numDigits), vtbl(vtbl), vdata(vdata) {}
	VirtualQLCDNumber(const QLCDNumber_VTable* vtbl, void* vdata, uint numDigits, QWidget* parent): QLCDNumber(numDigits, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQLCDNumber() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLCDNumber::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QLCDNumber_virtualbase_metaObject(const VirtualQLCDNumber* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLCDNumber::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QLCDNumber_virtualbase_metacast(VirtualQLCDNumber* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLCDNumber::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_metacall(VirtualQLCDNumber* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QLCDNumber::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLCDNumber_virtualbase_sizeHint(const VirtualQLCDNumber* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QLCDNumber::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_event(VirtualQLCDNumber* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QLCDNumber::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_paintEvent(VirtualQLCDNumber* self, QPaintEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QLCDNumber::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_changeEvent(VirtualQLCDNumber* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QLCDNumber::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_initStyleOption(const VirtualQLCDNumber* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QLCDNumber::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_devType(const VirtualQLCDNumber* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QLCDNumber::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_setVisible(VirtualQLCDNumber* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QLCDNumber::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLCDNumber_virtualbase_minimumSizeHint(const VirtualQLCDNumber* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLCDNumber::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_heightForWidth(const VirtualQLCDNumber* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLCDNumber::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_hasHeightForWidth(const VirtualQLCDNumber* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QLCDNumber::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QLCDNumber_virtualbase_paintEngine(const VirtualQLCDNumber* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QLCDNumber::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mousePressEvent(VirtualQLCDNumber* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QLCDNumber::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseReleaseEvent(VirtualQLCDNumber* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QLCDNumber::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseDoubleClickEvent(VirtualQLCDNumber* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QLCDNumber::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseMoveEvent(VirtualQLCDNumber* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QLCDNumber::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_wheelEvent(VirtualQLCDNumber* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QLCDNumber::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_keyPressEvent(VirtualQLCDNumber* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QLCDNumber::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_keyReleaseEvent(VirtualQLCDNumber* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QLCDNumber::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_focusInEvent(VirtualQLCDNumber* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QLCDNumber::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_focusOutEvent(VirtualQLCDNumber* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QLCDNumber::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_enterEvent(VirtualQLCDNumber* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QLCDNumber::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_leaveEvent(VirtualQLCDNumber* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QLCDNumber::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_moveEvent(VirtualQLCDNumber* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QLCDNumber::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_resizeEvent(VirtualQLCDNumber* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QLCDNumber::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_closeEvent(VirtualQLCDNumber* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QLCDNumber::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_contextMenuEvent(VirtualQLCDNumber* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QLCDNumber::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_tabletEvent(VirtualQLCDNumber* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QLCDNumber::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_actionEvent(VirtualQLCDNumber* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QLCDNumber::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragEnterEvent(VirtualQLCDNumber* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QLCDNumber::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragMoveEvent(VirtualQLCDNumber* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QLCDNumber::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragLeaveEvent(VirtualQLCDNumber* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QLCDNumber::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dropEvent(VirtualQLCDNumber* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QLCDNumber::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_showEvent(VirtualQLCDNumber* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QLCDNumber::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_hideEvent(VirtualQLCDNumber* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QLCDNumber::nativeEvent(eventType, message, result);
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

	friend bool QLCDNumber_virtualbase_nativeEvent(VirtualQLCDNumber* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QLCDNumber::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_metric(const VirtualQLCDNumber* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QLCDNumber::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_initPainter(const VirtualQLCDNumber* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QLCDNumber::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QLCDNumber_virtualbase_redirected(const VirtualQLCDNumber* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QLCDNumber::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QLCDNumber_virtualbase_sharedPainter(const VirtualQLCDNumber* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QLCDNumber::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_inputMethodEvent(VirtualQLCDNumber* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QLCDNumber::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QLCDNumber_virtualbase_inputMethodQuery(const VirtualQLCDNumber* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QLCDNumber::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_focusNextPrevChild(VirtualQLCDNumber* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLCDNumber::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_eventFilter(VirtualQLCDNumber* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLCDNumber::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_timerEvent(VirtualQLCDNumber* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLCDNumber::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_childEvent(VirtualQLCDNumber* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLCDNumber::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_customEvent(VirtualQLCDNumber* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLCDNumber::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_connectNotify(VirtualQLCDNumber* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLCDNumber::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QLCDNumber_virtualbase_disconnectNotify(VirtualQLCDNumber* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QLCDNumber_protectedbase_drawFrame(VirtualQLCDNumber* self, QPainter* param1);
	friend void QLCDNumber_protectedbase_updateMicroFocus(VirtualQLCDNumber* self);
	friend void QLCDNumber_protectedbase_create(VirtualQLCDNumber* self);
	friend void QLCDNumber_protectedbase_destroy(VirtualQLCDNumber* self);
	friend bool QLCDNumber_protectedbase_focusNextChild(VirtualQLCDNumber* self);
	friend bool QLCDNumber_protectedbase_focusPreviousChild(VirtualQLCDNumber* self);
	friend QObject* QLCDNumber_protectedbase_sender(const VirtualQLCDNumber* self);
	friend int QLCDNumber_protectedbase_senderSignalIndex(const VirtualQLCDNumber* self);
	friend int QLCDNumber_protectedbase_receivers(const VirtualQLCDNumber* self, const char* signal);
	friend bool QLCDNumber_protectedbase_isSignalConnected(const VirtualQLCDNumber* self, QMetaMethod* signal);
};

VirtualQLCDNumber* QLCDNumber_new(const QLCDNumber_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQLCDNumber(vtbl, vdata, parent);
}

VirtualQLCDNumber* QLCDNumber_new2(const QLCDNumber_VTable* vtbl, void* vdata) {
	return new VirtualQLCDNumber(vtbl, vdata);
}

VirtualQLCDNumber* QLCDNumber_new3(const QLCDNumber_VTable* vtbl, void* vdata, unsigned int numDigits) {
	return new VirtualQLCDNumber(vtbl, vdata, static_cast<uint>(numDigits));
}

VirtualQLCDNumber* QLCDNumber_new4(const QLCDNumber_VTable* vtbl, void* vdata, unsigned int numDigits, QWidget* parent) {
	return new VirtualQLCDNumber(vtbl, vdata, static_cast<uint>(numDigits), parent);
}

void QLCDNumber_virtbase(QLCDNumber* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QLCDNumber_metaObject(const QLCDNumber* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLCDNumber_metacast(QLCDNumber* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLCDNumber_metacall(QLCDNumber* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLCDNumber_tr(const char* s) {
	QString _ret = QLCDNumber::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLCDNumber_smallDecimalPoint(const QLCDNumber* self) {
	return self->smallDecimalPoint();
}

int QLCDNumber_digitCount(const QLCDNumber* self) {
	return self->digitCount();
}

void QLCDNumber_setDigitCount(QLCDNumber* self, int nDigits) {
	self->setDigitCount(static_cast<int>(nDigits));
}

bool QLCDNumber_checkOverflow(const QLCDNumber* self, double num) {
	return self->checkOverflow(static_cast<double>(num));
}

bool QLCDNumber_checkOverflowWithNum(const QLCDNumber* self, int num) {
	return self->checkOverflow(static_cast<int>(num));
}

int QLCDNumber_mode(const QLCDNumber* self) {
	QLCDNumber::Mode _ret = self->mode();
	return static_cast<int>(_ret);
}

void QLCDNumber_setMode(QLCDNumber* self, int mode) {
	self->setMode(static_cast<QLCDNumber::Mode>(mode));
}

int QLCDNumber_segmentStyle(const QLCDNumber* self) {
	QLCDNumber::SegmentStyle _ret = self->segmentStyle();
	return static_cast<int>(_ret);
}

void QLCDNumber_setSegmentStyle(QLCDNumber* self, int segmentStyle) {
	self->setSegmentStyle(static_cast<QLCDNumber::SegmentStyle>(segmentStyle));
}

double QLCDNumber_value(const QLCDNumber* self) {
	return self->value();
}

int QLCDNumber_intValue(const QLCDNumber* self) {
	return self->intValue();
}

QSize* QLCDNumber_sizeHint(const QLCDNumber* self) {
	return new QSize(self->sizeHint());
}

void QLCDNumber_display(QLCDNumber* self, struct miqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	self->display(str_QString);
}

void QLCDNumber_displayWithNum(QLCDNumber* self, int num) {
	self->display(static_cast<int>(num));
}

void QLCDNumber_display2(QLCDNumber* self, double num) {
	self->display(static_cast<double>(num));
}

void QLCDNumber_setHexMode(QLCDNumber* self) {
	self->setHexMode();
}

void QLCDNumber_setDecMode(QLCDNumber* self) {
	self->setDecMode();
}

void QLCDNumber_setOctMode(QLCDNumber* self) {
	self->setOctMode();
}

void QLCDNumber_setBinMode(QLCDNumber* self) {
	self->setBinMode();
}

void QLCDNumber_setSmallDecimalPoint(QLCDNumber* self, bool smallDecimalPoint) {
	self->setSmallDecimalPoint(smallDecimalPoint);
}

void QLCDNumber_overflow(QLCDNumber* self) {
	self->overflow();
}

void QLCDNumber_connect_overflow(VirtualQLCDNumber* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQLCDNumber::connect(self, static_cast<void (QLCDNumber::*)()>(&QLCDNumber::overflow), self, local_caller{slot, callback, release});
}

struct miqt_string QLCDNumber_tr2(const char* s, const char* c) {
	QString _ret = QLCDNumber::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLCDNumber_tr3(const char* s, const char* c, int n) {
	QString _ret = QLCDNumber::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QLCDNumber_virtualbase_metaObject(const VirtualQLCDNumber* self) {

	return (QMetaObject*) self->QLCDNumber::metaObject();
}

void* QLCDNumber_virtualbase_metacast(VirtualQLCDNumber* self, const char* param1) {

	return self->QLCDNumber::qt_metacast(param1);
}

int QLCDNumber_virtualbase_metacall(VirtualQLCDNumber* self, int param1, int param2, void** param3) {

	return self->QLCDNumber::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QLCDNumber_virtualbase_sizeHint(const VirtualQLCDNumber* self) {

	return new QSize(self->QLCDNumber::sizeHint());
}

bool QLCDNumber_virtualbase_event(VirtualQLCDNumber* self, QEvent* e) {

	return self->QLCDNumber::event(e);
}

void QLCDNumber_virtualbase_paintEvent(VirtualQLCDNumber* self, QPaintEvent* param1) {

	self->QLCDNumber::paintEvent(param1);
}

void QLCDNumber_virtualbase_changeEvent(VirtualQLCDNumber* self, QEvent* param1) {

	self->QLCDNumber::changeEvent(param1);
}

void QLCDNumber_virtualbase_initStyleOption(const VirtualQLCDNumber* self, QStyleOptionFrame* option) {

	self->QLCDNumber::initStyleOption(option);
}

int QLCDNumber_virtualbase_devType(const VirtualQLCDNumber* self) {

	return self->QLCDNumber::devType();
}

void QLCDNumber_virtualbase_setVisible(VirtualQLCDNumber* self, bool visible) {

	self->QLCDNumber::setVisible(visible);
}

QSize* QLCDNumber_virtualbase_minimumSizeHint(const VirtualQLCDNumber* self) {

	return new QSize(self->QLCDNumber::minimumSizeHint());
}

int QLCDNumber_virtualbase_heightForWidth(const VirtualQLCDNumber* self, int param1) {

	return self->QLCDNumber::heightForWidth(static_cast<int>(param1));
}

bool QLCDNumber_virtualbase_hasHeightForWidth(const VirtualQLCDNumber* self) {

	return self->QLCDNumber::hasHeightForWidth();
}

QPaintEngine* QLCDNumber_virtualbase_paintEngine(const VirtualQLCDNumber* self) {

	return self->QLCDNumber::paintEngine();
}

void QLCDNumber_virtualbase_mousePressEvent(VirtualQLCDNumber* self, QMouseEvent* event) {

	self->QLCDNumber::mousePressEvent(event);
}

void QLCDNumber_virtualbase_mouseReleaseEvent(VirtualQLCDNumber* self, QMouseEvent* event) {

	self->QLCDNumber::mouseReleaseEvent(event);
}

void QLCDNumber_virtualbase_mouseDoubleClickEvent(VirtualQLCDNumber* self, QMouseEvent* event) {

	self->QLCDNumber::mouseDoubleClickEvent(event);
}

void QLCDNumber_virtualbase_mouseMoveEvent(VirtualQLCDNumber* self, QMouseEvent* event) {

	self->QLCDNumber::mouseMoveEvent(event);
}

void QLCDNumber_virtualbase_wheelEvent(VirtualQLCDNumber* self, QWheelEvent* event) {

	self->QLCDNumber::wheelEvent(event);
}

void QLCDNumber_virtualbase_keyPressEvent(VirtualQLCDNumber* self, QKeyEvent* event) {

	self->QLCDNumber::keyPressEvent(event);
}

void QLCDNumber_virtualbase_keyReleaseEvent(VirtualQLCDNumber* self, QKeyEvent* event) {

	self->QLCDNumber::keyReleaseEvent(event);
}

void QLCDNumber_virtualbase_focusInEvent(VirtualQLCDNumber* self, QFocusEvent* event) {

	self->QLCDNumber::focusInEvent(event);
}

void QLCDNumber_virtualbase_focusOutEvent(VirtualQLCDNumber* self, QFocusEvent* event) {

	self->QLCDNumber::focusOutEvent(event);
}

void QLCDNumber_virtualbase_enterEvent(VirtualQLCDNumber* self, QEnterEvent* event) {

	self->QLCDNumber::enterEvent(event);
}

void QLCDNumber_virtualbase_leaveEvent(VirtualQLCDNumber* self, QEvent* event) {

	self->QLCDNumber::leaveEvent(event);
}

void QLCDNumber_virtualbase_moveEvent(VirtualQLCDNumber* self, QMoveEvent* event) {

	self->QLCDNumber::moveEvent(event);
}

void QLCDNumber_virtualbase_resizeEvent(VirtualQLCDNumber* self, QResizeEvent* event) {

	self->QLCDNumber::resizeEvent(event);
}

void QLCDNumber_virtualbase_closeEvent(VirtualQLCDNumber* self, QCloseEvent* event) {

	self->QLCDNumber::closeEvent(event);
}

void QLCDNumber_virtualbase_contextMenuEvent(VirtualQLCDNumber* self, QContextMenuEvent* event) {

	self->QLCDNumber::contextMenuEvent(event);
}

void QLCDNumber_virtualbase_tabletEvent(VirtualQLCDNumber* self, QTabletEvent* event) {

	self->QLCDNumber::tabletEvent(event);
}

void QLCDNumber_virtualbase_actionEvent(VirtualQLCDNumber* self, QActionEvent* event) {

	self->QLCDNumber::actionEvent(event);
}

void QLCDNumber_virtualbase_dragEnterEvent(VirtualQLCDNumber* self, QDragEnterEvent* event) {

	self->QLCDNumber::dragEnterEvent(event);
}

void QLCDNumber_virtualbase_dragMoveEvent(VirtualQLCDNumber* self, QDragMoveEvent* event) {

	self->QLCDNumber::dragMoveEvent(event);
}

void QLCDNumber_virtualbase_dragLeaveEvent(VirtualQLCDNumber* self, QDragLeaveEvent* event) {

	self->QLCDNumber::dragLeaveEvent(event);
}

void QLCDNumber_virtualbase_dropEvent(VirtualQLCDNumber* self, QDropEvent* event) {

	self->QLCDNumber::dropEvent(event);
}

void QLCDNumber_virtualbase_showEvent(VirtualQLCDNumber* self, QShowEvent* event) {

	self->QLCDNumber::showEvent(event);
}

void QLCDNumber_virtualbase_hideEvent(VirtualQLCDNumber* self, QHideEvent* event) {

	self->QLCDNumber::hideEvent(event);
}

bool QLCDNumber_virtualbase_nativeEvent(VirtualQLCDNumber* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QLCDNumber::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QLCDNumber_virtualbase_metric(const VirtualQLCDNumber* self, int param1) {

	return self->QLCDNumber::metric(static_cast<VirtualQLCDNumber::PaintDeviceMetric>(param1));
}

void QLCDNumber_virtualbase_initPainter(const VirtualQLCDNumber* self, QPainter* painter) {

	self->QLCDNumber::initPainter(painter);
}

QPaintDevice* QLCDNumber_virtualbase_redirected(const VirtualQLCDNumber* self, QPoint* offset) {

	return self->QLCDNumber::redirected(offset);
}

QPainter* QLCDNumber_virtualbase_sharedPainter(const VirtualQLCDNumber* self) {

	return self->QLCDNumber::sharedPainter();
}

void QLCDNumber_virtualbase_inputMethodEvent(VirtualQLCDNumber* self, QInputMethodEvent* param1) {

	self->QLCDNumber::inputMethodEvent(param1);
}

QVariant* QLCDNumber_virtualbase_inputMethodQuery(const VirtualQLCDNumber* self, int param1) {

	return new QVariant(self->QLCDNumber::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QLCDNumber_virtualbase_focusNextPrevChild(VirtualQLCDNumber* self, bool next) {

	return self->QLCDNumber::focusNextPrevChild(next);
}

bool QLCDNumber_virtualbase_eventFilter(VirtualQLCDNumber* self, QObject* watched, QEvent* event) {

	return self->QLCDNumber::eventFilter(watched, event);
}

void QLCDNumber_virtualbase_timerEvent(VirtualQLCDNumber* self, QTimerEvent* event) {

	self->QLCDNumber::timerEvent(event);
}

void QLCDNumber_virtualbase_childEvent(VirtualQLCDNumber* self, QChildEvent* event) {

	self->QLCDNumber::childEvent(event);
}

void QLCDNumber_virtualbase_customEvent(VirtualQLCDNumber* self, QEvent* event) {

	self->QLCDNumber::customEvent(event);
}

void QLCDNumber_virtualbase_connectNotify(VirtualQLCDNumber* self, QMetaMethod* signal) {

	self->QLCDNumber::connectNotify(*signal);
}

void QLCDNumber_virtualbase_disconnectNotify(VirtualQLCDNumber* self, QMetaMethod* signal) {

	self->QLCDNumber::disconnectNotify(*signal);
}

const QMetaObject* QLCDNumber_staticMetaObject() { return &QLCDNumber::staticMetaObject; }

const QLCDNumber_VTable* QLCDNumber_vtbl(const VirtualQLCDNumber* self) { return self->vtbl; }
void* QLCDNumber_vdata(const VirtualQLCDNumber* self) { return self->vdata; }
void QLCDNumber_setVdata(VirtualQLCDNumber* self, void* vdata) { self->vdata = vdata; }

void QLCDNumber_protectedbase_drawFrame(VirtualQLCDNumber* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QLCDNumber_protectedbase_updateMicroFocus(VirtualQLCDNumber* self) {
	self->updateMicroFocus();
}

void QLCDNumber_protectedbase_create(VirtualQLCDNumber* self) {
	self->create();
}

void QLCDNumber_protectedbase_destroy(VirtualQLCDNumber* self) {
	self->destroy();
}

bool QLCDNumber_protectedbase_focusNextChild(VirtualQLCDNumber* self) {
	return self->focusNextChild();
}

bool QLCDNumber_protectedbase_focusPreviousChild(VirtualQLCDNumber* self) {
	return self->focusPreviousChild();
}

QObject* QLCDNumber_protectedbase_sender(const VirtualQLCDNumber* self) {
	return self->sender();
}

int QLCDNumber_protectedbase_senderSignalIndex(const VirtualQLCDNumber* self) {
	return self->senderSignalIndex();
}

int QLCDNumber_protectedbase_receivers(const VirtualQLCDNumber* self, const char* signal) {
	return self->receivers(signal);
}

bool QLCDNumber_protectedbase_isSignalConnected(const VirtualQLCDNumber* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QLCDNumber_delete(QLCDNumber* self) {
	delete self;
}

