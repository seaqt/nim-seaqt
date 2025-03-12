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
#include <QRect>
#include <QResizeEvent>
#include <QRubberBand>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionRubberBand>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qrubberband.h>
#include "gen_qrubberband.h"
class VirtualQRubberBand final : public QRubberBand {
	const QRubberBand_VTable* vtbl;
	void* vdata;
public:
	friend const QRubberBand_VTable* QRubberBand_vtbl(const VirtualQRubberBand* self);
	friend void* QRubberBand_vdata(const VirtualQRubberBand* self);
	friend void QRubberBand_setVdata(VirtualQRubberBand* self, void* vdata);

	VirtualQRubberBand(const QRubberBand_VTable* vtbl, void* vdata, QRubberBand::Shape param1): QRubberBand(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQRubberBand(const QRubberBand_VTable* vtbl, void* vdata, QRubberBand::Shape param1, QWidget* param2): QRubberBand(param1, param2), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQRubberBand() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRubberBand::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QRubberBand_virtualbase_metaObject(const VirtualQRubberBand* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRubberBand::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QRubberBand_virtualbase_metacast(VirtualQRubberBand* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRubberBand::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_metacall(VirtualQRubberBand* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QRubberBand::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_event(VirtualQRubberBand* self, QEvent* e);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QRubberBand::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_paintEvent(VirtualQRubberBand* self, QPaintEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QRubberBand::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_changeEvent(VirtualQRubberBand* self, QEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QRubberBand::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_showEvent(VirtualQRubberBand* self, QShowEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QRubberBand::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_resizeEvent(VirtualQRubberBand* self, QResizeEvent* param1);

	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QRubberBand::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_moveEvent(VirtualQRubberBand* self, QMoveEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRubberBand::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_devType(const VirtualQRubberBand* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QRubberBand::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QRubberBand_virtualbase_setVisible(VirtualQRubberBand* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QRubberBand::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRubberBand_virtualbase_sizeHint(const VirtualQRubberBand* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QRubberBand::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QRubberBand_virtualbase_minimumSizeHint(const VirtualQRubberBand* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QRubberBand::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_heightForWidth(const VirtualQRubberBand* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QRubberBand::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_hasHeightForWidth(const VirtualQRubberBand* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QRubberBand::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QRubberBand_virtualbase_paintEngine(const VirtualQRubberBand* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QRubberBand::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_mousePressEvent(VirtualQRubberBand* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRubberBand::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseReleaseEvent(VirtualQRubberBand* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRubberBand::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseDoubleClickEvent(VirtualQRubberBand* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRubberBand::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_mouseMoveEvent(VirtualQRubberBand* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QRubberBand::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_wheelEvent(VirtualQRubberBand* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QRubberBand::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_keyPressEvent(VirtualQRubberBand* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRubberBand::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_keyReleaseEvent(VirtualQRubberBand* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QRubberBand::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_focusInEvent(VirtualQRubberBand* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QRubberBand::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_focusOutEvent(VirtualQRubberBand* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QRubberBand::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_enterEvent(VirtualQRubberBand* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QRubberBand::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_leaveEvent(VirtualQRubberBand* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QRubberBand::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_closeEvent(VirtualQRubberBand* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QRubberBand::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_contextMenuEvent(VirtualQRubberBand* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QRubberBand::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_tabletEvent(VirtualQRubberBand* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QRubberBand::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_actionEvent(VirtualQRubberBand* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QRubberBand::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragEnterEvent(VirtualQRubberBand* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QRubberBand::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragMoveEvent(VirtualQRubberBand* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QRubberBand::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_dragLeaveEvent(VirtualQRubberBand* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QRubberBand::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_dropEvent(VirtualQRubberBand* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QRubberBand::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_hideEvent(VirtualQRubberBand* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRubberBand::nativeEvent(eventType, message, result);
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

	friend bool QRubberBand_virtualbase_nativeEvent(VirtualQRubberBand* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QRubberBand::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRubberBand_virtualbase_metric(const VirtualQRubberBand* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRubberBand::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QRubberBand_virtualbase_initPainter(const VirtualQRubberBand* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QRubberBand::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRubberBand_virtualbase_redirected(const VirtualQRubberBand* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRubberBand::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QRubberBand_virtualbase_sharedPainter(const VirtualQRubberBand* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QRubberBand::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_inputMethodEvent(VirtualQRubberBand* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QRubberBand::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QRubberBand_virtualbase_inputMethodQuery(const VirtualQRubberBand* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QRubberBand::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_focusNextPrevChild(VirtualQRubberBand* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRubberBand::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRubberBand_virtualbase_eventFilter(VirtualQRubberBand* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRubberBand::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_timerEvent(VirtualQRubberBand* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRubberBand::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_childEvent(VirtualQRubberBand* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRubberBand::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QRubberBand_virtualbase_customEvent(VirtualQRubberBand* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRubberBand::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QRubberBand_virtualbase_connectNotify(VirtualQRubberBand* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRubberBand::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QRubberBand_virtualbase_disconnectNotify(VirtualQRubberBand* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QRubberBand_protectedbase_initStyleOption(const VirtualQRubberBand* self, QStyleOptionRubberBand* option);
	friend void QRubberBand_protectedbase_updateMicroFocus(VirtualQRubberBand* self);
	friend void QRubberBand_protectedbase_create(VirtualQRubberBand* self);
	friend void QRubberBand_protectedbase_destroy(VirtualQRubberBand* self);
	friend bool QRubberBand_protectedbase_focusNextChild(VirtualQRubberBand* self);
	friend bool QRubberBand_protectedbase_focusPreviousChild(VirtualQRubberBand* self);
	friend QObject* QRubberBand_protectedbase_sender(const VirtualQRubberBand* self);
	friend int QRubberBand_protectedbase_senderSignalIndex(const VirtualQRubberBand* self);
	friend int QRubberBand_protectedbase_receivers(const VirtualQRubberBand* self, const char* signal);
	friend bool QRubberBand_protectedbase_isSignalConnected(const VirtualQRubberBand* self, QMetaMethod* signal);
};

VirtualQRubberBand* QRubberBand_new(const QRubberBand_VTable* vtbl, void* vdata, int param1) {
	return new VirtualQRubberBand(vtbl, vdata, static_cast<QRubberBand::Shape>(param1));
}

VirtualQRubberBand* QRubberBand_new2(const QRubberBand_VTable* vtbl, void* vdata, int param1, QWidget* param2) {
	return new VirtualQRubberBand(vtbl, vdata, static_cast<QRubberBand::Shape>(param1), param2);
}

void QRubberBand_virtbase(QRubberBand* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QRubberBand_metaObject(const QRubberBand* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRubberBand_metacast(QRubberBand* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRubberBand_metacall(QRubberBand* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRubberBand_tr(const char* s) {
	QString _ret = QRubberBand::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRubberBand_trUtf8(const char* s) {
	QString _ret = QRubberBand::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRubberBand_shape(const QRubberBand* self) {
	QRubberBand::Shape _ret = self->shape();
	return static_cast<int>(_ret);
}

void QRubberBand_setGeometry(QRubberBand* self, QRect* r) {
	self->setGeometry(*r);
}

void QRubberBand_setGeometry2(QRubberBand* self, int x, int y, int w, int h) {
	self->setGeometry(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
}

void QRubberBand_move(QRubberBand* self, int x, int y) {
	self->move(static_cast<int>(x), static_cast<int>(y));
}

void QRubberBand_moveWithQPoint(QRubberBand* self, QPoint* p) {
	self->move(*p);
}

void QRubberBand_resize(QRubberBand* self, int w, int h) {
	self->resize(static_cast<int>(w), static_cast<int>(h));
}

void QRubberBand_resizeWithQSize(QRubberBand* self, QSize* s) {
	self->resize(*s);
}

struct miqt_string QRubberBand_tr2(const char* s, const char* c) {
	QString _ret = QRubberBand::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRubberBand_tr3(const char* s, const char* c, int n) {
	QString _ret = QRubberBand::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRubberBand_trUtf82(const char* s, const char* c) {
	QString _ret = QRubberBand::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRubberBand_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRubberBand::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRubberBand_virtualbase_metaObject(const VirtualQRubberBand* self) {

	return (QMetaObject*) self->QRubberBand::metaObject();
}

void* QRubberBand_virtualbase_metacast(VirtualQRubberBand* self, const char* param1) {

	return self->QRubberBand::qt_metacast(param1);
}

int QRubberBand_virtualbase_metacall(VirtualQRubberBand* self, int param1, int param2, void** param3) {

	return self->QRubberBand::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QRubberBand_virtualbase_event(VirtualQRubberBand* self, QEvent* e) {

	return self->QRubberBand::event(e);
}

void QRubberBand_virtualbase_paintEvent(VirtualQRubberBand* self, QPaintEvent* param1) {

	self->QRubberBand::paintEvent(param1);
}

void QRubberBand_virtualbase_changeEvent(VirtualQRubberBand* self, QEvent* param1) {

	self->QRubberBand::changeEvent(param1);
}

void QRubberBand_virtualbase_showEvent(VirtualQRubberBand* self, QShowEvent* param1) {

	self->QRubberBand::showEvent(param1);
}

void QRubberBand_virtualbase_resizeEvent(VirtualQRubberBand* self, QResizeEvent* param1) {

	self->QRubberBand::resizeEvent(param1);
}

void QRubberBand_virtualbase_moveEvent(VirtualQRubberBand* self, QMoveEvent* param1) {

	self->QRubberBand::moveEvent(param1);
}

int QRubberBand_virtualbase_devType(const VirtualQRubberBand* self) {

	return self->QRubberBand::devType();
}

void QRubberBand_virtualbase_setVisible(VirtualQRubberBand* self, bool visible) {

	self->QRubberBand::setVisible(visible);
}

QSize* QRubberBand_virtualbase_sizeHint(const VirtualQRubberBand* self) {

	return new QSize(self->QRubberBand::sizeHint());
}

QSize* QRubberBand_virtualbase_minimumSizeHint(const VirtualQRubberBand* self) {

	return new QSize(self->QRubberBand::minimumSizeHint());
}

int QRubberBand_virtualbase_heightForWidth(const VirtualQRubberBand* self, int param1) {

	return self->QRubberBand::heightForWidth(static_cast<int>(param1));
}

bool QRubberBand_virtualbase_hasHeightForWidth(const VirtualQRubberBand* self) {

	return self->QRubberBand::hasHeightForWidth();
}

QPaintEngine* QRubberBand_virtualbase_paintEngine(const VirtualQRubberBand* self) {

	return self->QRubberBand::paintEngine();
}

void QRubberBand_virtualbase_mousePressEvent(VirtualQRubberBand* self, QMouseEvent* event) {

	self->QRubberBand::mousePressEvent(event);
}

void QRubberBand_virtualbase_mouseReleaseEvent(VirtualQRubberBand* self, QMouseEvent* event) {

	self->QRubberBand::mouseReleaseEvent(event);
}

void QRubberBand_virtualbase_mouseDoubleClickEvent(VirtualQRubberBand* self, QMouseEvent* event) {

	self->QRubberBand::mouseDoubleClickEvent(event);
}

void QRubberBand_virtualbase_mouseMoveEvent(VirtualQRubberBand* self, QMouseEvent* event) {

	self->QRubberBand::mouseMoveEvent(event);
}

void QRubberBand_virtualbase_wheelEvent(VirtualQRubberBand* self, QWheelEvent* event) {

	self->QRubberBand::wheelEvent(event);
}

void QRubberBand_virtualbase_keyPressEvent(VirtualQRubberBand* self, QKeyEvent* event) {

	self->QRubberBand::keyPressEvent(event);
}

void QRubberBand_virtualbase_keyReleaseEvent(VirtualQRubberBand* self, QKeyEvent* event) {

	self->QRubberBand::keyReleaseEvent(event);
}

void QRubberBand_virtualbase_focusInEvent(VirtualQRubberBand* self, QFocusEvent* event) {

	self->QRubberBand::focusInEvent(event);
}

void QRubberBand_virtualbase_focusOutEvent(VirtualQRubberBand* self, QFocusEvent* event) {

	self->QRubberBand::focusOutEvent(event);
}

void QRubberBand_virtualbase_enterEvent(VirtualQRubberBand* self, QEvent* event) {

	self->QRubberBand::enterEvent(event);
}

void QRubberBand_virtualbase_leaveEvent(VirtualQRubberBand* self, QEvent* event) {

	self->QRubberBand::leaveEvent(event);
}

void QRubberBand_virtualbase_closeEvent(VirtualQRubberBand* self, QCloseEvent* event) {

	self->QRubberBand::closeEvent(event);
}

void QRubberBand_virtualbase_contextMenuEvent(VirtualQRubberBand* self, QContextMenuEvent* event) {

	self->QRubberBand::contextMenuEvent(event);
}

void QRubberBand_virtualbase_tabletEvent(VirtualQRubberBand* self, QTabletEvent* event) {

	self->QRubberBand::tabletEvent(event);
}

void QRubberBand_virtualbase_actionEvent(VirtualQRubberBand* self, QActionEvent* event) {

	self->QRubberBand::actionEvent(event);
}

void QRubberBand_virtualbase_dragEnterEvent(VirtualQRubberBand* self, QDragEnterEvent* event) {

	self->QRubberBand::dragEnterEvent(event);
}

void QRubberBand_virtualbase_dragMoveEvent(VirtualQRubberBand* self, QDragMoveEvent* event) {

	self->QRubberBand::dragMoveEvent(event);
}

void QRubberBand_virtualbase_dragLeaveEvent(VirtualQRubberBand* self, QDragLeaveEvent* event) {

	self->QRubberBand::dragLeaveEvent(event);
}

void QRubberBand_virtualbase_dropEvent(VirtualQRubberBand* self, QDropEvent* event) {

	self->QRubberBand::dropEvent(event);
}

void QRubberBand_virtualbase_hideEvent(VirtualQRubberBand* self, QHideEvent* event) {

	self->QRubberBand::hideEvent(event);
}

bool QRubberBand_virtualbase_nativeEvent(VirtualQRubberBand* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QRubberBand::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QRubberBand_virtualbase_metric(const VirtualQRubberBand* self, int param1) {

	return self->QRubberBand::metric(static_cast<VirtualQRubberBand::PaintDeviceMetric>(param1));
}

void QRubberBand_virtualbase_initPainter(const VirtualQRubberBand* self, QPainter* painter) {

	self->QRubberBand::initPainter(painter);
}

QPaintDevice* QRubberBand_virtualbase_redirected(const VirtualQRubberBand* self, QPoint* offset) {

	return self->QRubberBand::redirected(offset);
}

QPainter* QRubberBand_virtualbase_sharedPainter(const VirtualQRubberBand* self) {

	return self->QRubberBand::sharedPainter();
}

void QRubberBand_virtualbase_inputMethodEvent(VirtualQRubberBand* self, QInputMethodEvent* param1) {

	self->QRubberBand::inputMethodEvent(param1);
}

QVariant* QRubberBand_virtualbase_inputMethodQuery(const VirtualQRubberBand* self, int param1) {

	return new QVariant(self->QRubberBand::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QRubberBand_virtualbase_focusNextPrevChild(VirtualQRubberBand* self, bool next) {

	return self->QRubberBand::focusNextPrevChild(next);
}

bool QRubberBand_virtualbase_eventFilter(VirtualQRubberBand* self, QObject* watched, QEvent* event) {

	return self->QRubberBand::eventFilter(watched, event);
}

void QRubberBand_virtualbase_timerEvent(VirtualQRubberBand* self, QTimerEvent* event) {

	self->QRubberBand::timerEvent(event);
}

void QRubberBand_virtualbase_childEvent(VirtualQRubberBand* self, QChildEvent* event) {

	self->QRubberBand::childEvent(event);
}

void QRubberBand_virtualbase_customEvent(VirtualQRubberBand* self, QEvent* event) {

	self->QRubberBand::customEvent(event);
}

void QRubberBand_virtualbase_connectNotify(VirtualQRubberBand* self, QMetaMethod* signal) {

	self->QRubberBand::connectNotify(*signal);
}

void QRubberBand_virtualbase_disconnectNotify(VirtualQRubberBand* self, QMetaMethod* signal) {

	self->QRubberBand::disconnectNotify(*signal);
}

const QMetaObject* QRubberBand_staticMetaObject() { return &QRubberBand::staticMetaObject; }

const QRubberBand_VTable* QRubberBand_vtbl(const VirtualQRubberBand* self) { return self->vtbl; }
void* QRubberBand_vdata(const VirtualQRubberBand* self) { return self->vdata; }
void QRubberBand_setVdata(VirtualQRubberBand* self, void* vdata) { self->vdata = vdata; }

void QRubberBand_protectedbase_initStyleOption(const VirtualQRubberBand* self, QStyleOptionRubberBand* option) {
	self->initStyleOption(option);
}

void QRubberBand_protectedbase_updateMicroFocus(VirtualQRubberBand* self) {
	self->updateMicroFocus();
}

void QRubberBand_protectedbase_create(VirtualQRubberBand* self) {
	self->create();
}

void QRubberBand_protectedbase_destroy(VirtualQRubberBand* self) {
	self->destroy();
}

bool QRubberBand_protectedbase_focusNextChild(VirtualQRubberBand* self) {
	return self->focusNextChild();
}

bool QRubberBand_protectedbase_focusPreviousChild(VirtualQRubberBand* self) {
	return self->focusPreviousChild();
}

QObject* QRubberBand_protectedbase_sender(const VirtualQRubberBand* self) {
	return self->sender();
}

int QRubberBand_protectedbase_senderSignalIndex(const VirtualQRubberBand* self) {
	return self->senderSignalIndex();
}

int QRubberBand_protectedbase_receivers(const VirtualQRubberBand* self, const char* signal) {
	return self->receivers(signal);
}

bool QRubberBand_protectedbase_isSignalConnected(const VirtualQRubberBand* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QRubberBand_delete(QRubberBand* self) {
	delete self;
}

