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
#include <QImage>
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
#include <QRhiWidget>
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
#include <qrhiwidget.h>
#include "gen_qrhiwidget.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQRhiWidget final : public QRhiWidget {
	const QRhiWidget_VTable* vtbl;
public:
	friend void* QRhiWidget_vdata(VirtualQRhiWidget* self);
	friend VirtualQRhiWidget* vdata_QRhiWidget(void* vdata);

	VirtualQRhiWidget(const QRhiWidget_VTable* vtbl): QRhiWidget(), vtbl(vtbl) {}
	VirtualQRhiWidget(const QRhiWidget_VTable* vtbl, QWidget* parent): QRhiWidget(parent), vtbl(vtbl) {}
	VirtualQRhiWidget(const QRhiWidget_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QRhiWidget(parent, f), vtbl(vtbl) {}

	virtual ~VirtualQRhiWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRhiWidget::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QRhiWidget_virtualbase_metaObject(const VirtualQRhiWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRhiWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QRhiWidget_virtualbase_metacast(VirtualQRhiWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRhiWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QRhiWidget_virtualbase_metacall(VirtualQRhiWidget* self, int param1, int param2, void** param3);

	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QRhiWidget::releaseResources();
			return;
		}

		vtbl->releaseResources(this);
	}

	friend void QRhiWidget_virtualbase_releaseResources(VirtualQRhiWidget* self);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QRhiWidget::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_resizeEvent(VirtualQRhiWidget* self, QResizeEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QRhiWidget::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_paintEvent(VirtualQRhiWidget* self, QPaintEvent* e);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QRhiWidget::event(e);
		}

		QEvent* sigval1 = e;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QRhiWidget_virtualbase_event(VirtualQRhiWidget* self, QEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRhiWidget::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QRhiWidget_virtualbase_devType(const VirtualQRhiWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QRhiWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_setVisible(VirtualQRhiWidget* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QRhiWidget::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QRhiWidget_virtualbase_sizeHint(const VirtualQRhiWidget* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QRhiWidget::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QRhiWidget_virtualbase_minimumSizeHint(const VirtualQRhiWidget* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QRhiWidget::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QRhiWidget_virtualbase_heightForWidth(const VirtualQRhiWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QRhiWidget::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QRhiWidget_virtualbase_hasHeightForWidth(const VirtualQRhiWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QRhiWidget::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QRhiWidget_virtualbase_paintEngine(const VirtualQRhiWidget* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QRhiWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_mousePressEvent(VirtualQRhiWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRhiWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_mouseReleaseEvent(VirtualQRhiWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRhiWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_mouseDoubleClickEvent(VirtualQRhiWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRhiWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_mouseMoveEvent(VirtualQRhiWidget* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QRhiWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_wheelEvent(VirtualQRhiWidget* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QRhiWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_keyPressEvent(VirtualQRhiWidget* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRhiWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_keyReleaseEvent(VirtualQRhiWidget* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QRhiWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_focusInEvent(VirtualQRhiWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QRhiWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_focusOutEvent(VirtualQRhiWidget* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QRhiWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_enterEvent(VirtualQRhiWidget* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QRhiWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_leaveEvent(VirtualQRhiWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QRhiWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_moveEvent(VirtualQRhiWidget* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QRhiWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_closeEvent(VirtualQRhiWidget* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QRhiWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_contextMenuEvent(VirtualQRhiWidget* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QRhiWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_tabletEvent(VirtualQRhiWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QRhiWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_actionEvent(VirtualQRhiWidget* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QRhiWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_dragEnterEvent(VirtualQRhiWidget* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QRhiWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_dragMoveEvent(VirtualQRhiWidget* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QRhiWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_dragLeaveEvent(VirtualQRhiWidget* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QRhiWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_dropEvent(VirtualQRhiWidget* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QRhiWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_showEvent(VirtualQRhiWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QRhiWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_hideEvent(VirtualQRhiWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRhiWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct seaqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct seaqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);
		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);
		return callback_return_value;
	}

	friend bool QRhiWidget_virtualbase_nativeEvent(VirtualQRhiWidget* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QRhiWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_changeEvent(VirtualQRhiWidget* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QRhiWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QRhiWidget_virtualbase_metric(const VirtualQRhiWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRhiWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_initPainter(const VirtualQRhiWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QRhiWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QRhiWidget_virtualbase_redirected(const VirtualQRhiWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRhiWidget::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QRhiWidget_virtualbase_sharedPainter(const VirtualQRhiWidget* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QRhiWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_inputMethodEvent(VirtualQRhiWidget* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QRhiWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QRhiWidget_virtualbase_inputMethodQuery(const VirtualQRhiWidget* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QRhiWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QRhiWidget_virtualbase_focusNextPrevChild(VirtualQRhiWidget* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRhiWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QRhiWidget_virtualbase_eventFilter(VirtualQRhiWidget* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QRhiWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_timerEvent(VirtualQRhiWidget* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRhiWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_childEvent(VirtualQRhiWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRhiWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_customEvent(VirtualQRhiWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRhiWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_connectNotify(VirtualQRhiWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRhiWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QRhiWidget_virtualbase_disconnectNotify(VirtualQRhiWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend bool QRhiWidget_protectedbase_isAutoRenderTargetEnabled(const VirtualQRhiWidget* self);
	friend void QRhiWidget_protectedbase_setAutoRenderTarget(VirtualQRhiWidget* self, bool enabled);
	friend void QRhiWidget_protectedbase_updateMicroFocus(VirtualQRhiWidget* self);
	friend void QRhiWidget_protectedbase_create(VirtualQRhiWidget* self);
	friend void QRhiWidget_protectedbase_destroy(VirtualQRhiWidget* self);
	friend bool QRhiWidget_protectedbase_focusNextChild(VirtualQRhiWidget* self);
	friend bool QRhiWidget_protectedbase_focusPreviousChild(VirtualQRhiWidget* self);
	friend QObject* QRhiWidget_protectedbase_sender(const VirtualQRhiWidget* self);
	friend int QRhiWidget_protectedbase_senderSignalIndex(const VirtualQRhiWidget* self);
	friend int QRhiWidget_protectedbase_receivers(const VirtualQRhiWidget* self, const char* signal);
	friend bool QRhiWidget_protectedbase_isSignalConnected(const VirtualQRhiWidget* self, QMetaMethod* signal);
	friend double QRhiWidget_protectedbase_getDecodedMetricF(const VirtualQRhiWidget* self, int metricA, int metricB);
};

VirtualQRhiWidget* QRhiWidget_new(const QRhiWidget_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRhiWidget>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRhiWidget(vtbl) : nullptr;
}

VirtualQRhiWidget* QRhiWidget_new_parent(const QRhiWidget_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRhiWidget>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRhiWidget(vtbl, parent) : nullptr;
}

VirtualQRhiWidget* QRhiWidget_new_parent_f(const QRhiWidget_VTable* vtbl, size_t vdata, QWidget* parent, int f) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQRhiWidget>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQRhiWidget(vtbl, parent, static_cast<Qt::WindowFlags>(f)) : nullptr;
}

void QRhiWidget_virtbase(QRhiWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QRhiWidget_metaObject(const QRhiWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRhiWidget_metacast(QRhiWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRhiWidget_metacall(QRhiWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QRhiWidget_tr_s(const char* s) {
	QString _ret = QRhiWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QRhiWidget_api(const QRhiWidget* self) {
	QRhiWidget::Api _ret = self->api();
	return static_cast<int>(_ret);
}

void QRhiWidget_setApi(QRhiWidget* self, int api) {
	self->setApi(static_cast<QRhiWidget::Api>(api));
}

bool QRhiWidget_isDebugLayerEnabled(const QRhiWidget* self) {
	return self->isDebugLayerEnabled();
}

void QRhiWidget_setDebugLayerEnabled(QRhiWidget* self, bool enable) {
	self->setDebugLayerEnabled(enable);
}

int QRhiWidget_sampleCount(const QRhiWidget* self) {
	return self->sampleCount();
}

void QRhiWidget_setSampleCount(QRhiWidget* self, int samples) {
	self->setSampleCount(static_cast<int>(samples));
}

int QRhiWidget_colorBufferFormat(const QRhiWidget* self) {
	QRhiWidget::TextureFormat _ret = self->colorBufferFormat();
	return static_cast<int>(_ret);
}

void QRhiWidget_setColorBufferFormat(QRhiWidget* self, int format) {
	self->setColorBufferFormat(static_cast<QRhiWidget::TextureFormat>(format));
}

QSize* QRhiWidget_fixedColorBufferSize(const QRhiWidget* self) {
	return new QSize(self->fixedColorBufferSize());
}

void QRhiWidget_setFixedColorBufferSize_pixelSize(QRhiWidget* self, QSize* pixelSize) {
	self->setFixedColorBufferSize(*pixelSize);
}

void QRhiWidget_setFixedColorBufferSize_w_h(QRhiWidget* self, int w, int h) {
	self->setFixedColorBufferSize(static_cast<int>(w), static_cast<int>(h));
}

bool QRhiWidget_isMirrorVerticallyEnabled(const QRhiWidget* self) {
	return self->isMirrorVerticallyEnabled();
}

void QRhiWidget_setMirrorVertically(QRhiWidget* self, bool enabled) {
	self->setMirrorVertically(enabled);
}

QImage* QRhiWidget_grabFramebuffer(const QRhiWidget* self) {
	return new QImage(self->grabFramebuffer());
}

void QRhiWidget_frameSubmitted(QRhiWidget* self) {
	self->frameSubmitted();
}

void QRhiWidget_connect_frameSubmitted(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)()>(&QRhiWidget::frameSubmitted), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QRhiWidget_renderFailed(QRhiWidget* self) {
	self->renderFailed();
}

void QRhiWidget_connect_renderFailed(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)()>(&QRhiWidget::renderFailed), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QRhiWidget_sampleCountChanged(QRhiWidget* self, int samples) {
	self->sampleCountChanged(static_cast<int>(samples));
}

void QRhiWidget_connect_sampleCountChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)(int)>(&QRhiWidget::sampleCountChanged), self, [callback, release = seaqt::release_callback{slot,release}](int samples) {
			int sigval1 = samples;
			callback(release.slot, sigval1);
	});
}

void QRhiWidget_colorBufferFormatChanged(QRhiWidget* self, int format) {
	self->colorBufferFormatChanged(static_cast<QRhiWidget::TextureFormat>(format));
}

void QRhiWidget_connect_colorBufferFormatChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)(QRhiWidget::TextureFormat)>(&QRhiWidget::colorBufferFormatChanged), self, [callback, release = seaqt::release_callback{slot,release}](QRhiWidget::TextureFormat format) {
			QRhiWidget::TextureFormat format_ret = format;
			int sigval1 = static_cast<int>(format_ret);
			callback(release.slot, sigval1);
	});
}

void QRhiWidget_fixedColorBufferSizeChanged(QRhiWidget* self, QSize* pixelSize) {
	self->fixedColorBufferSizeChanged(*pixelSize);
}

void QRhiWidget_connect_fixedColorBufferSizeChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)(const QSize&)>(&QRhiWidget::fixedColorBufferSizeChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QSize& pixelSize) {
			const QSize& pixelSize_ret = pixelSize;
			// Cast returned reference into pointer
			QSize* sigval1 = const_cast<QSize*>(&pixelSize_ret);
			callback(release.slot, sigval1);
	});
}

void QRhiWidget_mirrorVerticallyChanged(QRhiWidget* self, bool enabled) {
	self->mirrorVerticallyChanged(enabled);
}

void QRhiWidget_connect_mirrorVerticallyChanged(QRhiWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QRhiWidget::connect(self, static_cast<void (QRhiWidget::*)(bool)>(&QRhiWidget::mirrorVerticallyChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool enabled) {
			bool sigval1 = enabled;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QRhiWidget_tr_s_c(const char* s, const char* c) {
	QString _ret = QRhiWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRhiWidget_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QRhiWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QRhiWidget_staticMetaObject() { return &QRhiWidget::staticMetaObject; }
void* QRhiWidget_vdata(VirtualQRhiWidget* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQRhiWidget>()); }
VirtualQRhiWidget* vdata_QRhiWidget(void* vdata) { return reinterpret_cast<VirtualQRhiWidget*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQRhiWidget>()); }

QMetaObject* QRhiWidget_virtualbase_metaObject(const VirtualQRhiWidget* self) {

	return (QMetaObject*) self->QRhiWidget::metaObject();
}

void* QRhiWidget_virtualbase_metacast(VirtualQRhiWidget* self, const char* param1) {

	return self->QRhiWidget::qt_metacast(param1);
}

int QRhiWidget_virtualbase_metacall(VirtualQRhiWidget* self, int param1, int param2, void** param3) {

	return self->QRhiWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QRhiWidget_virtualbase_releaseResources(VirtualQRhiWidget* self) {

	self->QRhiWidget::releaseResources();
}

void QRhiWidget_virtualbase_resizeEvent(VirtualQRhiWidget* self, QResizeEvent* e) {

	self->QRhiWidget::resizeEvent(e);
}

void QRhiWidget_virtualbase_paintEvent(VirtualQRhiWidget* self, QPaintEvent* e) {

	self->QRhiWidget::paintEvent(e);
}

bool QRhiWidget_virtualbase_event(VirtualQRhiWidget* self, QEvent* e) {

	return self->QRhiWidget::event(e);
}

int QRhiWidget_virtualbase_devType(const VirtualQRhiWidget* self) {

	return self->QRhiWidget::devType();
}

void QRhiWidget_virtualbase_setVisible(VirtualQRhiWidget* self, bool visible) {

	self->QRhiWidget::setVisible(visible);
}

QSize* QRhiWidget_virtualbase_sizeHint(const VirtualQRhiWidget* self) {

	return new QSize(self->QRhiWidget::sizeHint());
}

QSize* QRhiWidget_virtualbase_minimumSizeHint(const VirtualQRhiWidget* self) {

	return new QSize(self->QRhiWidget::minimumSizeHint());
}

int QRhiWidget_virtualbase_heightForWidth(const VirtualQRhiWidget* self, int param1) {

	return self->QRhiWidget::heightForWidth(static_cast<int>(param1));
}

bool QRhiWidget_virtualbase_hasHeightForWidth(const VirtualQRhiWidget* self) {

	return self->QRhiWidget::hasHeightForWidth();
}

QPaintEngine* QRhiWidget_virtualbase_paintEngine(const VirtualQRhiWidget* self) {

	return self->QRhiWidget::paintEngine();
}

void QRhiWidget_virtualbase_mousePressEvent(VirtualQRhiWidget* self, QMouseEvent* event) {

	self->QRhiWidget::mousePressEvent(event);
}

void QRhiWidget_virtualbase_mouseReleaseEvent(VirtualQRhiWidget* self, QMouseEvent* event) {

	self->QRhiWidget::mouseReleaseEvent(event);
}

void QRhiWidget_virtualbase_mouseDoubleClickEvent(VirtualQRhiWidget* self, QMouseEvent* event) {

	self->QRhiWidget::mouseDoubleClickEvent(event);
}

void QRhiWidget_virtualbase_mouseMoveEvent(VirtualQRhiWidget* self, QMouseEvent* event) {

	self->QRhiWidget::mouseMoveEvent(event);
}

void QRhiWidget_virtualbase_wheelEvent(VirtualQRhiWidget* self, QWheelEvent* event) {

	self->QRhiWidget::wheelEvent(event);
}

void QRhiWidget_virtualbase_keyPressEvent(VirtualQRhiWidget* self, QKeyEvent* event) {

	self->QRhiWidget::keyPressEvent(event);
}

void QRhiWidget_virtualbase_keyReleaseEvent(VirtualQRhiWidget* self, QKeyEvent* event) {

	self->QRhiWidget::keyReleaseEvent(event);
}

void QRhiWidget_virtualbase_focusInEvent(VirtualQRhiWidget* self, QFocusEvent* event) {

	self->QRhiWidget::focusInEvent(event);
}

void QRhiWidget_virtualbase_focusOutEvent(VirtualQRhiWidget* self, QFocusEvent* event) {

	self->QRhiWidget::focusOutEvent(event);
}

void QRhiWidget_virtualbase_enterEvent(VirtualQRhiWidget* self, QEnterEvent* event) {

	self->QRhiWidget::enterEvent(event);
}

void QRhiWidget_virtualbase_leaveEvent(VirtualQRhiWidget* self, QEvent* event) {

	self->QRhiWidget::leaveEvent(event);
}

void QRhiWidget_virtualbase_moveEvent(VirtualQRhiWidget* self, QMoveEvent* event) {

	self->QRhiWidget::moveEvent(event);
}

void QRhiWidget_virtualbase_closeEvent(VirtualQRhiWidget* self, QCloseEvent* event) {

	self->QRhiWidget::closeEvent(event);
}

void QRhiWidget_virtualbase_contextMenuEvent(VirtualQRhiWidget* self, QContextMenuEvent* event) {

	self->QRhiWidget::contextMenuEvent(event);
}

void QRhiWidget_virtualbase_tabletEvent(VirtualQRhiWidget* self, QTabletEvent* event) {

	self->QRhiWidget::tabletEvent(event);
}

void QRhiWidget_virtualbase_actionEvent(VirtualQRhiWidget* self, QActionEvent* event) {

	self->QRhiWidget::actionEvent(event);
}

void QRhiWidget_virtualbase_dragEnterEvent(VirtualQRhiWidget* self, QDragEnterEvent* event) {

	self->QRhiWidget::dragEnterEvent(event);
}

void QRhiWidget_virtualbase_dragMoveEvent(VirtualQRhiWidget* self, QDragMoveEvent* event) {

	self->QRhiWidget::dragMoveEvent(event);
}

void QRhiWidget_virtualbase_dragLeaveEvent(VirtualQRhiWidget* self, QDragLeaveEvent* event) {

	self->QRhiWidget::dragLeaveEvent(event);
}

void QRhiWidget_virtualbase_dropEvent(VirtualQRhiWidget* self, QDropEvent* event) {

	self->QRhiWidget::dropEvent(event);
}

void QRhiWidget_virtualbase_showEvent(VirtualQRhiWidget* self, QShowEvent* event) {

	self->QRhiWidget::showEvent(event);
}

void QRhiWidget_virtualbase_hideEvent(VirtualQRhiWidget* self, QHideEvent* event) {

	self->QRhiWidget::hideEvent(event);
}

bool QRhiWidget_virtualbase_nativeEvent(VirtualQRhiWidget* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QRhiWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QRhiWidget_virtualbase_changeEvent(VirtualQRhiWidget* self, QEvent* param1) {

	self->QRhiWidget::changeEvent(param1);
}

int QRhiWidget_virtualbase_metric(const VirtualQRhiWidget* self, int param1) {

	return self->QRhiWidget::metric(static_cast<VirtualQRhiWidget::PaintDeviceMetric>(param1));
}

void QRhiWidget_virtualbase_initPainter(const VirtualQRhiWidget* self, QPainter* painter) {

	self->QRhiWidget::initPainter(painter);
}

QPaintDevice* QRhiWidget_virtualbase_redirected(const VirtualQRhiWidget* self, QPoint* offset) {

	return self->QRhiWidget::redirected(offset);
}

QPainter* QRhiWidget_virtualbase_sharedPainter(const VirtualQRhiWidget* self) {

	return self->QRhiWidget::sharedPainter();
}

void QRhiWidget_virtualbase_inputMethodEvent(VirtualQRhiWidget* self, QInputMethodEvent* param1) {

	self->QRhiWidget::inputMethodEvent(param1);
}

QVariant* QRhiWidget_virtualbase_inputMethodQuery(const VirtualQRhiWidget* self, int param1) {

	return new QVariant(self->QRhiWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QRhiWidget_virtualbase_focusNextPrevChild(VirtualQRhiWidget* self, bool next) {

	return self->QRhiWidget::focusNextPrevChild(next);
}

bool QRhiWidget_virtualbase_eventFilter(VirtualQRhiWidget* self, QObject* watched, QEvent* event) {

	return self->QRhiWidget::eventFilter(watched, event);
}

void QRhiWidget_virtualbase_timerEvent(VirtualQRhiWidget* self, QTimerEvent* event) {

	self->QRhiWidget::timerEvent(event);
}

void QRhiWidget_virtualbase_childEvent(VirtualQRhiWidget* self, QChildEvent* event) {

	self->QRhiWidget::childEvent(event);
}

void QRhiWidget_virtualbase_customEvent(VirtualQRhiWidget* self, QEvent* event) {

	self->QRhiWidget::customEvent(event);
}

void QRhiWidget_virtualbase_connectNotify(VirtualQRhiWidget* self, QMetaMethod* signal) {

	self->QRhiWidget::connectNotify(*signal);
}

void QRhiWidget_virtualbase_disconnectNotify(VirtualQRhiWidget* self, QMetaMethod* signal) {

	self->QRhiWidget::disconnectNotify(*signal);
}

bool QRhiWidget_protectedbase_isAutoRenderTargetEnabled(const VirtualQRhiWidget* self) {
	return self->QRhiWidget::isAutoRenderTargetEnabled();
}

void QRhiWidget_protectedbase_setAutoRenderTarget(VirtualQRhiWidget* self, bool enabled) {
	self->QRhiWidget::setAutoRenderTarget(enabled);
}

void QRhiWidget_protectedbase_updateMicroFocus(VirtualQRhiWidget* self) {
	self->QRhiWidget::updateMicroFocus();
}

void QRhiWidget_protectedbase_create(VirtualQRhiWidget* self) {
	self->QRhiWidget::create();
}

void QRhiWidget_protectedbase_destroy(VirtualQRhiWidget* self) {
	self->QRhiWidget::destroy();
}

bool QRhiWidget_protectedbase_focusNextChild(VirtualQRhiWidget* self) {
	return self->QRhiWidget::focusNextChild();
}

bool QRhiWidget_protectedbase_focusPreviousChild(VirtualQRhiWidget* self) {
	return self->QRhiWidget::focusPreviousChild();
}

QObject* QRhiWidget_protectedbase_sender(const VirtualQRhiWidget* self) {
	return self->QRhiWidget::sender();
}

int QRhiWidget_protectedbase_senderSignalIndex(const VirtualQRhiWidget* self) {
	return self->QRhiWidget::senderSignalIndex();
}

int QRhiWidget_protectedbase_receivers(const VirtualQRhiWidget* self, const char* signal) {
	return self->QRhiWidget::receivers(signal);
}

bool QRhiWidget_protectedbase_isSignalConnected(const VirtualQRhiWidget* self, QMetaMethod* signal) {
	return self->QRhiWidget::isSignalConnected(*signal);
}

double QRhiWidget_protectedbase_getDecodedMetricF(const VirtualQRhiWidget* self, int metricA, int metricB) {
	return self->QRhiWidget::getDecodedMetricF(static_cast<VirtualQRhiWidget::PaintDeviceMetric>(metricA), static_cast<VirtualQRhiWidget::PaintDeviceMetric>(metricB));
}

void QRhiWidget_delete(QRhiWidget* self) {
	delete self;
}

