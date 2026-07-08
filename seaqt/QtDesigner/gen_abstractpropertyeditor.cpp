#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesignerPropertyEditorInterface>
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
#include <abstractpropertyeditor.h>
#include "gen_abstractpropertyeditor.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQDesignerPropertyEditorInterface final : public QDesignerPropertyEditorInterface {
	const QDesignerPropertyEditorInterface_VTable* vtbl;
public:
	friend void* QDesignerPropertyEditorInterface_vdata(VirtualQDesignerPropertyEditorInterface* self);
	friend VirtualQDesignerPropertyEditorInterface* vdata_QDesignerPropertyEditorInterface(void* vdata);

	VirtualQDesignerPropertyEditorInterface(const QDesignerPropertyEditorInterface_VTable* vtbl, QWidget* parent): QDesignerPropertyEditorInterface(parent), vtbl(vtbl) {}
	VirtualQDesignerPropertyEditorInterface(const QDesignerPropertyEditorInterface_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QDesignerPropertyEditorInterface(parent, flags), vtbl(vtbl) {}

	virtual ~VirtualQDesignerPropertyEditorInterface() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesignerPropertyEditorInterface::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QDesignerPropertyEditorInterface_virtualbase_metaObject(const VirtualQDesignerPropertyEditorInterface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesignerPropertyEditorInterface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QDesignerPropertyEditorInterface_virtualbase_metacast(VirtualQDesignerPropertyEditorInterface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesignerPropertyEditorInterface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerPropertyEditorInterface_virtualbase_metacall(VirtualQDesignerPropertyEditorInterface* self, int param1, int param2, void** param3);

	virtual bool isReadOnly() const override {
		if (vtbl->isReadOnly == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		bool callback_return_value = vtbl->isReadOnly(this);
		return callback_return_value;
	}

	virtual QObject* object() const override {
		if (vtbl->object == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QObject* callback_return_value = vtbl->object(this);
		return callback_return_value;
	}

	virtual QString currentPropertyName() const override {
		if (vtbl->currentPropertyName == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		struct seaqt_string callback_return_value = vtbl->currentPropertyName(this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	virtual void setObject(QObject* object) override {
		if (vtbl->setObject == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QObject* sigval1 = object;
		vtbl->setObject(this, sigval1);
	}

	virtual void setPropertyValue(const QString& name, const QVariant& value, bool changed) override {
		if (vtbl->setPropertyValue == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		bool sigval3 = changed;
		vtbl->setPropertyValue(this, sigval1, sigval2, sigval3);
	}

	virtual void setReadOnly(bool readOnly) override {
		if (vtbl->setReadOnly == 0) {
			return; // Pure virtual, there is no base we can call
		}

		bool sigval1 = readOnly;
		vtbl->setReadOnly(this, sigval1);
	}

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesignerPropertyEditorInterface::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerPropertyEditorInterface_virtualbase_devType(const VirtualQDesignerPropertyEditorInterface* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesignerPropertyEditorInterface::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_setVisible(VirtualQDesignerPropertyEditorInterface* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesignerPropertyEditorInterface::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerPropertyEditorInterface_virtualbase_sizeHint(const VirtualQDesignerPropertyEditorInterface* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesignerPropertyEditorInterface::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QDesignerPropertyEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerPropertyEditorInterface* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesignerPropertyEditorInterface::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerPropertyEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerPropertyEditorInterface* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesignerPropertyEditorInterface::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerPropertyEditorInterface* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesignerPropertyEditorInterface::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QDesignerPropertyEditorInterface_virtualbase_paintEngine(const VirtualQDesignerPropertyEditorInterface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesignerPropertyEditorInterface::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerPropertyEditorInterface_virtualbase_event(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesignerPropertyEditorInterface::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesignerPropertyEditorInterface::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesignerPropertyEditorInterface::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesignerPropertyEditorInterface::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesignerPropertyEditorInterface::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_wheelEvent(VirtualQDesignerPropertyEditorInterface* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesignerPropertyEditorInterface::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesignerPropertyEditorInterface::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesignerPropertyEditorInterface::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_focusInEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesignerPropertyEditorInterface::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesignerPropertyEditorInterface::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_enterEvent(VirtualQDesignerPropertyEditorInterface* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesignerPropertyEditorInterface::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_leaveEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesignerPropertyEditorInterface::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_paintEvent(VirtualQDesignerPropertyEditorInterface* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesignerPropertyEditorInterface::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_moveEvent(VirtualQDesignerPropertyEditorInterface* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDesignerPropertyEditorInterface::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_resizeEvent(VirtualQDesignerPropertyEditorInterface* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesignerPropertyEditorInterface::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_closeEvent(VirtualQDesignerPropertyEditorInterface* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesignerPropertyEditorInterface::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerPropertyEditorInterface* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesignerPropertyEditorInterface::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_tabletEvent(VirtualQDesignerPropertyEditorInterface* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesignerPropertyEditorInterface::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_actionEvent(VirtualQDesignerPropertyEditorInterface* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesignerPropertyEditorInterface::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerPropertyEditorInterface* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesignerPropertyEditorInterface::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesignerPropertyEditorInterface::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesignerPropertyEditorInterface::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_dropEvent(VirtualQDesignerPropertyEditorInterface* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesignerPropertyEditorInterface::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_showEvent(VirtualQDesignerPropertyEditorInterface* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesignerPropertyEditorInterface::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_hideEvent(VirtualQDesignerPropertyEditorInterface* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesignerPropertyEditorInterface::nativeEvent(eventType, message, result);
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

	friend bool QDesignerPropertyEditorInterface_virtualbase_nativeEvent(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesignerPropertyEditorInterface::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_changeEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesignerPropertyEditorInterface::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QDesignerPropertyEditorInterface_virtualbase_metric(const VirtualQDesignerPropertyEditorInterface* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesignerPropertyEditorInterface::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_initPainter(const VirtualQDesignerPropertyEditorInterface* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesignerPropertyEditorInterface::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QDesignerPropertyEditorInterface_virtualbase_redirected(const VirtualQDesignerPropertyEditorInterface* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesignerPropertyEditorInterface::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QDesignerPropertyEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerPropertyEditorInterface* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesignerPropertyEditorInterface::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerPropertyEditorInterface* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesignerPropertyEditorInterface::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QDesignerPropertyEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerPropertyEditorInterface* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesignerPropertyEditorInterface::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerPropertyEditorInterface* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesignerPropertyEditorInterface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QDesignerPropertyEditorInterface_virtualbase_eventFilter(VirtualQDesignerPropertyEditorInterface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesignerPropertyEditorInterface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_timerEvent(VirtualQDesignerPropertyEditorInterface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesignerPropertyEditorInterface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_childEvent(VirtualQDesignerPropertyEditorInterface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesignerPropertyEditorInterface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_customEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesignerPropertyEditorInterface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_connectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesignerPropertyEditorInterface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QDesignerPropertyEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDesignerPropertyEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerPropertyEditorInterface* self);
	friend void QDesignerPropertyEditorInterface_protectedbase_create(VirtualQDesignerPropertyEditorInterface* self);
	friend void QDesignerPropertyEditorInterface_protectedbase_destroy(VirtualQDesignerPropertyEditorInterface* self);
	friend bool QDesignerPropertyEditorInterface_protectedbase_focusNextChild(VirtualQDesignerPropertyEditorInterface* self);
	friend bool QDesignerPropertyEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerPropertyEditorInterface* self);
	friend QObject* QDesignerPropertyEditorInterface_protectedbase_sender(const VirtualQDesignerPropertyEditorInterface* self);
	friend int QDesignerPropertyEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerPropertyEditorInterface* self);
	friend int QDesignerPropertyEditorInterface_protectedbase_receivers(const VirtualQDesignerPropertyEditorInterface* self, const char* signal);
	friend bool QDesignerPropertyEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal);
};

VirtualQDesignerPropertyEditorInterface* QDesignerPropertyEditorInterface_new_parent(const QDesignerPropertyEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerPropertyEditorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerPropertyEditorInterface(vtbl, parent) : nullptr;
}

VirtualQDesignerPropertyEditorInterface* QDesignerPropertyEditorInterface_new_parent_flags(const QDesignerPropertyEditorInterface_VTable* vtbl, size_t vdata, QWidget* parent, int flags) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQDesignerPropertyEditorInterface>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQDesignerPropertyEditorInterface(vtbl, parent, static_cast<Qt::WindowFlags>(flags)) : nullptr;
}

void QDesignerPropertyEditorInterface_virtbase(QDesignerPropertyEditorInterface* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesignerPropertyEditorInterface_metaObject(const QDesignerPropertyEditorInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesignerPropertyEditorInterface_metacast(QDesignerPropertyEditorInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesignerPropertyEditorInterface_metacall(QDesignerPropertyEditorInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QDesignerPropertyEditorInterface_tr_s(const char* s) {
	QString _ret = QDesignerPropertyEditorInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDesignerPropertyEditorInterface_isReadOnly(const QDesignerPropertyEditorInterface* self) {
	return self->isReadOnly();
}

QObject* QDesignerPropertyEditorInterface_object(const QDesignerPropertyEditorInterface* self) {
	return self->object();
}

struct seaqt_string QDesignerPropertyEditorInterface_currentPropertyName(const QDesignerPropertyEditorInterface* self) {
	QString _ret = self->currentPropertyName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDesignerPropertyEditorInterface_propertyChanged(QDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->propertyChanged(name_QString, *value);
}

void QDesignerPropertyEditorInterface_connect_propertyChanged(QDesignerPropertyEditorInterface* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string, QVariant*), void (*release)(intptr_t)) {
	QDesignerPropertyEditorInterface::connect(self, static_cast<void (QDesignerPropertyEditorInterface::*)(const QString&, const QVariant&)>(&QDesignerPropertyEditorInterface::propertyChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& name, const QVariant& value) {
			const QString name_ret = name;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray name_b = name_ret.toUtf8();
			struct seaqt_string name_ms;
			name_ms.len = name_b.length();
			name_ms.data = static_cast<char*>(malloc(name_ms.len));
			memcpy(name_ms.data, name_b.data(), name_ms.len);
			struct seaqt_string sigval1 = name_ms;
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QDesignerPropertyEditorInterface_setObject(QDesignerPropertyEditorInterface* self, QObject* object) {
	self->setObject(object);
}

void QDesignerPropertyEditorInterface_setPropertyValue(QDesignerPropertyEditorInterface* self, struct seaqt_string name, QVariant* value, bool changed) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setPropertyValue(name_QString, *value, changed);
}

void QDesignerPropertyEditorInterface_setReadOnly(QDesignerPropertyEditorInterface* self, bool readOnly) {
	self->setReadOnly(readOnly);
}

struct seaqt_string QDesignerPropertyEditorInterface_tr_s_c(const char* s, const char* c) {
	QString _ret = QDesignerPropertyEditorInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QDesignerPropertyEditorInterface_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QDesignerPropertyEditorInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QDesignerPropertyEditorInterface_staticMetaObject() { return &QDesignerPropertyEditorInterface::staticMetaObject; }
void* QDesignerPropertyEditorInterface_vdata(VirtualQDesignerPropertyEditorInterface* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQDesignerPropertyEditorInterface>()); }
VirtualQDesignerPropertyEditorInterface* vdata_QDesignerPropertyEditorInterface(void* vdata) { return reinterpret_cast<VirtualQDesignerPropertyEditorInterface*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQDesignerPropertyEditorInterface>()); }

QMetaObject* QDesignerPropertyEditorInterface_virtualbase_metaObject(const VirtualQDesignerPropertyEditorInterface* self) {

	return (QMetaObject*) self->QDesignerPropertyEditorInterface::metaObject();
}

void* QDesignerPropertyEditorInterface_virtualbase_metacast(VirtualQDesignerPropertyEditorInterface* self, const char* param1) {

	return self->QDesignerPropertyEditorInterface::qt_metacast(param1);
}

int QDesignerPropertyEditorInterface_virtualbase_metacall(VirtualQDesignerPropertyEditorInterface* self, int param1, int param2, void** param3) {

	return self->QDesignerPropertyEditorInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QDesignerPropertyEditorInterface_virtualbase_devType(const VirtualQDesignerPropertyEditorInterface* self) {

	return self->QDesignerPropertyEditorInterface::devType();
}

void QDesignerPropertyEditorInterface_virtualbase_setVisible(VirtualQDesignerPropertyEditorInterface* self, bool visible) {

	self->QDesignerPropertyEditorInterface::setVisible(visible);
}

QSize* QDesignerPropertyEditorInterface_virtualbase_sizeHint(const VirtualQDesignerPropertyEditorInterface* self) {

	return new QSize(self->QDesignerPropertyEditorInterface::sizeHint());
}

QSize* QDesignerPropertyEditorInterface_virtualbase_minimumSizeHint(const VirtualQDesignerPropertyEditorInterface* self) {

	return new QSize(self->QDesignerPropertyEditorInterface::minimumSizeHint());
}

int QDesignerPropertyEditorInterface_virtualbase_heightForWidth(const VirtualQDesignerPropertyEditorInterface* self, int param1) {

	return self->QDesignerPropertyEditorInterface::heightForWidth(static_cast<int>(param1));
}

bool QDesignerPropertyEditorInterface_virtualbase_hasHeightForWidth(const VirtualQDesignerPropertyEditorInterface* self) {

	return self->QDesignerPropertyEditorInterface::hasHeightForWidth();
}

QPaintEngine* QDesignerPropertyEditorInterface_virtualbase_paintEngine(const VirtualQDesignerPropertyEditorInterface* self) {

	return self->QDesignerPropertyEditorInterface::paintEngine();
}

bool QDesignerPropertyEditorInterface_virtualbase_event(VirtualQDesignerPropertyEditorInterface* self, QEvent* event) {

	return self->QDesignerPropertyEditorInterface::event(event);
}

void QDesignerPropertyEditorInterface_virtualbase_mousePressEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event) {

	self->QDesignerPropertyEditorInterface::mousePressEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_mouseReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event) {

	self->QDesignerPropertyEditorInterface::mouseReleaseEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_mouseDoubleClickEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event) {

	self->QDesignerPropertyEditorInterface::mouseDoubleClickEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_mouseMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QMouseEvent* event) {

	self->QDesignerPropertyEditorInterface::mouseMoveEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_wheelEvent(VirtualQDesignerPropertyEditorInterface* self, QWheelEvent* event) {

	self->QDesignerPropertyEditorInterface::wheelEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_keyPressEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event) {

	self->QDesignerPropertyEditorInterface::keyPressEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_keyReleaseEvent(VirtualQDesignerPropertyEditorInterface* self, QKeyEvent* event) {

	self->QDesignerPropertyEditorInterface::keyReleaseEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_focusInEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event) {

	self->QDesignerPropertyEditorInterface::focusInEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_focusOutEvent(VirtualQDesignerPropertyEditorInterface* self, QFocusEvent* event) {

	self->QDesignerPropertyEditorInterface::focusOutEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_enterEvent(VirtualQDesignerPropertyEditorInterface* self, QEnterEvent* event) {

	self->QDesignerPropertyEditorInterface::enterEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_leaveEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event) {

	self->QDesignerPropertyEditorInterface::leaveEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_paintEvent(VirtualQDesignerPropertyEditorInterface* self, QPaintEvent* event) {

	self->QDesignerPropertyEditorInterface::paintEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_moveEvent(VirtualQDesignerPropertyEditorInterface* self, QMoveEvent* event) {

	self->QDesignerPropertyEditorInterface::moveEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_resizeEvent(VirtualQDesignerPropertyEditorInterface* self, QResizeEvent* event) {

	self->QDesignerPropertyEditorInterface::resizeEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_closeEvent(VirtualQDesignerPropertyEditorInterface* self, QCloseEvent* event) {

	self->QDesignerPropertyEditorInterface::closeEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_contextMenuEvent(VirtualQDesignerPropertyEditorInterface* self, QContextMenuEvent* event) {

	self->QDesignerPropertyEditorInterface::contextMenuEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_tabletEvent(VirtualQDesignerPropertyEditorInterface* self, QTabletEvent* event) {

	self->QDesignerPropertyEditorInterface::tabletEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_actionEvent(VirtualQDesignerPropertyEditorInterface* self, QActionEvent* event) {

	self->QDesignerPropertyEditorInterface::actionEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_dragEnterEvent(VirtualQDesignerPropertyEditorInterface* self, QDragEnterEvent* event) {

	self->QDesignerPropertyEditorInterface::dragEnterEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_dragMoveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragMoveEvent* event) {

	self->QDesignerPropertyEditorInterface::dragMoveEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_dragLeaveEvent(VirtualQDesignerPropertyEditorInterface* self, QDragLeaveEvent* event) {

	self->QDesignerPropertyEditorInterface::dragLeaveEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_dropEvent(VirtualQDesignerPropertyEditorInterface* self, QDropEvent* event) {

	self->QDesignerPropertyEditorInterface::dropEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_showEvent(VirtualQDesignerPropertyEditorInterface* self, QShowEvent* event) {

	self->QDesignerPropertyEditorInterface::showEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_hideEvent(VirtualQDesignerPropertyEditorInterface* self, QHideEvent* event) {

	self->QDesignerPropertyEditorInterface::hideEvent(event);
}

bool QDesignerPropertyEditorInterface_virtualbase_nativeEvent(VirtualQDesignerPropertyEditorInterface* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDesignerPropertyEditorInterface::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QDesignerPropertyEditorInterface_virtualbase_changeEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* param1) {

	self->QDesignerPropertyEditorInterface::changeEvent(param1);
}

int QDesignerPropertyEditorInterface_virtualbase_metric(const VirtualQDesignerPropertyEditorInterface* self, int param1) {

	return self->QDesignerPropertyEditorInterface::metric(static_cast<VirtualQDesignerPropertyEditorInterface::PaintDeviceMetric>(param1));
}

void QDesignerPropertyEditorInterface_virtualbase_initPainter(const VirtualQDesignerPropertyEditorInterface* self, QPainter* painter) {

	self->QDesignerPropertyEditorInterface::initPainter(painter);
}

QPaintDevice* QDesignerPropertyEditorInterface_virtualbase_redirected(const VirtualQDesignerPropertyEditorInterface* self, QPoint* offset) {

	return self->QDesignerPropertyEditorInterface::redirected(offset);
}

QPainter* QDesignerPropertyEditorInterface_virtualbase_sharedPainter(const VirtualQDesignerPropertyEditorInterface* self) {

	return self->QDesignerPropertyEditorInterface::sharedPainter();
}

void QDesignerPropertyEditorInterface_virtualbase_inputMethodEvent(VirtualQDesignerPropertyEditorInterface* self, QInputMethodEvent* param1) {

	self->QDesignerPropertyEditorInterface::inputMethodEvent(param1);
}

QVariant* QDesignerPropertyEditorInterface_virtualbase_inputMethodQuery(const VirtualQDesignerPropertyEditorInterface* self, int param1) {

	return new QVariant(self->QDesignerPropertyEditorInterface::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QDesignerPropertyEditorInterface_virtualbase_focusNextPrevChild(VirtualQDesignerPropertyEditorInterface* self, bool next) {

	return self->QDesignerPropertyEditorInterface::focusNextPrevChild(next);
}

bool QDesignerPropertyEditorInterface_virtualbase_eventFilter(VirtualQDesignerPropertyEditorInterface* self, QObject* watched, QEvent* event) {

	return self->QDesignerPropertyEditorInterface::eventFilter(watched, event);
}

void QDesignerPropertyEditorInterface_virtualbase_timerEvent(VirtualQDesignerPropertyEditorInterface* self, QTimerEvent* event) {

	self->QDesignerPropertyEditorInterface::timerEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_childEvent(VirtualQDesignerPropertyEditorInterface* self, QChildEvent* event) {

	self->QDesignerPropertyEditorInterface::childEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_customEvent(VirtualQDesignerPropertyEditorInterface* self, QEvent* event) {

	self->QDesignerPropertyEditorInterface::customEvent(event);
}

void QDesignerPropertyEditorInterface_virtualbase_connectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal) {

	self->QDesignerPropertyEditorInterface::connectNotify(*signal);
}

void QDesignerPropertyEditorInterface_virtualbase_disconnectNotify(VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal) {

	self->QDesignerPropertyEditorInterface::disconnectNotify(*signal);
}

void QDesignerPropertyEditorInterface_protectedbase_updateMicroFocus(VirtualQDesignerPropertyEditorInterface* self) {
	self->updateMicroFocus();
}

void QDesignerPropertyEditorInterface_protectedbase_create(VirtualQDesignerPropertyEditorInterface* self) {
	self->create();
}

void QDesignerPropertyEditorInterface_protectedbase_destroy(VirtualQDesignerPropertyEditorInterface* self) {
	self->destroy();
}

bool QDesignerPropertyEditorInterface_protectedbase_focusNextChild(VirtualQDesignerPropertyEditorInterface* self) {
	return self->focusNextChild();
}

bool QDesignerPropertyEditorInterface_protectedbase_focusPreviousChild(VirtualQDesignerPropertyEditorInterface* self) {
	return self->focusPreviousChild();
}

QObject* QDesignerPropertyEditorInterface_protectedbase_sender(const VirtualQDesignerPropertyEditorInterface* self) {
	return self->sender();
}

int QDesignerPropertyEditorInterface_protectedbase_senderSignalIndex(const VirtualQDesignerPropertyEditorInterface* self) {
	return self->senderSignalIndex();
}

int QDesignerPropertyEditorInterface_protectedbase_receivers(const VirtualQDesignerPropertyEditorInterface* self, const char* signal) {
	return self->receivers(signal);
}

bool QDesignerPropertyEditorInterface_protectedbase_isSignalConnected(const VirtualQDesignerPropertyEditorInterface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDesignerPropertyEditorInterface_delete(QDesignerPropertyEditorInterface* self) {
	delete self;
}

