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
#include <QEnterEvent>
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
#include <QPdfDocument>
#include <QPdfPageNavigator>
#include <QPdfView>
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
#include <qpdfview.h>
#include "gen_qpdfview.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfView final : public QPdfView {
	const QPdfView_VTable* vtbl;
public:
	friend void* QPdfView_vdata(VirtualQPdfView* self);
	friend VirtualQPdfView* vdata_QPdfView(void* vdata);

	VirtualQPdfView(const QPdfView_VTable* vtbl, QWidget* parent): QPdfView(parent), vtbl(vtbl) {}
	VirtualQPdfView(const QPdfView_VTable* vtbl): QPdfView(), vtbl(vtbl) {}

	virtual ~VirtualQPdfView() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfView::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfView_virtualbase_metaObject(const VirtualQPdfView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfView_virtualbase_metacast(VirtualQPdfView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfView_virtualbase_metacall(VirtualQPdfView* self, int param1, int param2, void** param3);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPdfView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_paintEvent(VirtualQPdfView* self, QPaintEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPdfView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_resizeEvent(VirtualQPdfView* self, QResizeEvent* event);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QPdfView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;
		vtbl->scrollContentsBy(this, sigval1, sigval2);
	}

	friend void QPdfView_virtualbase_scrollContentsBy(VirtualQPdfView* self, int dx, int dy);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPdfView::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfView_virtualbase_minimumSizeHint(const VirtualQPdfView* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPdfView::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfView_virtualbase_sizeHint(const VirtualQPdfView* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QPdfView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;
		vtbl->setupViewport(this, sigval1);
	}

	friend void QPdfView_virtualbase_setupViewport(VirtualQPdfView* self, QWidget* viewport);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPdfView::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfView_virtualbase_eventFilter(VirtualQPdfView* self, QObject* param1, QEvent* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QPdfView::event(param1);
		}

		QEvent* sigval1 = param1;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfView_virtualbase_event(VirtualQPdfView* self, QEvent* param1);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QPdfView::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;
		bool callback_return_value = vtbl->viewportEvent(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfView_virtualbase_viewportEvent(VirtualQPdfView* self, QEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QPdfView::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_mousePressEvent(VirtualQPdfView* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPdfView::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_mouseReleaseEvent(VirtualQPdfView* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPdfView::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_mouseDoubleClickEvent(VirtualQPdfView* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPdfView::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_mouseMoveEvent(VirtualQPdfView* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QPdfView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_wheelEvent(VirtualQPdfView* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPdfView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_contextMenuEvent(VirtualQPdfView* self, QContextMenuEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QPdfView::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_dragEnterEvent(VirtualQPdfView* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QPdfView::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_dragMoveEvent(VirtualQPdfView* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPdfView::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_dragLeaveEvent(VirtualQPdfView* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QPdfView::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_dropEvent(VirtualQPdfView* self, QDropEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPdfView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_keyPressEvent(VirtualQPdfView* self, QKeyEvent* param1);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QPdfView::viewportSizeHint();
		}

		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfView_virtualbase_viewportSizeHint(const VirtualQPdfView* self);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPdfView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_changeEvent(VirtualQPdfView* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QPdfView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;
		vtbl->initStyleOption(this, sigval1);
	}

	friend void QPdfView_virtualbase_initStyleOption(const VirtualQPdfView* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPdfView::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfView_virtualbase_devType(const VirtualQPdfView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPdfView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QPdfView_virtualbase_setVisible(VirtualQPdfView* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPdfView::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfView_virtualbase_heightForWidth(const VirtualQPdfView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPdfView::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QPdfView_virtualbase_hasHeightForWidth(const VirtualQPdfView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPdfView::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QPdfView_virtualbase_paintEngine(const VirtualQPdfView* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPdfView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_keyReleaseEvent(VirtualQPdfView* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPdfView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_focusInEvent(VirtualQPdfView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPdfView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_focusOutEvent(VirtualQPdfView* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPdfView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_enterEvent(VirtualQPdfView* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPdfView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_leaveEvent(VirtualQPdfView* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPdfView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_moveEvent(VirtualQPdfView* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPdfView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_closeEvent(VirtualQPdfView* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPdfView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_tabletEvent(VirtualQPdfView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPdfView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_actionEvent(VirtualQPdfView* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPdfView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_showEvent(VirtualQPdfView* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPdfView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_hideEvent(VirtualQPdfView* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPdfView::nativeEvent(eventType, message, result);
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

	friend bool QPdfView_virtualbase_nativeEvent(VirtualQPdfView* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPdfView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfView_virtualbase_metric(const VirtualQPdfView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPdfView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QPdfView_virtualbase_initPainter(const VirtualQPdfView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPdfView::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QPdfView_virtualbase_redirected(const VirtualQPdfView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPdfView::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QPdfView_virtualbase_sharedPainter(const VirtualQPdfView* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPdfView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_inputMethodEvent(VirtualQPdfView* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPdfView::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QPdfView_virtualbase_inputMethodQuery(const VirtualQPdfView* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPdfView::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfView_virtualbase_focusNextPrevChild(VirtualQPdfView* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_timerEvent(VirtualQPdfView* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_childEvent(VirtualQPdfView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfView_virtualbase_customEvent(VirtualQPdfView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfView_virtualbase_connectNotify(VirtualQPdfView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfView_virtualbase_disconnectNotify(VirtualQPdfView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPdfView_protectedbase_setViewportMargins_left_top_right_bottom(VirtualQPdfView* self, int left, int top, int right, int bottom);
	friend QMargins* QPdfView_protectedbase_viewportMargins(const VirtualQPdfView* self);
	friend void QPdfView_protectedbase_drawFrame(VirtualQPdfView* self, QPainter* param1);
	friend void QPdfView_protectedbase_updateMicroFocus(VirtualQPdfView* self);
	friend void QPdfView_protectedbase_create(VirtualQPdfView* self);
	friend void QPdfView_protectedbase_destroy(VirtualQPdfView* self);
	friend bool QPdfView_protectedbase_focusNextChild(VirtualQPdfView* self);
	friend bool QPdfView_protectedbase_focusPreviousChild(VirtualQPdfView* self);
	friend QObject* QPdfView_protectedbase_sender(const VirtualQPdfView* self);
	friend int QPdfView_protectedbase_senderSignalIndex(const VirtualQPdfView* self);
	friend int QPdfView_protectedbase_receivers(const VirtualQPdfView* self, const char* signal);
	friend bool QPdfView_protectedbase_isSignalConnected(const VirtualQPdfView* self, QMetaMethod* signal);
};

VirtualQPdfView* QPdfView_new_parent(const QPdfView_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfView>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfView(vtbl, parent) : nullptr;
}

VirtualQPdfView* QPdfView_new(const QPdfView_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfView>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfView(vtbl) : nullptr;
}

void QPdfView_virtbase(QPdfView* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QPdfView_metaObject(const QPdfView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfView_metacast(QPdfView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfView_metacall(QPdfView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfView_tr_s(const char* s) {
	QString _ret = QPdfView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfView_setDocument(QPdfView* self, QPdfDocument* document) {
	self->setDocument(document);
}

QPdfDocument* QPdfView_document(const QPdfView* self) {
	return self->document();
}

QPdfPageNavigator* QPdfView_pageNavigator(const QPdfView* self) {
	return self->pageNavigator();
}

int QPdfView_pageMode(const QPdfView* self) {
	QPdfView::PageMode _ret = self->pageMode();
	return static_cast<int>(_ret);
}

int QPdfView_zoomMode(const QPdfView* self) {
	QPdfView::ZoomMode _ret = self->zoomMode();
	return static_cast<int>(_ret);
}

double QPdfView_zoomFactor(const QPdfView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

int QPdfView_pageSpacing(const QPdfView* self) {
	return self->pageSpacing();
}

void QPdfView_setPageSpacing(QPdfView* self, int spacing) {
	self->setPageSpacing(static_cast<int>(spacing));
}

QMargins* QPdfView_documentMargins(const QPdfView* self) {
	return new QMargins(self->documentMargins());
}

void QPdfView_setDocumentMargins(QPdfView* self, QMargins* margins) {
	self->setDocumentMargins(*margins);
}

void QPdfView_setPageMode(QPdfView* self, int mode) {
	self->setPageMode(static_cast<QPdfView::PageMode>(mode));
}

void QPdfView_setZoomMode(QPdfView* self, int mode) {
	self->setZoomMode(static_cast<QPdfView::ZoomMode>(mode));
}

void QPdfView_setZoomFactor(QPdfView* self, double factor) {
	self->setZoomFactor(static_cast<qreal>(factor));
}

void QPdfView_documentChanged(QPdfView* self, QPdfDocument* document) {
	self->documentChanged(document);
}

void QPdfView_connect_documentChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(QPdfDocument*)>(&QPdfView::documentChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfDocument* document) {
			QPdfDocument* sigval1 = document;
			callback(release.slot, sigval1);
	});
}

void QPdfView_pageModeChanged(QPdfView* self, int pageMode) {
	self->pageModeChanged(static_cast<QPdfView::PageMode>(pageMode));
}

void QPdfView_connect_pageModeChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(QPdfView::PageMode)>(&QPdfView::pageModeChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfView::PageMode pageMode) {
			QPdfView::PageMode pageMode_ret = pageMode;
			int sigval1 = static_cast<int>(pageMode_ret);
			callback(release.slot, sigval1);
	});
}

void QPdfView_zoomModeChanged(QPdfView* self, int zoomMode) {
	self->zoomModeChanged(static_cast<QPdfView::ZoomMode>(zoomMode));
}

void QPdfView_connect_zoomModeChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(QPdfView::ZoomMode)>(&QPdfView::zoomModeChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfView::ZoomMode zoomMode) {
			QPdfView::ZoomMode zoomMode_ret = zoomMode;
			int sigval1 = static_cast<int>(zoomMode_ret);
			callback(release.slot, sigval1);
	});
}

void QPdfView_zoomFactorChanged(QPdfView* self, double zoomFactor) {
	self->zoomFactorChanged(static_cast<qreal>(zoomFactor));
}

void QPdfView_connect_zoomFactorChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(qreal)>(&QPdfView::zoomFactorChanged), self, [callback, release = seaqt::release_callback{slot,release}](qreal zoomFactor) {
			qreal zoomFactor_ret = zoomFactor;
			double sigval1 = static_cast<double>(zoomFactor_ret);
			callback(release.slot, sigval1);
	});
}

void QPdfView_pageSpacingChanged(QPdfView* self, int pageSpacing) {
	self->pageSpacingChanged(static_cast<int>(pageSpacing));
}

void QPdfView_connect_pageSpacingChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(int)>(&QPdfView::pageSpacingChanged), self, [callback, release = seaqt::release_callback{slot,release}](int pageSpacing) {
			int sigval1 = pageSpacing;
			callback(release.slot, sigval1);
	});
}

void QPdfView_documentMarginsChanged(QPdfView* self, QMargins* documentMargins) {
	self->documentMarginsChanged(*documentMargins);
}

void QPdfView_connect_documentMarginsChanged(QPdfView* self, intptr_t slot, void (*callback)(intptr_t, QMargins*), void (*release)(intptr_t)) {
	QPdfView::connect(self, static_cast<void (QPdfView::*)(QMargins)>(&QPdfView::documentMarginsChanged), self, [callback, release = seaqt::release_callback{slot,release}](QMargins documentMargins) {
			QMargins* sigval1 = new QMargins(documentMargins);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QPdfView_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfView_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfView_staticMetaObject() { return &QPdfView::staticMetaObject; }
void* QPdfView_vdata(VirtualQPdfView* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfView>()); }
VirtualQPdfView* vdata_QPdfView(void* vdata) { return reinterpret_cast<VirtualQPdfView*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfView>()); }

QMetaObject* QPdfView_virtualbase_metaObject(const VirtualQPdfView* self) {

	return (QMetaObject*) self->QPdfView::metaObject();
}

void* QPdfView_virtualbase_metacast(VirtualQPdfView* self, const char* param1) {

	return self->QPdfView::qt_metacast(param1);
}

int QPdfView_virtualbase_metacall(VirtualQPdfView* self, int param1, int param2, void** param3) {

	return self->QPdfView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QPdfView_virtualbase_paintEvent(VirtualQPdfView* self, QPaintEvent* event) {

	self->QPdfView::paintEvent(event);
}

void QPdfView_virtualbase_resizeEvent(VirtualQPdfView* self, QResizeEvent* event) {

	self->QPdfView::resizeEvent(event);
}

void QPdfView_virtualbase_scrollContentsBy(VirtualQPdfView* self, int dx, int dy) {

	self->QPdfView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

QSize* QPdfView_virtualbase_minimumSizeHint(const VirtualQPdfView* self) {

	return new QSize(self->QPdfView::minimumSizeHint());
}

QSize* QPdfView_virtualbase_sizeHint(const VirtualQPdfView* self) {

	return new QSize(self->QPdfView::sizeHint());
}

void QPdfView_virtualbase_setupViewport(VirtualQPdfView* self, QWidget* viewport) {

	self->QPdfView::setupViewport(viewport);
}

bool QPdfView_virtualbase_eventFilter(VirtualQPdfView* self, QObject* param1, QEvent* param2) {

	return self->QPdfView::eventFilter(param1, param2);
}

bool QPdfView_virtualbase_event(VirtualQPdfView* self, QEvent* param1) {

	return self->QPdfView::event(param1);
}

bool QPdfView_virtualbase_viewportEvent(VirtualQPdfView* self, QEvent* param1) {

	return self->QPdfView::viewportEvent(param1);
}

void QPdfView_virtualbase_mousePressEvent(VirtualQPdfView* self, QMouseEvent* param1) {

	self->QPdfView::mousePressEvent(param1);
}

void QPdfView_virtualbase_mouseReleaseEvent(VirtualQPdfView* self, QMouseEvent* param1) {

	self->QPdfView::mouseReleaseEvent(param1);
}

void QPdfView_virtualbase_mouseDoubleClickEvent(VirtualQPdfView* self, QMouseEvent* param1) {

	self->QPdfView::mouseDoubleClickEvent(param1);
}

void QPdfView_virtualbase_mouseMoveEvent(VirtualQPdfView* self, QMouseEvent* param1) {

	self->QPdfView::mouseMoveEvent(param1);
}

void QPdfView_virtualbase_wheelEvent(VirtualQPdfView* self, QWheelEvent* param1) {

	self->QPdfView::wheelEvent(param1);
}

void QPdfView_virtualbase_contextMenuEvent(VirtualQPdfView* self, QContextMenuEvent* param1) {

	self->QPdfView::contextMenuEvent(param1);
}

void QPdfView_virtualbase_dragEnterEvent(VirtualQPdfView* self, QDragEnterEvent* param1) {

	self->QPdfView::dragEnterEvent(param1);
}

void QPdfView_virtualbase_dragMoveEvent(VirtualQPdfView* self, QDragMoveEvent* param1) {

	self->QPdfView::dragMoveEvent(param1);
}

void QPdfView_virtualbase_dragLeaveEvent(VirtualQPdfView* self, QDragLeaveEvent* param1) {

	self->QPdfView::dragLeaveEvent(param1);
}

void QPdfView_virtualbase_dropEvent(VirtualQPdfView* self, QDropEvent* param1) {

	self->QPdfView::dropEvent(param1);
}

void QPdfView_virtualbase_keyPressEvent(VirtualQPdfView* self, QKeyEvent* param1) {

	self->QPdfView::keyPressEvent(param1);
}

QSize* QPdfView_virtualbase_viewportSizeHint(const VirtualQPdfView* self) {

	return new QSize(self->QPdfView::viewportSizeHint());
}

void QPdfView_virtualbase_changeEvent(VirtualQPdfView* self, QEvent* param1) {

	self->QPdfView::changeEvent(param1);
}

void QPdfView_virtualbase_initStyleOption(const VirtualQPdfView* self, QStyleOptionFrame* option) {

	self->QPdfView::initStyleOption(option);
}

int QPdfView_virtualbase_devType(const VirtualQPdfView* self) {

	return self->QPdfView::devType();
}

void QPdfView_virtualbase_setVisible(VirtualQPdfView* self, bool visible) {

	self->QPdfView::setVisible(visible);
}

int QPdfView_virtualbase_heightForWidth(const VirtualQPdfView* self, int param1) {

	return self->QPdfView::heightForWidth(static_cast<int>(param1));
}

bool QPdfView_virtualbase_hasHeightForWidth(const VirtualQPdfView* self) {

	return self->QPdfView::hasHeightForWidth();
}

QPaintEngine* QPdfView_virtualbase_paintEngine(const VirtualQPdfView* self) {

	return self->QPdfView::paintEngine();
}

void QPdfView_virtualbase_keyReleaseEvent(VirtualQPdfView* self, QKeyEvent* event) {

	self->QPdfView::keyReleaseEvent(event);
}

void QPdfView_virtualbase_focusInEvent(VirtualQPdfView* self, QFocusEvent* event) {

	self->QPdfView::focusInEvent(event);
}

void QPdfView_virtualbase_focusOutEvent(VirtualQPdfView* self, QFocusEvent* event) {

	self->QPdfView::focusOutEvent(event);
}

void QPdfView_virtualbase_enterEvent(VirtualQPdfView* self, QEnterEvent* event) {

	self->QPdfView::enterEvent(event);
}

void QPdfView_virtualbase_leaveEvent(VirtualQPdfView* self, QEvent* event) {

	self->QPdfView::leaveEvent(event);
}

void QPdfView_virtualbase_moveEvent(VirtualQPdfView* self, QMoveEvent* event) {

	self->QPdfView::moveEvent(event);
}

void QPdfView_virtualbase_closeEvent(VirtualQPdfView* self, QCloseEvent* event) {

	self->QPdfView::closeEvent(event);
}

void QPdfView_virtualbase_tabletEvent(VirtualQPdfView* self, QTabletEvent* event) {

	self->QPdfView::tabletEvent(event);
}

void QPdfView_virtualbase_actionEvent(VirtualQPdfView* self, QActionEvent* event) {

	self->QPdfView::actionEvent(event);
}

void QPdfView_virtualbase_showEvent(VirtualQPdfView* self, QShowEvent* event) {

	self->QPdfView::showEvent(event);
}

void QPdfView_virtualbase_hideEvent(VirtualQPdfView* self, QHideEvent* event) {

	self->QPdfView::hideEvent(event);
}

bool QPdfView_virtualbase_nativeEvent(VirtualQPdfView* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPdfView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QPdfView_virtualbase_metric(const VirtualQPdfView* self, int param1) {

	return self->QPdfView::metric(static_cast<VirtualQPdfView::PaintDeviceMetric>(param1));
}

void QPdfView_virtualbase_initPainter(const VirtualQPdfView* self, QPainter* painter) {

	self->QPdfView::initPainter(painter);
}

QPaintDevice* QPdfView_virtualbase_redirected(const VirtualQPdfView* self, QPoint* offset) {

	return self->QPdfView::redirected(offset);
}

QPainter* QPdfView_virtualbase_sharedPainter(const VirtualQPdfView* self) {

	return self->QPdfView::sharedPainter();
}

void QPdfView_virtualbase_inputMethodEvent(VirtualQPdfView* self, QInputMethodEvent* param1) {

	self->QPdfView::inputMethodEvent(param1);
}

QVariant* QPdfView_virtualbase_inputMethodQuery(const VirtualQPdfView* self, int param1) {

	return new QVariant(self->QPdfView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPdfView_virtualbase_focusNextPrevChild(VirtualQPdfView* self, bool next) {

	return self->QPdfView::focusNextPrevChild(next);
}

void QPdfView_virtualbase_timerEvent(VirtualQPdfView* self, QTimerEvent* event) {

	self->QPdfView::timerEvent(event);
}

void QPdfView_virtualbase_childEvent(VirtualQPdfView* self, QChildEvent* event) {

	self->QPdfView::childEvent(event);
}

void QPdfView_virtualbase_customEvent(VirtualQPdfView* self, QEvent* event) {

	self->QPdfView::customEvent(event);
}

void QPdfView_virtualbase_connectNotify(VirtualQPdfView* self, QMetaMethod* signal) {

	self->QPdfView::connectNotify(*signal);
}

void QPdfView_virtualbase_disconnectNotify(VirtualQPdfView* self, QMetaMethod* signal) {

	self->QPdfView::disconnectNotify(*signal);
}

void QPdfView_protectedbase_setViewportMargins_left_top_right_bottom(VirtualQPdfView* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QPdfView_protectedbase_viewportMargins(const VirtualQPdfView* self) {
	return new QMargins(self->viewportMargins());
}

void QPdfView_protectedbase_drawFrame(VirtualQPdfView* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QPdfView_protectedbase_updateMicroFocus(VirtualQPdfView* self) {
	self->updateMicroFocus();
}

void QPdfView_protectedbase_create(VirtualQPdfView* self) {
	self->create();
}

void QPdfView_protectedbase_destroy(VirtualQPdfView* self) {
	self->destroy();
}

bool QPdfView_protectedbase_focusNextChild(VirtualQPdfView* self) {
	return self->focusNextChild();
}

bool QPdfView_protectedbase_focusPreviousChild(VirtualQPdfView* self) {
	return self->focusPreviousChild();
}

QObject* QPdfView_protectedbase_sender(const VirtualQPdfView* self) {
	return self->sender();
}

int QPdfView_protectedbase_senderSignalIndex(const VirtualQPdfView* self) {
	return self->senderSignalIndex();
}

int QPdfView_protectedbase_receivers(const VirtualQPdfView* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfView_protectedbase_isSignalConnected(const VirtualQPdfView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfView_delete(QPdfView* self) {
	delete self;
}

