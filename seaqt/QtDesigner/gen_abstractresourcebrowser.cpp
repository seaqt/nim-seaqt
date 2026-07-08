#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesignerResourceBrowserInterface>
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
#include <abstractresourcebrowser.h>
#include "gen_abstractresourcebrowser.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerResourceBrowserInterface final : public QDesignerResourceBrowserInterface {
	const QDesignerResourceBrowserInterface_VTable* vtbl;
public:
	friend void* QDesignerResourceBrowserInterface_vdata(VirtualQDesignerResourceBrowserInterface* self);
	friend VirtualQDesignerResourceBrowserInterface* vdata_QDesignerResourceBrowserInterface(void* vdata);

	VirtualQDesignerResourceBrowserInterface(const QDesignerResourceBrowserInterface_VTable* vtbl): QDesignerResourceBrowserInterface(), vtbl(vtbl) {}
	VirtualQDesignerResourceBrowserInterface(const QDesignerResourceBrowserInterface_VTable* vtbl, QWidget* parent): QDesignerResourceBrowserInterface(parent), vtbl(vtbl) {}

	virtual ~VirtualQDesignerResourceBrowserInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerResourceBrowserInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerResourceBrowserInterface_virtualbase_metaObject(const VirtualQDesignerResourceBrowserInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerResourceBrowserInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerResourceBrowserInterface_virtualbase_metacast(VirtualQDesignerResourceBrowserInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerResourceBrowserInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerResourceBrowserInterface_virtualbase_metacall(VirtualQDesignerResourceBrowserInterface* self, int param1, int param2, void** param3);

	virtual void setCurrentPath(const QString& filePath) override {
		if (vtbl->setCurrentPath == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString filePath_ret = filePath;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filePath_b = filePath_ret.toUtf8();
		struct seaqt_string filePath_ms;
		filePath_ms.len = filePath_b.length();
		filePath_ms.data = static_cast<char*>(malloc(filePath_ms.len));
		memcpy(filePath_ms.data, filePath_b.data(), filePath_ms.len);
		struct seaqt_string sigval1 = filePath_ms;
		vtbl->setCurrentPath(this, sigval1);
	}

	virtual QString currentPath() const override {
		if (vtbl->currentPath == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->currentPath(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesignerResourceBrowserInterface::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerResourceBrowserInterface_virtualbase_devType(const VirtualQDesignerResourceBrowserInterface* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesignerResourceBrowserInterface::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_setVisible(VirtualQDesignerResourceBrowserInterface* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesignerResourceBrowserInterface::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerResourceBrowserInterface_virtualbase_sizeHint(const VirtualQDesignerResourceBrowserInterface* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesignerResourceBrowserInterface::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerResourceBrowserInterface_virtualbase_minimumSizeHint(const VirtualQDesignerResourceBrowserInterface* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesignerResourceBrowserInterface::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerResourceBrowserInterface_virtualbase_heightForWidth(const VirtualQDesignerResourceBrowserInterface* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesignerResourceBrowserInterface::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerResourceBrowserInterface* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesignerResourceBrowserInterface::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QDesignerResourceBrowserInterface_virtualbase_paintEngine(const VirtualQDesignerResourceBrowserInterface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerResourceBrowserInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerResourceBrowserInterface_virtualbase_event(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesignerResourceBrowserInterface::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_mousePressEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesignerResourceBrowserInterface::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesignerResourceBrowserInterface::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesignerResourceBrowserInterface::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesignerResourceBrowserInterface::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_wheelEvent(VirtualQDesignerResourceBrowserInterface* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesignerResourceBrowserInterface::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_keyPressEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesignerResourceBrowserInterface::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesignerResourceBrowserInterface::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_focusInEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesignerResourceBrowserInterface::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_focusOutEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesignerResourceBrowserInterface::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_enterEvent(VirtualQDesignerResourceBrowserInterface* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesignerResourceBrowserInterface::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_leaveEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesignerResourceBrowserInterface::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_paintEvent(VirtualQDesignerResourceBrowserInterface* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesignerResourceBrowserInterface::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_moveEvent(VirtualQDesignerResourceBrowserInterface* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDesignerResourceBrowserInterface::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_resizeEvent(VirtualQDesignerResourceBrowserInterface* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesignerResourceBrowserInterface::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_closeEvent(VirtualQDesignerResourceBrowserInterface* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesignerResourceBrowserInterface::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_contextMenuEvent(VirtualQDesignerResourceBrowserInterface* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesignerResourceBrowserInterface::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_tabletEvent(VirtualQDesignerResourceBrowserInterface* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesignerResourceBrowserInterface::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_actionEvent(VirtualQDesignerResourceBrowserInterface* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesignerResourceBrowserInterface::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_dragEnterEvent(VirtualQDesignerResourceBrowserInterface* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesignerResourceBrowserInterface::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_dragMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesignerResourceBrowserInterface::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesignerResourceBrowserInterface::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_dropEvent(VirtualQDesignerResourceBrowserInterface* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesignerResourceBrowserInterface::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_showEvent(VirtualQDesignerResourceBrowserInterface* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesignerResourceBrowserInterface::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_hideEvent(VirtualQDesignerResourceBrowserInterface* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesignerResourceBrowserInterface::nativeEvent(eventType, message, result);
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

	friend bool QDesignerResourceBrowserInterface_virtualbase_nativeEvent(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesignerResourceBrowserInterface::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_changeEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesignerResourceBrowserInterface::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerResourceBrowserInterface_virtualbase_metric(const VirtualQDesignerResourceBrowserInterface* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesignerResourceBrowserInterface::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_initPainter(const VirtualQDesignerResourceBrowserInterface* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesignerResourceBrowserInterface::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QDesignerResourceBrowserInterface_virtualbase_redirected(const VirtualQDesignerResourceBrowserInterface* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesignerResourceBrowserInterface::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QDesignerResourceBrowserInterface_virtualbase_sharedPainter(const VirtualQDesignerResourceBrowserInterface* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesignerResourceBrowserInterface::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_inputMethodEvent(VirtualQDesignerResourceBrowserInterface* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesignerResourceBrowserInterface::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QDesignerResourceBrowserInterface_virtualbase_inputMethodQuery(const VirtualQDesignerResourceBrowserInterface* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesignerResourceBrowserInterface::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild(VirtualQDesignerResourceBrowserInterface* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerResourceBrowserInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerResourceBrowserInterface_virtualbase_eventFilter(VirtualQDesignerResourceBrowserInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerResourceBrowserInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_timerEvent(VirtualQDesignerResourceBrowserInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerResourceBrowserInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_childEvent(VirtualQDesignerResourceBrowserInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerResourceBrowserInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_customEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerResourceBrowserInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_connectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerResourceBrowserInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerResourceBrowserInterface_virtualbase_disconnectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesignerResourceBrowserInterface_protectedbase_updateMicroFocus(VirtualQDesignerResourceBrowserInterface* self);
	friend void QDesignerResourceBrowserInterface_protectedbase_create(VirtualQDesignerResourceBrowserInterface* self);
	friend void QDesignerResourceBrowserInterface_protectedbase_destroy(VirtualQDesignerResourceBrowserInterface* self);
	friend bool QDesignerResourceBrowserInterface_protectedbase_focusNextChild(VirtualQDesignerResourceBrowserInterface* self);
	friend bool QDesignerResourceBrowserInterface_protectedbase_focusPreviousChild(VirtualQDesignerResourceBrowserInterface* self);
	friend QObject* QDesignerResourceBrowserInterface_protectedbase_sender(const VirtualQDesignerResourceBrowserInterface* self);
	friend int QDesignerResourceBrowserInterface_protectedbase_senderSignalIndex(const VirtualQDesignerResourceBrowserInterface* self);
	friend int QDesignerResourceBrowserInterface_protectedbase_receivers(const VirtualQDesignerResourceBrowserInterface* self, const char* signal);
	friend bool QDesignerResourceBrowserInterface_protectedbase_isSignalConnected(const VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal);
};

VirtualQDesignerResourceBrowserInterface* QDesignerResourceBrowserInterface_new(const QDesignerResourceBrowserInterface_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerResourceBrowserInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerResourceBrowserInterface(vtbl) : nullptr;
}

VirtualQDesignerResourceBrowserInterface* QDesignerResourceBrowserInterface_new2(const QDesignerResourceBrowserInterface_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerResourceBrowserInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerResourceBrowserInterface(vtbl, parent) : nullptr;
}

void QDesignerResourceBrowserInterface_virtbase(QDesignerResourceBrowserInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerResourceBrowserInterface_metaObject(const QDesignerResourceBrowserInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerResourceBrowserInterface_metacast(QDesignerResourceBrowserInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerResourceBrowserInterface_metacall(QDesignerResourceBrowserInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerResourceBrowserInterface_tr(const char* s) {
	QString _ret = QDesignerResourceBrowserInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerResourceBrowserInterface_setCurrentPath(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->setCurrentPath(filePath_QString);
}

struct seaqt_string QDesignerResourceBrowserInterface_currentPath(const QDesignerResourceBrowserInterface* self) {
	QString _ret = self->currentPath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerResourceBrowserInterface_currentPathChanged(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->currentPathChanged(filePath_QString);
}

void QDesignerResourceBrowserInterface_connect_currentPathChanged(QDesignerResourceBrowserInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string);
		void operator()(const QString& filePath) {
			const QString filePath_ret = filePath;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray filePath_b = filePath_ret.toUtf8();
			struct seaqt_string filePath_ms;
			filePath_ms.len = filePath_b.length();
			filePath_ms.data = static_cast<char*>(malloc(filePath_ms.len));
			memcpy(filePath_ms.data, filePath_b.data(), filePath_ms.len);
			struct seaqt_string sigval1 = filePath_ms;
			callback(slot, sigval1);
		}
	};
	QDesignerResourceBrowserInterface::connect(self, static_cast<void (QDesignerResourceBrowserInterface::*)(const QString&)>(&QDesignerResourceBrowserInterface::currentPathChanged), self, local_caller{slot, callback, release});
}

void QDesignerResourceBrowserInterface_pathActivated(QDesignerResourceBrowserInterface* self, struct seaqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->pathActivated(filePath_QString);
}

void QDesignerResourceBrowserInterface_connect_pathActivated(QDesignerResourceBrowserInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct seaqt_string);
		void operator()(const QString& filePath) {
			const QString filePath_ret = filePath;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray filePath_b = filePath_ret.toUtf8();
			struct seaqt_string filePath_ms;
			filePath_ms.len = filePath_b.length();
			filePath_ms.data = static_cast<char*>(malloc(filePath_ms.len));
			memcpy(filePath_ms.data, filePath_b.data(), filePath_ms.len);
			struct seaqt_string sigval1 = filePath_ms;
			callback(slot, sigval1);
		}
	};
	QDesignerResourceBrowserInterface::connect(self, static_cast<void (QDesignerResourceBrowserInterface::*)(const QString&)>(&QDesignerResourceBrowserInterface::pathActivated), self, local_caller{slot, callback, release});
}

struct seaqt_string QDesignerResourceBrowserInterface_tr2(const char* s, const char* c) {
	QString _ret = QDesignerResourceBrowserInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerResourceBrowserInterface_tr3(const char* s, const char* c, int n) {
	QString _ret = QDesignerResourceBrowserInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerResourceBrowserInterface_staticMetaObject() { return &QDesignerResourceBrowserInterface::staticMetaObject; }
void* QDesignerResourceBrowserInterface_vdata(VirtualQDesignerResourceBrowserInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerResourceBrowserInterface>()); }
VirtualQDesignerResourceBrowserInterface* vdata_QDesignerResourceBrowserInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerResourceBrowserInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerResourceBrowserInterface>()); }

QMetaObject* QDesignerResourceBrowserInterface_virtualbase_metaObject(const VirtualQDesignerResourceBrowserInterface* self) {

	return (QMetaObject*) self->QDesignerResourceBrowserInterface::metaObject();
}

void* QDesignerResourceBrowserInterface_virtualbase_metacast(VirtualQDesignerResourceBrowserInterface* self, const char* param1) {

	return self->QDesignerResourceBrowserInterface::qt_metacast(param1);
}

int QDesignerResourceBrowserInterface_virtualbase_metacall(VirtualQDesignerResourceBrowserInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerResourceBrowserInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerResourceBrowserInterface_virtualbase_devType(const VirtualQDesignerResourceBrowserInterface* self) {

	return self->QDesignerResourceBrowserInterface::devType();
}

void QDesignerResourceBrowserInterface_virtualbase_setVisible(VirtualQDesignerResourceBrowserInterface* self, bool visible) {

	self->QDesignerResourceBrowserInterface::setVisible(visible);
}

QSize* QDesignerResourceBrowserInterface_virtualbase_sizeHint(const VirtualQDesignerResourceBrowserInterface* self) {

	return new QSize(self->QDesignerResourceBrowserInterface::sizeHint());
}

QSize* QDesignerResourceBrowserInterface_virtualbase_minimumSizeHint(const VirtualQDesignerResourceBrowserInterface* self) {

	return new QSize(self->QDesignerResourceBrowserInterface::minimumSizeHint());
}

int QDesignerResourceBrowserInterface_virtualbase_heightForWidth(const VirtualQDesignerResourceBrowserInterface* self, int param1) {

	return self->QDesignerResourceBrowserInterface::heightForWidth(static_cast<int>(param1));
}

bool QDesignerResourceBrowserInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerResourceBrowserInterface* self) {

	return self->QDesignerResourceBrowserInterface::hasHeightForWidth();
}

QPaintEngine* QDesignerResourceBrowserInterface_virtualbase_paintEngine(const VirtualQDesignerResourceBrowserInterface* self) {

	return self->QDesignerResourceBrowserInterface::paintEngine();
}

bool QDesignerResourceBrowserInterface_virtualbase_event(VirtualQDesignerResourceBrowserInterface* self, QEvent* event) {

	return self->QDesignerResourceBrowserInterface::event(event);
}

void QDesignerResourceBrowserInterface_virtualbase_mousePressEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event) {

	self->QDesignerResourceBrowserInterface::mousePressEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event) {

	self->QDesignerResourceBrowserInterface::mouseReleaseEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event) {

	self->QDesignerResourceBrowserInterface::mouseDoubleClickEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_mouseMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QMouseEvent* event) {

	self->QDesignerResourceBrowserInterface::mouseMoveEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_wheelEvent(VirtualQDesignerResourceBrowserInterface* self, QWheelEvent* event) {

	self->QDesignerResourceBrowserInterface::wheelEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_keyPressEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event) {

	self->QDesignerResourceBrowserInterface::keyPressEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_keyReleaseEvent(VirtualQDesignerResourceBrowserInterface* self, QKeyEvent* event) {

	self->QDesignerResourceBrowserInterface::keyReleaseEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_focusInEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event) {

	self->QDesignerResourceBrowserInterface::focusInEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_focusOutEvent(VirtualQDesignerResourceBrowserInterface* self, QFocusEvent* event) {

	self->QDesignerResourceBrowserInterface::focusOutEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_enterEvent(VirtualQDesignerResourceBrowserInterface* self, QEnterEvent* event) {

	self->QDesignerResourceBrowserInterface::enterEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_leaveEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event) {

	self->QDesignerResourceBrowserInterface::leaveEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_paintEvent(VirtualQDesignerResourceBrowserInterface* self, QPaintEvent* event) {

	self->QDesignerResourceBrowserInterface::paintEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_moveEvent(VirtualQDesignerResourceBrowserInterface* self, QMoveEvent* event) {

	self->QDesignerResourceBrowserInterface::moveEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_resizeEvent(VirtualQDesignerResourceBrowserInterface* self, QResizeEvent* event) {

	self->QDesignerResourceBrowserInterface::resizeEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_closeEvent(VirtualQDesignerResourceBrowserInterface* self, QCloseEvent* event) {

	self->QDesignerResourceBrowserInterface::closeEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_contextMenuEvent(VirtualQDesignerResourceBrowserInterface* self, QContextMenuEvent* event) {

	self->QDesignerResourceBrowserInterface::contextMenuEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_tabletEvent(VirtualQDesignerResourceBrowserInterface* self, QTabletEvent* event) {

	self->QDesignerResourceBrowserInterface::tabletEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_actionEvent(VirtualQDesignerResourceBrowserInterface* self, QActionEvent* event) {

	self->QDesignerResourceBrowserInterface::actionEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_dragEnterEvent(VirtualQDesignerResourceBrowserInterface* self, QDragEnterEvent* event) {

	self->QDesignerResourceBrowserInterface::dragEnterEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_dragMoveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragMoveEvent* event) {

	self->QDesignerResourceBrowserInterface::dragMoveEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_dragLeaveEvent(VirtualQDesignerResourceBrowserInterface* self, QDragLeaveEvent* event) {

	self->QDesignerResourceBrowserInterface::dragLeaveEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_dropEvent(VirtualQDesignerResourceBrowserInterface* self, QDropEvent* event) {

	self->QDesignerResourceBrowserInterface::dropEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_showEvent(VirtualQDesignerResourceBrowserInterface* self, QShowEvent* event) {

	self->QDesignerResourceBrowserInterface::showEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_hideEvent(VirtualQDesignerResourceBrowserInterface* self, QHideEvent* event) {

	self->QDesignerResourceBrowserInterface::hideEvent(event);
}

bool QDesignerResourceBrowserInterface_virtualbase_nativeEvent(VirtualQDesignerResourceBrowserInterface* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesignerResourceBrowserInterface::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QDesignerResourceBrowserInterface_virtualbase_changeEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* param1) {

	self->QDesignerResourceBrowserInterface::changeEvent(param1);
}

int QDesignerResourceBrowserInterface_virtualbase_metric(const VirtualQDesignerResourceBrowserInterface* self, int param1) {

	return self->QDesignerResourceBrowserInterface::metric(static_cast<VirtualQDesignerResourceBrowserInterface::PaintDeviceMetric>(param1));
}

void QDesignerResourceBrowserInterface_virtualbase_initPainter(const VirtualQDesignerResourceBrowserInterface* self, QPainter* painter) {

	self->QDesignerResourceBrowserInterface::initPainter(painter);
}

QPaintDevice* QDesignerResourceBrowserInterface_virtualbase_redirected(const VirtualQDesignerResourceBrowserInterface* self, QPoint* offset) {

	return self->QDesignerResourceBrowserInterface::redirected(offset);
}

QPainter* QDesignerResourceBrowserInterface_virtualbase_sharedPainter(const VirtualQDesignerResourceBrowserInterface* self) {

	return self->QDesignerResourceBrowserInterface::sharedPainter();
}

void QDesignerResourceBrowserInterface_virtualbase_inputMethodEvent(VirtualQDesignerResourceBrowserInterface* self, QInputMethodEvent* param1) {

	self->QDesignerResourceBrowserInterface::inputMethodEvent(param1);
}

QVariant* QDesignerResourceBrowserInterface_virtualbase_inputMethodQuery(const VirtualQDesignerResourceBrowserInterface* self, int param1) {

	return new QVariant(self->QDesignerResourceBrowserInterface::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesignerResourceBrowserInterface_virtualbase_focusNextPrevChild(VirtualQDesignerResourceBrowserInterface* self, bool next) {

	return self->QDesignerResourceBrowserInterface::focusNextPrevChild(next);
}

bool QDesignerResourceBrowserInterface_virtualbase_eventFilter(VirtualQDesignerResourceBrowserInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerResourceBrowserInterface::eventFilter(watched, event);
}

void QDesignerResourceBrowserInterface_virtualbase_timerEvent(VirtualQDesignerResourceBrowserInterface* self, QTimerEvent* event) {

	self->QDesignerResourceBrowserInterface::timerEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_childEvent(VirtualQDesignerResourceBrowserInterface* self, QChildEvent* event) {

	self->QDesignerResourceBrowserInterface::childEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_customEvent(VirtualQDesignerResourceBrowserInterface* self, QEvent* event) {

	self->QDesignerResourceBrowserInterface::customEvent(event);
}

void QDesignerResourceBrowserInterface_virtualbase_connectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal) {

	self->QDesignerResourceBrowserInterface::connectNotify(*signal);
}

void QDesignerResourceBrowserInterface_virtualbase_disconnectNotify(VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal) {

	self->QDesignerResourceBrowserInterface::disconnectNotify(*signal);
}

void QDesignerResourceBrowserInterface_protectedbase_updateMicroFocus(VirtualQDesignerResourceBrowserInterface* self) {
	self->updateMicroFocus();
}

void QDesignerResourceBrowserInterface_protectedbase_create(VirtualQDesignerResourceBrowserInterface* self) {
	self->create();
}

void QDesignerResourceBrowserInterface_protectedbase_destroy(VirtualQDesignerResourceBrowserInterface* self) {
	self->destroy();
}

bool QDesignerResourceBrowserInterface_protectedbase_focusNextChild(VirtualQDesignerResourceBrowserInterface* self) {
	return self->focusNextChild();
}

bool QDesignerResourceBrowserInterface_protectedbase_focusPreviousChild(VirtualQDesignerResourceBrowserInterface* self) {
	return self->focusPreviousChild();
}

QObject* QDesignerResourceBrowserInterface_protectedbase_sender(const VirtualQDesignerResourceBrowserInterface* self) {
	return self->sender();
}

int QDesignerResourceBrowserInterface_protectedbase_senderSignalIndex(const VirtualQDesignerResourceBrowserInterface* self) {
	return self->senderSignalIndex();
}

int QDesignerResourceBrowserInterface_protectedbase_receivers(const VirtualQDesignerResourceBrowserInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesignerResourceBrowserInterface_protectedbase_isSignalConnected(const VirtualQDesignerResourceBrowserInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesignerResourceBrowserInterface_delete(QDesignerResourceBrowserInterface* self) {
	delete self;
}

