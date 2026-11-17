#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesignerFormWindowInterface>
#include <QDesignerObjectInspectorInterface>
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
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <abstractobjectinspector.h>
#include "gen_abstractobjectinspector.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerObjectInspectorInterface final : public QDesignerObjectInspectorInterface {
	const QDesignerObjectInspectorInterface_VTable* vtbl;
public:
	friend void* QDesignerObjectInspectorInterface_vdata(VirtualQDesignerObjectInspectorInterface* self);
	friend VirtualQDesignerObjectInspectorInterface* vdata_QDesignerObjectInspectorInterface(void* vdata);

	VirtualQDesignerObjectInspectorInterface(const QDesignerObjectInspectorInterface_VTable* vtbl, QWidget* parent): QDesignerObjectInspectorInterface(parent), vtbl(vtbl) {}
	VirtualQDesignerObjectInspectorInterface(const QDesignerObjectInspectorInterface_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QDesignerObjectInspectorInterface(parent, flags), vtbl(vtbl) {}

	virtual ~VirtualQDesignerObjectInspectorInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerObjectInspectorInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerObjectInspectorInterface_virtualbase_metaObject(const VirtualQDesignerObjectInspectorInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerObjectInspectorInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerObjectInspectorInterface_virtualbase_metacast(VirtualQDesignerObjectInspectorInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerObjectInspectorInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerObjectInspectorInterface_virtualbase_metacall(VirtualQDesignerObjectInspectorInterface* self, int param1, int param2, void** param3);

	virtual void setFormWindow(QDesignerFormWindowInterface* formWindow) override {
		if (vtbl->setFormWindow == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QDesignerFormWindowInterface* sigval1 = formWindow;
		vtbl->setFormWindow(this, sigval1);
	}

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesignerObjectInspectorInterface::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerObjectInspectorInterface_virtualbase_devType(const VirtualQDesignerObjectInspectorInterface* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesignerObjectInspectorInterface::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_setVisible(VirtualQDesignerObjectInspectorInterface* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesignerObjectInspectorInterface::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerObjectInspectorInterface_virtualbase_sizeHint(const VirtualQDesignerObjectInspectorInterface* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesignerObjectInspectorInterface::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerObjectInspectorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerObjectInspectorInterface* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesignerObjectInspectorInterface::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerObjectInspectorInterface_virtualbase_heightForWidth(const VirtualQDesignerObjectInspectorInterface* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesignerObjectInspectorInterface::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerObjectInspectorInterface* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesignerObjectInspectorInterface::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QDesignerObjectInspectorInterface_virtualbase_paintEngine(const VirtualQDesignerObjectInspectorInterface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerObjectInspectorInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerObjectInspectorInterface_virtualbase_event(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesignerObjectInspectorInterface::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_mousePressEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesignerObjectInspectorInterface::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesignerObjectInspectorInterface::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesignerObjectInspectorInterface::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesignerObjectInspectorInterface::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_wheelEvent(VirtualQDesignerObjectInspectorInterface* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesignerObjectInspectorInterface::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_keyPressEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesignerObjectInspectorInterface::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesignerObjectInspectorInterface::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_focusInEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesignerObjectInspectorInterface::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_focusOutEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesignerObjectInspectorInterface::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_enterEvent(VirtualQDesignerObjectInspectorInterface* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesignerObjectInspectorInterface::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_leaveEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesignerObjectInspectorInterface::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_paintEvent(VirtualQDesignerObjectInspectorInterface* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesignerObjectInspectorInterface::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_moveEvent(VirtualQDesignerObjectInspectorInterface* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDesignerObjectInspectorInterface::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_resizeEvent(VirtualQDesignerObjectInspectorInterface* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesignerObjectInspectorInterface::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_closeEvent(VirtualQDesignerObjectInspectorInterface* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesignerObjectInspectorInterface::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_contextMenuEvent(VirtualQDesignerObjectInspectorInterface* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesignerObjectInspectorInterface::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_tabletEvent(VirtualQDesignerObjectInspectorInterface* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesignerObjectInspectorInterface::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_actionEvent(VirtualQDesignerObjectInspectorInterface* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesignerObjectInspectorInterface::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_dragEnterEvent(VirtualQDesignerObjectInspectorInterface* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesignerObjectInspectorInterface::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_dragMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesignerObjectInspectorInterface::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesignerObjectInspectorInterface::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_dropEvent(VirtualQDesignerObjectInspectorInterface* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesignerObjectInspectorInterface::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_showEvent(VirtualQDesignerObjectInspectorInterface* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesignerObjectInspectorInterface::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_hideEvent(VirtualQDesignerObjectInspectorInterface* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesignerObjectInspectorInterface::nativeEvent(eventType, message, result);
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

	friend bool QDesignerObjectInspectorInterface_virtualbase_nativeEvent(VirtualQDesignerObjectInspectorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesignerObjectInspectorInterface::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_changeEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesignerObjectInspectorInterface::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerObjectInspectorInterface_virtualbase_metric(const VirtualQDesignerObjectInspectorInterface* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesignerObjectInspectorInterface::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_initPainter(const VirtualQDesignerObjectInspectorInterface* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesignerObjectInspectorInterface::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QDesignerObjectInspectorInterface_virtualbase_redirected(const VirtualQDesignerObjectInspectorInterface* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesignerObjectInspectorInterface::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QDesignerObjectInspectorInterface_virtualbase_sharedPainter(const VirtualQDesignerObjectInspectorInterface* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesignerObjectInspectorInterface::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_inputMethodEvent(VirtualQDesignerObjectInspectorInterface* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesignerObjectInspectorInterface::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QDesignerObjectInspectorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerObjectInspectorInterface* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesignerObjectInspectorInterface::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerObjectInspectorInterface* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerObjectInspectorInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerObjectInspectorInterface_virtualbase_eventFilter(VirtualQDesignerObjectInspectorInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerObjectInspectorInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_timerEvent(VirtualQDesignerObjectInspectorInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerObjectInspectorInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_childEvent(VirtualQDesignerObjectInspectorInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerObjectInspectorInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_customEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerObjectInspectorInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_connectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerObjectInspectorInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerObjectInspectorInterface_virtualbase_disconnectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesignerObjectInspectorInterface_protectedbase_updateMicroFocus(VirtualQDesignerObjectInspectorInterface* self);
	friend void QDesignerObjectInspectorInterface_protectedbase_create(VirtualQDesignerObjectInspectorInterface* self);
	friend void QDesignerObjectInspectorInterface_protectedbase_destroy(VirtualQDesignerObjectInspectorInterface* self);
	friend bool QDesignerObjectInspectorInterface_protectedbase_focusNextChild(VirtualQDesignerObjectInspectorInterface* self);
	friend bool QDesignerObjectInspectorInterface_protectedbase_focusPreviousChild(VirtualQDesignerObjectInspectorInterface* self);
	friend QObject* QDesignerObjectInspectorInterface_protectedbase_sender(const VirtualQDesignerObjectInspectorInterface* self);
	friend int QDesignerObjectInspectorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerObjectInspectorInterface* self);
	friend int QDesignerObjectInspectorInterface_protectedbase_receivers(const VirtualQDesignerObjectInspectorInterface* self, const char* signal);
	friend bool QDesignerObjectInspectorInterface_protectedbase_isSignalConnected(const VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal);
};

VirtualQDesignerObjectInspectorInterface* QDesignerObjectInspectorInterface_new_parent(const QDesignerObjectInspectorInterface_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerObjectInspectorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerObjectInspectorInterface(vtbl, parent) : nullptr;
}

VirtualQDesignerObjectInspectorInterface* QDesignerObjectInspectorInterface_new_parent_flags(const QDesignerObjectInspectorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerObjectInspectorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerObjectInspectorInterface(vtbl, parent, static_cast<Qt::WindowFlags>(flags)) : nullptr;
}

void QDesignerObjectInspectorInterface_virtbase(QDesignerObjectInspectorInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerObjectInspectorInterface_metaObject(const QDesignerObjectInspectorInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerObjectInspectorInterface_metacast(QDesignerObjectInspectorInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerObjectInspectorInterface_metacall(QDesignerObjectInspectorInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerObjectInspectorInterface_tr_s(const char* s) {
	QString _ret = QDesignerObjectInspectorInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerObjectInspectorInterface_setFormWindow(QDesignerObjectInspectorInterface* self, QDesignerFormWindowInterface* formWindow) {
	self->setFormWindow(formWindow);
}

struct seaqt_string QDesignerObjectInspectorInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerObjectInspectorInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerObjectInspectorInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerObjectInspectorInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerObjectInspectorInterface_staticMetaObject() { return &QDesignerObjectInspectorInterface::staticMetaObject; }
void* QDesignerObjectInspectorInterface_vdata(VirtualQDesignerObjectInspectorInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerObjectInspectorInterface>()); }
VirtualQDesignerObjectInspectorInterface* vdata_QDesignerObjectInspectorInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerObjectInspectorInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerObjectInspectorInterface>()); }

QMetaObject* QDesignerObjectInspectorInterface_virtualbase_metaObject(const VirtualQDesignerObjectInspectorInterface* self) {

	return (QMetaObject*) self->QDesignerObjectInspectorInterface::metaObject();
}

void* QDesignerObjectInspectorInterface_virtualbase_metacast(VirtualQDesignerObjectInspectorInterface* self, const char* param1) {

	return self->QDesignerObjectInspectorInterface::qt_metacast(param1);
}

int QDesignerObjectInspectorInterface_virtualbase_metacall(VirtualQDesignerObjectInspectorInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerObjectInspectorInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerObjectInspectorInterface_virtualbase_devType(const VirtualQDesignerObjectInspectorInterface* self) {

	return self->QDesignerObjectInspectorInterface::devType();
}

void QDesignerObjectInspectorInterface_virtualbase_setVisible(VirtualQDesignerObjectInspectorInterface* self, bool visible) {

	self->QDesignerObjectInspectorInterface::setVisible(visible);
}

QSize* QDesignerObjectInspectorInterface_virtualbase_sizeHint(const VirtualQDesignerObjectInspectorInterface* self) {

	return new QSize(self->QDesignerObjectInspectorInterface::sizeHint());
}

QSize* QDesignerObjectInspectorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerObjectInspectorInterface* self) {

	return new QSize(self->QDesignerObjectInspectorInterface::minimumSizeHint());
}

int QDesignerObjectInspectorInterface_virtualbase_heightForWidth(const VirtualQDesignerObjectInspectorInterface* self, int param1) {

	return self->QDesignerObjectInspectorInterface::heightForWidth(static_cast<int>(param1));
}

bool QDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerObjectInspectorInterface* self) {

	return self->QDesignerObjectInspectorInterface::hasHeightForWidth();
}

QPaintEngine* QDesignerObjectInspectorInterface_virtualbase_paintEngine(const VirtualQDesignerObjectInspectorInterface* self) {

	return self->QDesignerObjectInspectorInterface::paintEngine();
}

bool QDesignerObjectInspectorInterface_virtualbase_event(VirtualQDesignerObjectInspectorInterface* self, QEvent* event) {

	return self->QDesignerObjectInspectorInterface::event(event);
}

void QDesignerObjectInspectorInterface_virtualbase_mousePressEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event) {

	self->QDesignerObjectInspectorInterface::mousePressEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event) {

	self->QDesignerObjectInspectorInterface::mouseReleaseEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event) {

	self->QDesignerObjectInspectorInterface::mouseDoubleClickEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QMouseEvent* event) {

	self->QDesignerObjectInspectorInterface::mouseMoveEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_wheelEvent(VirtualQDesignerObjectInspectorInterface* self, QWheelEvent* event) {

	self->QDesignerObjectInspectorInterface::wheelEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_keyPressEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event) {

	self->QDesignerObjectInspectorInterface::keyPressEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerObjectInspectorInterface* self, QKeyEvent* event) {

	self->QDesignerObjectInspectorInterface::keyReleaseEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_focusInEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event) {

	self->QDesignerObjectInspectorInterface::focusInEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_focusOutEvent(VirtualQDesignerObjectInspectorInterface* self, QFocusEvent* event) {

	self->QDesignerObjectInspectorInterface::focusOutEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_enterEvent(VirtualQDesignerObjectInspectorInterface* self, QEnterEvent* event) {

	self->QDesignerObjectInspectorInterface::enterEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_leaveEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event) {

	self->QDesignerObjectInspectorInterface::leaveEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_paintEvent(VirtualQDesignerObjectInspectorInterface* self, QPaintEvent* event) {

	self->QDesignerObjectInspectorInterface::paintEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_moveEvent(VirtualQDesignerObjectInspectorInterface* self, QMoveEvent* event) {

	self->QDesignerObjectInspectorInterface::moveEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_resizeEvent(VirtualQDesignerObjectInspectorInterface* self, QResizeEvent* event) {

	self->QDesignerObjectInspectorInterface::resizeEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_closeEvent(VirtualQDesignerObjectInspectorInterface* self, QCloseEvent* event) {

	self->QDesignerObjectInspectorInterface::closeEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_contextMenuEvent(VirtualQDesignerObjectInspectorInterface* self, QContextMenuEvent* event) {

	self->QDesignerObjectInspectorInterface::contextMenuEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_tabletEvent(VirtualQDesignerObjectInspectorInterface* self, QTabletEvent* event) {

	self->QDesignerObjectInspectorInterface::tabletEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_actionEvent(VirtualQDesignerObjectInspectorInterface* self, QActionEvent* event) {

	self->QDesignerObjectInspectorInterface::actionEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_dragEnterEvent(VirtualQDesignerObjectInspectorInterface* self, QDragEnterEvent* event) {

	self->QDesignerObjectInspectorInterface::dragEnterEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_dragMoveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragMoveEvent* event) {

	self->QDesignerObjectInspectorInterface::dragMoveEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerObjectInspectorInterface* self, QDragLeaveEvent* event) {

	self->QDesignerObjectInspectorInterface::dragLeaveEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_dropEvent(VirtualQDesignerObjectInspectorInterface* self, QDropEvent* event) {

	self->QDesignerObjectInspectorInterface::dropEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_showEvent(VirtualQDesignerObjectInspectorInterface* self, QShowEvent* event) {

	self->QDesignerObjectInspectorInterface::showEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_hideEvent(VirtualQDesignerObjectInspectorInterface* self, QHideEvent* event) {

	self->QDesignerObjectInspectorInterface::hideEvent(event);
}

bool QDesignerObjectInspectorInterface_virtualbase_nativeEvent(VirtualQDesignerObjectInspectorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesignerObjectInspectorInterface::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QDesignerObjectInspectorInterface_virtualbase_changeEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* param1) {

	self->QDesignerObjectInspectorInterface::changeEvent(param1);
}

int QDesignerObjectInspectorInterface_virtualbase_metric(const VirtualQDesignerObjectInspectorInterface* self, int param1) {

	return self->QDesignerObjectInspectorInterface::metric(static_cast<VirtualQDesignerObjectInspectorInterface::PaintDeviceMetric>(param1));
}

void QDesignerObjectInspectorInterface_virtualbase_initPainter(const VirtualQDesignerObjectInspectorInterface* self, QPainter* painter) {

	self->QDesignerObjectInspectorInterface::initPainter(painter);
}

QPaintDevice* QDesignerObjectInspectorInterface_virtualbase_redirected(const VirtualQDesignerObjectInspectorInterface* self, QPoint* offset) {

	return self->QDesignerObjectInspectorInterface::redirected(offset);
}

QPainter* QDesignerObjectInspectorInterface_virtualbase_sharedPainter(const VirtualQDesignerObjectInspectorInterface* self) {

	return self->QDesignerObjectInspectorInterface::sharedPainter();
}

void QDesignerObjectInspectorInterface_virtualbase_inputMethodEvent(VirtualQDesignerObjectInspectorInterface* self, QInputMethodEvent* param1) {

	self->QDesignerObjectInspectorInterface::inputMethodEvent(param1);
}

QVariant* QDesignerObjectInspectorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerObjectInspectorInterface* self, int param1) {

	return new QVariant(self->QDesignerObjectInspectorInterface::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerObjectInspectorInterface* self, bool next) {

	return self->QDesignerObjectInspectorInterface::focusNextPrevChild(next);
}

bool QDesignerObjectInspectorInterface_virtualbase_eventFilter(VirtualQDesignerObjectInspectorInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerObjectInspectorInterface::eventFilter(watched, event);
}

void QDesignerObjectInspectorInterface_virtualbase_timerEvent(VirtualQDesignerObjectInspectorInterface* self, QTimerEvent* event) {

	self->QDesignerObjectInspectorInterface::timerEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_childEvent(VirtualQDesignerObjectInspectorInterface* self, QChildEvent* event) {

	self->QDesignerObjectInspectorInterface::childEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_customEvent(VirtualQDesignerObjectInspectorInterface* self, QEvent* event) {

	self->QDesignerObjectInspectorInterface::customEvent(event);
}

void QDesignerObjectInspectorInterface_virtualbase_connectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal) {

	self->QDesignerObjectInspectorInterface::connectNotify(*signal);
}

void QDesignerObjectInspectorInterface_virtualbase_disconnectNotify(VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal) {

	self->QDesignerObjectInspectorInterface::disconnectNotify(*signal);
}

void QDesignerObjectInspectorInterface_protectedbase_updateMicroFocus(VirtualQDesignerObjectInspectorInterface* self) {
	self->updateMicroFocus();
}

void QDesignerObjectInspectorInterface_protectedbase_create(VirtualQDesignerObjectInspectorInterface* self) {
	self->create();
}

void QDesignerObjectInspectorInterface_protectedbase_destroy(VirtualQDesignerObjectInspectorInterface* self) {
	self->destroy();
}

bool QDesignerObjectInspectorInterface_protectedbase_focusNextChild(VirtualQDesignerObjectInspectorInterface* self) {
	return self->focusNextChild();
}

bool QDesignerObjectInspectorInterface_protectedbase_focusPreviousChild(VirtualQDesignerObjectInspectorInterface* self) {
	return self->focusPreviousChild();
}

QObject* QDesignerObjectInspectorInterface_protectedbase_sender(const VirtualQDesignerObjectInspectorInterface* self) {
	return self->sender();
}

int QDesignerObjectInspectorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerObjectInspectorInterface* self) {
	return self->senderSignalIndex();
}

int QDesignerObjectInspectorInterface_protectedbase_receivers(const VirtualQDesignerObjectInspectorInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesignerObjectInspectorInterface_protectedbase_isSignalConnected(const VirtualQDesignerObjectInspectorInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesignerObjectInspectorInterface_delete(QDesignerObjectInspectorInterface* self) {
	delete self;
}

