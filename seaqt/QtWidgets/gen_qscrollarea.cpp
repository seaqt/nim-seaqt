#include <QAbstractScrollArea>
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
#include <QMargins>
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
#include <QScrollArea>
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
#include <qscrollarea.h>
#include "gen_qscrollarea.h"
class VirtualQScrollArea final : public QScrollArea {
	const QScrollArea_VTable* vtbl;
	void* vdata;
public:
	friend const QScrollArea_VTable* QScrollArea_vtbl(const VirtualQScrollArea* self);
	friend void* QScrollArea_vdata(const VirtualQScrollArea* self);
	friend void QScrollArea_setVdata(VirtualQScrollArea* self, void* vdata);

	VirtualQScrollArea(const QScrollArea_VTable* vtbl, void* vdata, QWidget* parent): QScrollArea(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQScrollArea(const QScrollArea_VTable* vtbl, void* vdata): QScrollArea(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQScrollArea() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScrollArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QScrollArea_virtualbase_metaObject(const VirtualQScrollArea* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScrollArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QScrollArea_virtualbase_metacast(VirtualQScrollArea* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScrollArea::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_metacall(VirtualQScrollArea* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QScrollArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QScrollArea_virtualbase_sizeHint(const VirtualQScrollArea* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QScrollArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_focusNextPrevChild(VirtualQScrollArea* self, bool next);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QScrollArea::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_event(VirtualQScrollArea* self, QEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QScrollArea::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_eventFilter(VirtualQScrollArea* self, QObject* param1, QEvent* param2);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QScrollArea::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_resizeEvent(VirtualQScrollArea* self, QResizeEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QScrollArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QScrollArea_virtualbase_scrollContentsBy(VirtualQScrollArea* self, int dx, int dy);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QScrollArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QScrollArea_virtualbase_viewportSizeHint(const VirtualQScrollArea* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QScrollArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QScrollArea_virtualbase_minimumSizeHint(const VirtualQScrollArea* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QScrollArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QScrollArea_virtualbase_setupViewport(VirtualQScrollArea* self, QWidget* viewport);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QScrollArea::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_viewportEvent(VirtualQScrollArea* self, QEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QScrollArea::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_paintEvent(VirtualQScrollArea* self, QPaintEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QScrollArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_mousePressEvent(VirtualQScrollArea* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QScrollArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseReleaseEvent(VirtualQScrollArea* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QScrollArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQScrollArea* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QScrollArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseMoveEvent(VirtualQScrollArea* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QScrollArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_wheelEvent(VirtualQScrollArea* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QScrollArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_contextMenuEvent(VirtualQScrollArea* self, QContextMenuEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QScrollArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragEnterEvent(VirtualQScrollArea* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QScrollArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragMoveEvent(VirtualQScrollArea* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QScrollArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragLeaveEvent(VirtualQScrollArea* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QScrollArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_dropEvent(VirtualQScrollArea* self, QDropEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QScrollArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_keyPressEvent(VirtualQScrollArea* self, QKeyEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QScrollArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_changeEvent(VirtualQScrollArea* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QScrollArea::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_devType(const VirtualQScrollArea* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QScrollArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QScrollArea_virtualbase_setVisible(VirtualQScrollArea* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QScrollArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_heightForWidth(const VirtualQScrollArea* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QScrollArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_hasHeightForWidth(const VirtualQScrollArea* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QScrollArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QScrollArea_virtualbase_paintEngine(const VirtualQScrollArea* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QScrollArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_keyReleaseEvent(VirtualQScrollArea* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QScrollArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_focusInEvent(VirtualQScrollArea* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QScrollArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_focusOutEvent(VirtualQScrollArea* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QScrollArea::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_enterEvent(VirtualQScrollArea* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QScrollArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_leaveEvent(VirtualQScrollArea* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QScrollArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_moveEvent(VirtualQScrollArea* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QScrollArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_closeEvent(VirtualQScrollArea* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QScrollArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_tabletEvent(VirtualQScrollArea* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QScrollArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_actionEvent(VirtualQScrollArea* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QScrollArea::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_showEvent(VirtualQScrollArea* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QScrollArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_hideEvent(VirtualQScrollArea* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QScrollArea::nativeEvent(eventType, message, result);
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

	friend bool QScrollArea_virtualbase_nativeEvent(VirtualQScrollArea* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QScrollArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_metric(const VirtualQScrollArea* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QScrollArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QScrollArea_virtualbase_initPainter(const VirtualQScrollArea* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QScrollArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QScrollArea_virtualbase_redirected(const VirtualQScrollArea* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QScrollArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QScrollArea_virtualbase_sharedPainter(const VirtualQScrollArea* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QScrollArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_inputMethodEvent(VirtualQScrollArea* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QScrollArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QScrollArea_virtualbase_inputMethodQuery(const VirtualQScrollArea* self, int param1);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScrollArea::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_timerEvent(VirtualQScrollArea* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScrollArea::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_childEvent(VirtualQScrollArea* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScrollArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QScrollArea_virtualbase_customEvent(VirtualQScrollArea* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScrollArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QScrollArea_virtualbase_connectNotify(VirtualQScrollArea* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScrollArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QScrollArea_virtualbase_disconnectNotify(VirtualQScrollArea* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QScrollArea_protectedbase_setViewportMargins(VirtualQScrollArea* self, int left, int top, int right, int bottom);
	friend QMargins* QScrollArea_protectedbase_viewportMargins(const VirtualQScrollArea* self);
	friend void QScrollArea_protectedbase_drawFrame(VirtualQScrollArea* self, QPainter* param1);
	friend void QScrollArea_protectedbase_initStyleOption(const VirtualQScrollArea* self, QStyleOptionFrame* option);
	friend void QScrollArea_protectedbase_updateMicroFocus(VirtualQScrollArea* self);
	friend void QScrollArea_protectedbase_create(VirtualQScrollArea* self);
	friend void QScrollArea_protectedbase_destroy(VirtualQScrollArea* self);
	friend bool QScrollArea_protectedbase_focusNextChild(VirtualQScrollArea* self);
	friend bool QScrollArea_protectedbase_focusPreviousChild(VirtualQScrollArea* self);
	friend QObject* QScrollArea_protectedbase_sender(const VirtualQScrollArea* self);
	friend int QScrollArea_protectedbase_senderSignalIndex(const VirtualQScrollArea* self);
	friend int QScrollArea_protectedbase_receivers(const VirtualQScrollArea* self, const char* signal);
	friend bool QScrollArea_protectedbase_isSignalConnected(const VirtualQScrollArea* self, QMetaMethod* signal);
};

VirtualQScrollArea* QScrollArea_new(const QScrollArea_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQScrollArea(vtbl, vdata, parent);
}

VirtualQScrollArea* QScrollArea_new2(const QScrollArea_VTable* vtbl, void* vdata) {
	return new VirtualQScrollArea(vtbl, vdata);
}

void QScrollArea_virtbase(QScrollArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QScrollArea_metaObject(const QScrollArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScrollArea_metacast(QScrollArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScrollArea_metacall(QScrollArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScrollArea_tr(const char* s) {
	QString _ret = QScrollArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf8(const char* s) {
	QString _ret = QScrollArea::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QScrollArea_widget(const QScrollArea* self) {
	return self->widget();
}

void QScrollArea_setWidget(QScrollArea* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QScrollArea_takeWidget(QScrollArea* self) {
	return self->takeWidget();
}

bool QScrollArea_widgetResizable(const QScrollArea* self) {
	return self->widgetResizable();
}

void QScrollArea_setWidgetResizable(QScrollArea* self, bool resizable) {
	self->setWidgetResizable(resizable);
}

QSize* QScrollArea_sizeHint(const QScrollArea* self) {
	return new QSize(self->sizeHint());
}

bool QScrollArea_focusNextPrevChild(QScrollArea* self, bool next) {
	return self->focusNextPrevChild(next);
}

int QScrollArea_alignment(const QScrollArea* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QScrollArea_setAlignment(QScrollArea* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void QScrollArea_ensureVisible(QScrollArea* self, int x, int y) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y));
}

void QScrollArea_ensureWidgetVisible(QScrollArea* self, QWidget* childWidget) {
	self->ensureWidgetVisible(childWidget);
}

struct miqt_string QScrollArea_tr2(const char* s, const char* c) {
	QString _ret = QScrollArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QScrollArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf82(const char* s, const char* c) {
	QString _ret = QScrollArea::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QScrollArea::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QScrollArea_ensureVisible3(QScrollArea* self, int x, int y, int xmargin) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y), static_cast<int>(xmargin));
}

void QScrollArea_ensureVisible4(QScrollArea* self, int x, int y, int xmargin, int ymargin) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y), static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QScrollArea_ensureWidgetVisible2(QScrollArea* self, QWidget* childWidget, int xmargin) {
	self->ensureWidgetVisible(childWidget, static_cast<int>(xmargin));
}

void QScrollArea_ensureWidgetVisible3(QScrollArea* self, QWidget* childWidget, int xmargin, int ymargin) {
	self->ensureWidgetVisible(childWidget, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

QMetaObject* QScrollArea_virtualbase_metaObject(const VirtualQScrollArea* self) {

	return (QMetaObject*) self->QScrollArea::metaObject();
}

void* QScrollArea_virtualbase_metacast(VirtualQScrollArea* self, const char* param1) {

	return self->QScrollArea::qt_metacast(param1);
}

int QScrollArea_virtualbase_metacall(VirtualQScrollArea* self, int param1, int param2, void** param3) {

	return self->QScrollArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QScrollArea_virtualbase_sizeHint(const VirtualQScrollArea* self) {

	return new QSize(self->QScrollArea::sizeHint());
}

bool QScrollArea_virtualbase_focusNextPrevChild(VirtualQScrollArea* self, bool next) {

	return self->QScrollArea::focusNextPrevChild(next);
}

bool QScrollArea_virtualbase_event(VirtualQScrollArea* self, QEvent* param1) {

	return self->QScrollArea::event(param1);
}

bool QScrollArea_virtualbase_eventFilter(VirtualQScrollArea* self, QObject* param1, QEvent* param2) {

	return self->QScrollArea::eventFilter(param1, param2);
}

void QScrollArea_virtualbase_resizeEvent(VirtualQScrollArea* self, QResizeEvent* param1) {

	self->QScrollArea::resizeEvent(param1);
}

void QScrollArea_virtualbase_scrollContentsBy(VirtualQScrollArea* self, int dx, int dy) {

	self->QScrollArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

QSize* QScrollArea_virtualbase_viewportSizeHint(const VirtualQScrollArea* self) {

	return new QSize(self->QScrollArea::viewportSizeHint());
}

QSize* QScrollArea_virtualbase_minimumSizeHint(const VirtualQScrollArea* self) {

	return new QSize(self->QScrollArea::minimumSizeHint());
}

void QScrollArea_virtualbase_setupViewport(VirtualQScrollArea* self, QWidget* viewport) {

	self->QScrollArea::setupViewport(viewport);
}

bool QScrollArea_virtualbase_viewportEvent(VirtualQScrollArea* self, QEvent* param1) {

	return self->QScrollArea::viewportEvent(param1);
}

void QScrollArea_virtualbase_paintEvent(VirtualQScrollArea* self, QPaintEvent* param1) {

	self->QScrollArea::paintEvent(param1);
}

void QScrollArea_virtualbase_mousePressEvent(VirtualQScrollArea* self, QMouseEvent* param1) {

	self->QScrollArea::mousePressEvent(param1);
}

void QScrollArea_virtualbase_mouseReleaseEvent(VirtualQScrollArea* self, QMouseEvent* param1) {

	self->QScrollArea::mouseReleaseEvent(param1);
}

void QScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQScrollArea* self, QMouseEvent* param1) {

	self->QScrollArea::mouseDoubleClickEvent(param1);
}

void QScrollArea_virtualbase_mouseMoveEvent(VirtualQScrollArea* self, QMouseEvent* param1) {

	self->QScrollArea::mouseMoveEvent(param1);
}

void QScrollArea_virtualbase_wheelEvent(VirtualQScrollArea* self, QWheelEvent* param1) {

	self->QScrollArea::wheelEvent(param1);
}

void QScrollArea_virtualbase_contextMenuEvent(VirtualQScrollArea* self, QContextMenuEvent* param1) {

	self->QScrollArea::contextMenuEvent(param1);
}

void QScrollArea_virtualbase_dragEnterEvent(VirtualQScrollArea* self, QDragEnterEvent* param1) {

	self->QScrollArea::dragEnterEvent(param1);
}

void QScrollArea_virtualbase_dragMoveEvent(VirtualQScrollArea* self, QDragMoveEvent* param1) {

	self->QScrollArea::dragMoveEvent(param1);
}

void QScrollArea_virtualbase_dragLeaveEvent(VirtualQScrollArea* self, QDragLeaveEvent* param1) {

	self->QScrollArea::dragLeaveEvent(param1);
}

void QScrollArea_virtualbase_dropEvent(VirtualQScrollArea* self, QDropEvent* param1) {

	self->QScrollArea::dropEvent(param1);
}

void QScrollArea_virtualbase_keyPressEvent(VirtualQScrollArea* self, QKeyEvent* param1) {

	self->QScrollArea::keyPressEvent(param1);
}

void QScrollArea_virtualbase_changeEvent(VirtualQScrollArea* self, QEvent* param1) {

	self->QScrollArea::changeEvent(param1);
}

int QScrollArea_virtualbase_devType(const VirtualQScrollArea* self) {

	return self->QScrollArea::devType();
}

void QScrollArea_virtualbase_setVisible(VirtualQScrollArea* self, bool visible) {

	self->QScrollArea::setVisible(visible);
}

int QScrollArea_virtualbase_heightForWidth(const VirtualQScrollArea* self, int param1) {

	return self->QScrollArea::heightForWidth(static_cast<int>(param1));
}

bool QScrollArea_virtualbase_hasHeightForWidth(const VirtualQScrollArea* self) {

	return self->QScrollArea::hasHeightForWidth();
}

QPaintEngine* QScrollArea_virtualbase_paintEngine(const VirtualQScrollArea* self) {

	return self->QScrollArea::paintEngine();
}

void QScrollArea_virtualbase_keyReleaseEvent(VirtualQScrollArea* self, QKeyEvent* event) {

	self->QScrollArea::keyReleaseEvent(event);
}

void QScrollArea_virtualbase_focusInEvent(VirtualQScrollArea* self, QFocusEvent* event) {

	self->QScrollArea::focusInEvent(event);
}

void QScrollArea_virtualbase_focusOutEvent(VirtualQScrollArea* self, QFocusEvent* event) {

	self->QScrollArea::focusOutEvent(event);
}

void QScrollArea_virtualbase_enterEvent(VirtualQScrollArea* self, QEvent* event) {

	self->QScrollArea::enterEvent(event);
}

void QScrollArea_virtualbase_leaveEvent(VirtualQScrollArea* self, QEvent* event) {

	self->QScrollArea::leaveEvent(event);
}

void QScrollArea_virtualbase_moveEvent(VirtualQScrollArea* self, QMoveEvent* event) {

	self->QScrollArea::moveEvent(event);
}

void QScrollArea_virtualbase_closeEvent(VirtualQScrollArea* self, QCloseEvent* event) {

	self->QScrollArea::closeEvent(event);
}

void QScrollArea_virtualbase_tabletEvent(VirtualQScrollArea* self, QTabletEvent* event) {

	self->QScrollArea::tabletEvent(event);
}

void QScrollArea_virtualbase_actionEvent(VirtualQScrollArea* self, QActionEvent* event) {

	self->QScrollArea::actionEvent(event);
}

void QScrollArea_virtualbase_showEvent(VirtualQScrollArea* self, QShowEvent* event) {

	self->QScrollArea::showEvent(event);
}

void QScrollArea_virtualbase_hideEvent(VirtualQScrollArea* self, QHideEvent* event) {

	self->QScrollArea::hideEvent(event);
}

bool QScrollArea_virtualbase_nativeEvent(VirtualQScrollArea* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QScrollArea::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QScrollArea_virtualbase_metric(const VirtualQScrollArea* self, int param1) {

	return self->QScrollArea::metric(static_cast<VirtualQScrollArea::PaintDeviceMetric>(param1));
}

void QScrollArea_virtualbase_initPainter(const VirtualQScrollArea* self, QPainter* painter) {

	self->QScrollArea::initPainter(painter);
}

QPaintDevice* QScrollArea_virtualbase_redirected(const VirtualQScrollArea* self, QPoint* offset) {

	return self->QScrollArea::redirected(offset);
}

QPainter* QScrollArea_virtualbase_sharedPainter(const VirtualQScrollArea* self) {

	return self->QScrollArea::sharedPainter();
}

void QScrollArea_virtualbase_inputMethodEvent(VirtualQScrollArea* self, QInputMethodEvent* param1) {

	self->QScrollArea::inputMethodEvent(param1);
}

QVariant* QScrollArea_virtualbase_inputMethodQuery(const VirtualQScrollArea* self, int param1) {

	return new QVariant(self->QScrollArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QScrollArea_virtualbase_timerEvent(VirtualQScrollArea* self, QTimerEvent* event) {

	self->QScrollArea::timerEvent(event);
}

void QScrollArea_virtualbase_childEvent(VirtualQScrollArea* self, QChildEvent* event) {

	self->QScrollArea::childEvent(event);
}

void QScrollArea_virtualbase_customEvent(VirtualQScrollArea* self, QEvent* event) {

	self->QScrollArea::customEvent(event);
}

void QScrollArea_virtualbase_connectNotify(VirtualQScrollArea* self, QMetaMethod* signal) {

	self->QScrollArea::connectNotify(*signal);
}

void QScrollArea_virtualbase_disconnectNotify(VirtualQScrollArea* self, QMetaMethod* signal) {

	self->QScrollArea::disconnectNotify(*signal);
}

const QMetaObject* QScrollArea_staticMetaObject() { return &QScrollArea::staticMetaObject; }

const QScrollArea_VTable* QScrollArea_vtbl(const VirtualQScrollArea* self) { return self->vtbl; }
void* QScrollArea_vdata(const VirtualQScrollArea* self) { return self->vdata; }
void QScrollArea_setVdata(VirtualQScrollArea* self, void* vdata) { self->vdata = vdata; }

void QScrollArea_protectedbase_setViewportMargins(VirtualQScrollArea* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QScrollArea_protectedbase_viewportMargins(const VirtualQScrollArea* self) {
	return new QMargins(self->viewportMargins());
}

void QScrollArea_protectedbase_drawFrame(VirtualQScrollArea* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QScrollArea_protectedbase_initStyleOption(const VirtualQScrollArea* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QScrollArea_protectedbase_updateMicroFocus(VirtualQScrollArea* self) {
	self->updateMicroFocus();
}

void QScrollArea_protectedbase_create(VirtualQScrollArea* self) {
	self->create();
}

void QScrollArea_protectedbase_destroy(VirtualQScrollArea* self) {
	self->destroy();
}

bool QScrollArea_protectedbase_focusNextChild(VirtualQScrollArea* self) {
	return self->focusNextChild();
}

bool QScrollArea_protectedbase_focusPreviousChild(VirtualQScrollArea* self) {
	return self->focusPreviousChild();
}

QObject* QScrollArea_protectedbase_sender(const VirtualQScrollArea* self) {
	return self->sender();
}

int QScrollArea_protectedbase_senderSignalIndex(const VirtualQScrollArea* self) {
	return self->senderSignalIndex();
}

int QScrollArea_protectedbase_receivers(const VirtualQScrollArea* self, const char* signal) {
	return self->receivers(signal);
}

bool QScrollArea_protectedbase_isSignalConnected(const VirtualQScrollArea* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QScrollArea_delete(QScrollArea* self) {
	delete self;
}

