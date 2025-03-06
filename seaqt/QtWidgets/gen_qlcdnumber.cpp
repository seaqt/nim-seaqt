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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQLCDNumber final : public QLCDNumber {
	struct QLCDNumber_VTable* vtbl;
public:

	VirtualQLCDNumber(struct QLCDNumber_VTable* vtbl, QWidget* parent): QLCDNumber(parent), vtbl(vtbl) {};
	VirtualQLCDNumber(struct QLCDNumber_VTable* vtbl): QLCDNumber(), vtbl(vtbl) {};
	VirtualQLCDNumber(struct QLCDNumber_VTable* vtbl, uint numDigits): QLCDNumber(numDigits), vtbl(vtbl) {};
	VirtualQLCDNumber(struct QLCDNumber_VTable* vtbl, uint numDigits, QWidget* parent): QLCDNumber(numDigits, parent), vtbl(vtbl) {};

	virtual ~VirtualQLCDNumber() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLCDNumber::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QLCDNumber_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLCDNumber::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QLCDNumber_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLCDNumber::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QLCDNumber::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QLCDNumber_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QLCDNumber::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QLCDNumber::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QLCDNumber::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QLCDNumber::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QLCDNumber::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QLCDNumber::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QLCDNumber::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QLCDNumber_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLCDNumber::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLCDNumber::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QLCDNumber::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QLCDNumber_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QLCDNumber::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QLCDNumber::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QLCDNumber::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QLCDNumber::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QLCDNumber::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QLCDNumber::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QLCDNumber::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QLCDNumber::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QLCDNumber::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QLCDNumber::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QLCDNumber::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QLCDNumber::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QLCDNumber::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QLCDNumber::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QLCDNumber::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QLCDNumber::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QLCDNumber::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QLCDNumber::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QLCDNumber::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QLCDNumber::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QLCDNumber::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QLCDNumber::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QLCDNumber::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QLCDNumber::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLCDNumber_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QLCDNumber::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QLCDNumber::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QLCDNumber_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QLCDNumber::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QLCDNumber_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QLCDNumber::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QLCDNumber::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QLCDNumber_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QLCDNumber::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLCDNumber::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLCDNumber_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLCDNumber::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLCDNumber::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLCDNumber::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLCDNumber::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLCDNumber::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QLCDNumber_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QLCDNumber_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QLCDNumber_protectedbase_updateMicroFocus(void* self);
	friend void QLCDNumber_protectedbase_create(void* self);
	friend void QLCDNumber_protectedbase_destroy(void* self);
	friend bool QLCDNumber_protectedbase_focusNextChild(void* self);
	friend bool QLCDNumber_protectedbase_focusPreviousChild(void* self);
	friend QObject* QLCDNumber_protectedbase_sender(const void* self);
	friend int QLCDNumber_protectedbase_senderSignalIndex(const void* self);
	friend int QLCDNumber_protectedbase_receivers(const void* self, const char* signal);
	friend bool QLCDNumber_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QLCDNumber* QLCDNumber_new(struct QLCDNumber_VTable* vtbl, QWidget* parent) {
	return new VirtualQLCDNumber(vtbl, parent);
}

QLCDNumber* QLCDNumber_new2(struct QLCDNumber_VTable* vtbl) {
	return new VirtualQLCDNumber(vtbl);
}

QLCDNumber* QLCDNumber_new3(struct QLCDNumber_VTable* vtbl, unsigned int numDigits) {
	return new VirtualQLCDNumber(vtbl, static_cast<uint>(numDigits));
}

QLCDNumber* QLCDNumber_new4(struct QLCDNumber_VTable* vtbl, unsigned int numDigits, QWidget* parent) {
	return new VirtualQLCDNumber(vtbl, static_cast<uint>(numDigits), parent);
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

void QLCDNumber_connect_overflow(QLCDNumber* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

QMetaObject* QLCDNumber_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::metaObject();

}

void* QLCDNumber_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::qt_metacast(param1);

}

int QLCDNumber_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QLCDNumber_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQLCDNumber*)(self) )->QLCDNumber::sizeHint());

}

bool QLCDNumber_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::event(e);

}

void QLCDNumber_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::paintEvent(param1);

}

void QLCDNumber_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::changeEvent(param1);

}

void QLCDNumber_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {

	( (const VirtualQLCDNumber*)(self) )->QLCDNumber::initStyleOption(option);

}

int QLCDNumber_virtualbase_devType(const void* self) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::devType();

}

void QLCDNumber_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::setVisible(visible);

}

QSize* QLCDNumber_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQLCDNumber*)(self) )->QLCDNumber::minimumSizeHint());

}

int QLCDNumber_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::heightForWidth(static_cast<int>(param1));

}

bool QLCDNumber_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::hasHeightForWidth();

}

QPaintEngine* QLCDNumber_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::paintEngine();

}

void QLCDNumber_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::mousePressEvent(event);

}

void QLCDNumber_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::mouseReleaseEvent(event);

}

void QLCDNumber_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::mouseDoubleClickEvent(event);

}

void QLCDNumber_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::mouseMoveEvent(event);

}

void QLCDNumber_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::wheelEvent(event);

}

void QLCDNumber_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::keyPressEvent(event);

}

void QLCDNumber_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::keyReleaseEvent(event);

}

void QLCDNumber_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::focusInEvent(event);

}

void QLCDNumber_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::focusOutEvent(event);

}

void QLCDNumber_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::enterEvent(event);

}

void QLCDNumber_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::leaveEvent(event);

}

void QLCDNumber_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::moveEvent(event);

}

void QLCDNumber_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::resizeEvent(event);

}

void QLCDNumber_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::closeEvent(event);

}

void QLCDNumber_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::contextMenuEvent(event);

}

void QLCDNumber_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::tabletEvent(event);

}

void QLCDNumber_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::actionEvent(event);

}

void QLCDNumber_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::dragEnterEvent(event);

}

void QLCDNumber_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::dragMoveEvent(event);

}

void QLCDNumber_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::dragLeaveEvent(event);

}

void QLCDNumber_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::dropEvent(event);

}

void QLCDNumber_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::showEvent(event);

}

void QLCDNumber_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::hideEvent(event);

}

bool QLCDNumber_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QLCDNumber_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::metric(static_cast<VirtualQLCDNumber::PaintDeviceMetric>(param1));

}

void QLCDNumber_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQLCDNumber*)(self) )->QLCDNumber::initPainter(painter);

}

QPaintDevice* QLCDNumber_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::redirected(offset);

}

QPainter* QLCDNumber_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQLCDNumber*)(self) )->QLCDNumber::sharedPainter();

}

void QLCDNumber_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::inputMethodEvent(param1);

}

QVariant* QLCDNumber_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQLCDNumber*)(self) )->QLCDNumber::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QLCDNumber_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::focusNextPrevChild(next);

}

bool QLCDNumber_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQLCDNumber*)(self) )->QLCDNumber::eventFilter(watched, event);

}

void QLCDNumber_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::timerEvent(event);

}

void QLCDNumber_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::childEvent(event);

}

void QLCDNumber_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::customEvent(event);

}

void QLCDNumber_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::connectNotify(*signal);

}

void QLCDNumber_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQLCDNumber*)(self) )->QLCDNumber::disconnectNotify(*signal);

}

const QMetaObject* QLCDNumber_staticMetaObject() { return &QLCDNumber::staticMetaObject; }
void QLCDNumber_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	self_cast->drawFrame(param1);

}

void QLCDNumber_protectedbase_updateMicroFocus(void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	self_cast->updateMicroFocus();

}

void QLCDNumber_protectedbase_create(void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	self_cast->create();

}

void QLCDNumber_protectedbase_destroy(void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	self_cast->destroy();

}

bool QLCDNumber_protectedbase_focusNextChild(void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->focusNextChild();

}

bool QLCDNumber_protectedbase_focusPreviousChild(void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QLCDNumber_protectedbase_sender(const void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->sender();

}

int QLCDNumber_protectedbase_senderSignalIndex(const void* self) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QLCDNumber_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->receivers(signal);

}

bool QLCDNumber_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQLCDNumber* self_cast = static_cast<VirtualQLCDNumber*>( (QLCDNumber*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QLCDNumber_delete(QLCDNumber* self) {
	delete self;
}

