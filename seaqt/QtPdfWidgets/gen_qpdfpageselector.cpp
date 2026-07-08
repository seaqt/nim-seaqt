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
#include <QPdfDocument>
#include <QPdfPageSelector>
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
#include <qpdfpageselector.h>
#include "gen_qpdfpageselector.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfPageSelector final : public QPdfPageSelector {
	const QPdfPageSelector_VTable* vtbl;
public:
	friend void* QPdfPageSelector_vdata(VirtualQPdfPageSelector* self);
	friend VirtualQPdfPageSelector* vdata_QPdfPageSelector(void* vdata);

	VirtualQPdfPageSelector(const QPdfPageSelector_VTable* vtbl): QPdfPageSelector(), vtbl(vtbl) {}
	VirtualQPdfPageSelector(const QPdfPageSelector_VTable* vtbl, QWidget* parent): QPdfPageSelector(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfPageSelector() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfPageSelector::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfPageSelector_virtualbase_metaObject(const VirtualQPdfPageSelector* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfPageSelector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfPageSelector_virtualbase_metacast(VirtualQPdfPageSelector* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfPageSelector::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageSelector_virtualbase_metacall(VirtualQPdfPageSelector* self, int param1, int param2, void** param3);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPdfPageSelector::devType();
		}

		int callback_return_value = vtbl->devType(this);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageSelector_virtualbase_devType(const VirtualQPdfPageSelector* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPdfPageSelector::setVisible(visible);
			return;
		}

		bool sigval1 = visible;
		vtbl->setVisible(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_setVisible(VirtualQPdfPageSelector* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPdfPageSelector::sizeHint();
		}

		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfPageSelector_virtualbase_sizeHint(const VirtualQPdfPageSelector* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPdfPageSelector::minimumSizeHint();
		}

		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QSize* QPdfPageSelector_virtualbase_minimumSizeHint(const VirtualQPdfPageSelector* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPdfPageSelector::heightForWidth(param1);
		}

		int sigval1 = param1;
		int callback_return_value = vtbl->heightForWidth(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageSelector_virtualbase_heightForWidth(const VirtualQPdfPageSelector* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPdfPageSelector::hasHeightForWidth();
		}

		bool callback_return_value = vtbl->hasHeightForWidth(this);
		return callback_return_value;
	}

	friend bool QPdfPageSelector_virtualbase_hasHeightForWidth(const VirtualQPdfPageSelector* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPdfPageSelector::paintEngine();
		}

		QPaintEngine* callback_return_value = vtbl->paintEngine(this);
		return callback_return_value;
	}

	friend QPaintEngine* QPdfPageSelector_virtualbase_paintEngine(const VirtualQPdfPageSelector* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfPageSelector::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfPageSelector_virtualbase_event(VirtualQPdfPageSelector* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPdfPageSelector::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mousePressEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_mousePressEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPdfPageSelector::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseReleaseEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_mouseReleaseEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPdfPageSelector::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseDoubleClickEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_mouseDoubleClickEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPdfPageSelector::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;
		vtbl->mouseMoveEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_mouseMoveEvent(VirtualQPdfPageSelector* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPdfPageSelector::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;
		vtbl->wheelEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_wheelEvent(VirtualQPdfPageSelector* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QPdfPageSelector::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyPressEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_keyPressEvent(VirtualQPdfPageSelector* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPdfPageSelector::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;
		vtbl->keyReleaseEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_keyReleaseEvent(VirtualQPdfPageSelector* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPdfPageSelector::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusInEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_focusInEvent(VirtualQPdfPageSelector* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPdfPageSelector::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;
		vtbl->focusOutEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_focusOutEvent(VirtualQPdfPageSelector* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPdfPageSelector::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;
		vtbl->enterEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_enterEvent(VirtualQPdfPageSelector* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPdfPageSelector::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->leaveEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_leaveEvent(VirtualQPdfPageSelector* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPdfPageSelector::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;
		vtbl->paintEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_paintEvent(VirtualQPdfPageSelector* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPdfPageSelector::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;
		vtbl->moveEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_moveEvent(VirtualQPdfPageSelector* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPdfPageSelector::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;
		vtbl->resizeEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_resizeEvent(VirtualQPdfPageSelector* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPdfPageSelector::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;
		vtbl->closeEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_closeEvent(VirtualQPdfPageSelector* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QPdfPageSelector::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;
		vtbl->contextMenuEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_contextMenuEvent(VirtualQPdfPageSelector* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPdfPageSelector::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;
		vtbl->tabletEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_tabletEvent(VirtualQPdfPageSelector* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPdfPageSelector::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;
		vtbl->actionEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_actionEvent(VirtualQPdfPageSelector* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPdfPageSelector::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;
		vtbl->dragEnterEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_dragEnterEvent(VirtualQPdfPageSelector* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPdfPageSelector::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;
		vtbl->dragMoveEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_dragMoveEvent(VirtualQPdfPageSelector* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPdfPageSelector::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;
		vtbl->dragLeaveEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_dragLeaveEvent(VirtualQPdfPageSelector* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPdfPageSelector::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;
		vtbl->dropEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_dropEvent(VirtualQPdfPageSelector* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPdfPageSelector::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;
		vtbl->showEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_showEvent(VirtualQPdfPageSelector* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPdfPageSelector::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;
		vtbl->hideEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_hideEvent(VirtualQPdfPageSelector* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPdfPageSelector::nativeEvent(eventType, message, result);
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

	friend bool QPdfPageSelector_virtualbase_nativeEvent(VirtualQPdfPageSelector* self, struct seaqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPdfPageSelector::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;
		vtbl->changeEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_changeEvent(VirtualQPdfPageSelector* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPdfPageSelector::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int callback_return_value = vtbl->metric(this, sigval1);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageSelector_virtualbase_metric(const VirtualQPdfPageSelector* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPdfPageSelector::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;
		vtbl->initPainter(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_initPainter(const VirtualQPdfPageSelector* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPdfPageSelector::redirected(offset);
		}

		QPoint* sigval1 = offset;
		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);
		return callback_return_value;
	}

	friend QPaintDevice* QPdfPageSelector_virtualbase_redirected(const VirtualQPdfPageSelector* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPdfPageSelector::sharedPainter();
		}

		QPainter* callback_return_value = vtbl->sharedPainter(this);
		return callback_return_value;
	}

	friend QPainter* QPdfPageSelector_virtualbase_sharedPainter(const VirtualQPdfPageSelector* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPdfPageSelector::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;
		vtbl->inputMethodEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_inputMethodEvent(VirtualQPdfPageSelector* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPdfPageSelector::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;
		return callback_return_value_Value;
	}

	friend QVariant* QPdfPageSelector_virtualbase_inputMethodQuery(const VirtualQPdfPageSelector* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPdfPageSelector::focusNextPrevChild(next);
		}

		bool sigval1 = next;
		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfPageSelector_virtualbase_focusNextPrevChild(VirtualQPdfPageSelector* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfPageSelector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfPageSelector_virtualbase_eventFilter(VirtualQPdfPageSelector* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfPageSelector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_timerEvent(VirtualQPdfPageSelector* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfPageSelector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_childEvent(VirtualQPdfPageSelector* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfPageSelector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_customEvent(VirtualQPdfPageSelector* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfPageSelector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_connectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfPageSelector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfPageSelector_virtualbase_disconnectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QPdfPageSelector_protectedbase_updateMicroFocus(VirtualQPdfPageSelector* self);
	friend void QPdfPageSelector_protectedbase_create(VirtualQPdfPageSelector* self);
	friend void QPdfPageSelector_protectedbase_destroy(VirtualQPdfPageSelector* self);
	friend bool QPdfPageSelector_protectedbase_focusNextChild(VirtualQPdfPageSelector* self);
	friend bool QPdfPageSelector_protectedbase_focusPreviousChild(VirtualQPdfPageSelector* self);
	friend QObject* QPdfPageSelector_protectedbase_sender(const VirtualQPdfPageSelector* self);
	friend int QPdfPageSelector_protectedbase_senderSignalIndex(const VirtualQPdfPageSelector* self);
	friend int QPdfPageSelector_protectedbase_receivers(const VirtualQPdfPageSelector* self, const char* signal);
	friend bool QPdfPageSelector_protectedbase_isSignalConnected(const VirtualQPdfPageSelector* self, QMetaMethod* signal);
	friend double QPdfPageSelector_protectedbase_getDecodedMetricF(const VirtualQPdfPageSelector* self, int metricA, int metricB);
};

VirtualQPdfPageSelector* QPdfPageSelector_new(const QPdfPageSelector_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageSelector(vtbl) : nullptr;
}

VirtualQPdfPageSelector* QPdfPageSelector_new_parent(const QPdfPageSelector_VTable* vtbl, size_t vdata, QWidget* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageSelector>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageSelector(vtbl, parent) : nullptr;
}

void QPdfPageSelector_virtbase(QPdfPageSelector* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QPdfPageSelector_metaObject(const QPdfPageSelector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfPageSelector_metacast(QPdfPageSelector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfPageSelector_metacall(QPdfPageSelector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfPageSelector_tr_s(const char* s) {
	QString _ret = QPdfPageSelector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfPageSelector_setDocument(QPdfPageSelector* self, QPdfDocument* document) {
	self->setDocument(document);
}

QPdfDocument* QPdfPageSelector_document(const QPdfPageSelector* self) {
	return self->document();
}

int QPdfPageSelector_currentPage(const QPdfPageSelector* self) {
	return self->currentPage();
}

struct seaqt_string QPdfPageSelector_currentPageLabel(const QPdfPageSelector* self) {
	QString _ret = self->currentPageLabel();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfPageSelector_setCurrentPage(QPdfPageSelector* self, int index) {
	self->setCurrentPage(static_cast<int>(index));
}

void QPdfPageSelector_documentChanged(QPdfPageSelector* self, QPdfDocument* document) {
	self->documentChanged(document);
}

void QPdfPageSelector_connect_documentChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) {
	QPdfPageSelector::connect(self, static_cast<void (QPdfPageSelector::*)(QPdfDocument*)>(&QPdfPageSelector::documentChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPdfDocument* document) {
			QPdfDocument* sigval1 = document;
			callback(release.slot, sigval1);
	});
}

void QPdfPageSelector_currentPageChanged(QPdfPageSelector* self, int index) {
	self->currentPageChanged(static_cast<int>(index));
}

void QPdfPageSelector_connect_currentPageChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfPageSelector::connect(self, static_cast<void (QPdfPageSelector::*)(int)>(&QPdfPageSelector::currentPageChanged), self, [callback, release = seaqt::release_callback{slot,release}](int index) {
			int sigval1 = index;
			callback(release.slot, sigval1);
	});
}

void QPdfPageSelector_currentPageLabelChanged(QPdfPageSelector* self, struct seaqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->currentPageLabelChanged(label_QString);
}

void QPdfPageSelector_connect_currentPageLabelChanged(QPdfPageSelector* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_string), void (*release)(intptr_t)) {
	QPdfPageSelector::connect(self, static_cast<void (QPdfPageSelector::*)(const QString&)>(&QPdfPageSelector::currentPageLabelChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QString& label) {
			const QString label_ret = label;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray label_b = label_ret.toUtf8();
			struct seaqt_string label_ms;
			label_ms.len = label_b.length();
			label_ms.data = static_cast<char*>(malloc(label_ms.len));
			memcpy(label_ms.data, label_b.data(), label_ms.len);
			struct seaqt_string sigval1 = label_ms;
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QPdfPageSelector_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfPageSelector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageSelector_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfPageSelector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfPageSelector_staticMetaObject() { return &QPdfPageSelector::staticMetaObject; }
void* QPdfPageSelector_vdata(VirtualQPdfPageSelector* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfPageSelector>()); }
VirtualQPdfPageSelector* vdata_QPdfPageSelector(void* vdata) { return reinterpret_cast<VirtualQPdfPageSelector*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfPageSelector>()); }

QMetaObject* QPdfPageSelector_virtualbase_metaObject(const VirtualQPdfPageSelector* self) {

	return (QMetaObject*) self->QPdfPageSelector::metaObject();
}

void* QPdfPageSelector_virtualbase_metacast(VirtualQPdfPageSelector* self, const char* param1) {

	return self->QPdfPageSelector::qt_metacast(param1);
}

int QPdfPageSelector_virtualbase_metacall(VirtualQPdfPageSelector* self, int param1, int param2, void** param3) {

	return self->QPdfPageSelector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QPdfPageSelector_virtualbase_devType(const VirtualQPdfPageSelector* self) {

	return self->QPdfPageSelector::devType();
}

void QPdfPageSelector_virtualbase_setVisible(VirtualQPdfPageSelector* self, bool visible) {

	self->QPdfPageSelector::setVisible(visible);
}

QSize* QPdfPageSelector_virtualbase_sizeHint(const VirtualQPdfPageSelector* self) {

	return new QSize(self->QPdfPageSelector::sizeHint());
}

QSize* QPdfPageSelector_virtualbase_minimumSizeHint(const VirtualQPdfPageSelector* self) {

	return new QSize(self->QPdfPageSelector::minimumSizeHint());
}

int QPdfPageSelector_virtualbase_heightForWidth(const VirtualQPdfPageSelector* self, int param1) {

	return self->QPdfPageSelector::heightForWidth(static_cast<int>(param1));
}

bool QPdfPageSelector_virtualbase_hasHeightForWidth(const VirtualQPdfPageSelector* self) {

	return self->QPdfPageSelector::hasHeightForWidth();
}

QPaintEngine* QPdfPageSelector_virtualbase_paintEngine(const VirtualQPdfPageSelector* self) {

	return self->QPdfPageSelector::paintEngine();
}

bool QPdfPageSelector_virtualbase_event(VirtualQPdfPageSelector* self, QEvent* event) {

	return self->QPdfPageSelector::event(event);
}

void QPdfPageSelector_virtualbase_mousePressEvent(VirtualQPdfPageSelector* self, QMouseEvent* event) {

	self->QPdfPageSelector::mousePressEvent(event);
}

void QPdfPageSelector_virtualbase_mouseReleaseEvent(VirtualQPdfPageSelector* self, QMouseEvent* event) {

	self->QPdfPageSelector::mouseReleaseEvent(event);
}

void QPdfPageSelector_virtualbase_mouseDoubleClickEvent(VirtualQPdfPageSelector* self, QMouseEvent* event) {

	self->QPdfPageSelector::mouseDoubleClickEvent(event);
}

void QPdfPageSelector_virtualbase_mouseMoveEvent(VirtualQPdfPageSelector* self, QMouseEvent* event) {

	self->QPdfPageSelector::mouseMoveEvent(event);
}

void QPdfPageSelector_virtualbase_wheelEvent(VirtualQPdfPageSelector* self, QWheelEvent* event) {

	self->QPdfPageSelector::wheelEvent(event);
}

void QPdfPageSelector_virtualbase_keyPressEvent(VirtualQPdfPageSelector* self, QKeyEvent* event) {

	self->QPdfPageSelector::keyPressEvent(event);
}

void QPdfPageSelector_virtualbase_keyReleaseEvent(VirtualQPdfPageSelector* self, QKeyEvent* event) {

	self->QPdfPageSelector::keyReleaseEvent(event);
}

void QPdfPageSelector_virtualbase_focusInEvent(VirtualQPdfPageSelector* self, QFocusEvent* event) {

	self->QPdfPageSelector::focusInEvent(event);
}

void QPdfPageSelector_virtualbase_focusOutEvent(VirtualQPdfPageSelector* self, QFocusEvent* event) {

	self->QPdfPageSelector::focusOutEvent(event);
}

void QPdfPageSelector_virtualbase_enterEvent(VirtualQPdfPageSelector* self, QEnterEvent* event) {

	self->QPdfPageSelector::enterEvent(event);
}

void QPdfPageSelector_virtualbase_leaveEvent(VirtualQPdfPageSelector* self, QEvent* event) {

	self->QPdfPageSelector::leaveEvent(event);
}

void QPdfPageSelector_virtualbase_paintEvent(VirtualQPdfPageSelector* self, QPaintEvent* event) {

	self->QPdfPageSelector::paintEvent(event);
}

void QPdfPageSelector_virtualbase_moveEvent(VirtualQPdfPageSelector* self, QMoveEvent* event) {

	self->QPdfPageSelector::moveEvent(event);
}

void QPdfPageSelector_virtualbase_resizeEvent(VirtualQPdfPageSelector* self, QResizeEvent* event) {

	self->QPdfPageSelector::resizeEvent(event);
}

void QPdfPageSelector_virtualbase_closeEvent(VirtualQPdfPageSelector* self, QCloseEvent* event) {

	self->QPdfPageSelector::closeEvent(event);
}

void QPdfPageSelector_virtualbase_contextMenuEvent(VirtualQPdfPageSelector* self, QContextMenuEvent* event) {

	self->QPdfPageSelector::contextMenuEvent(event);
}

void QPdfPageSelector_virtualbase_tabletEvent(VirtualQPdfPageSelector* self, QTabletEvent* event) {

	self->QPdfPageSelector::tabletEvent(event);
}

void QPdfPageSelector_virtualbase_actionEvent(VirtualQPdfPageSelector* self, QActionEvent* event) {

	self->QPdfPageSelector::actionEvent(event);
}

void QPdfPageSelector_virtualbase_dragEnterEvent(VirtualQPdfPageSelector* self, QDragEnterEvent* event) {

	self->QPdfPageSelector::dragEnterEvent(event);
}

void QPdfPageSelector_virtualbase_dragMoveEvent(VirtualQPdfPageSelector* self, QDragMoveEvent* event) {

	self->QPdfPageSelector::dragMoveEvent(event);
}

void QPdfPageSelector_virtualbase_dragLeaveEvent(VirtualQPdfPageSelector* self, QDragLeaveEvent* event) {

	self->QPdfPageSelector::dragLeaveEvent(event);
}

void QPdfPageSelector_virtualbase_dropEvent(VirtualQPdfPageSelector* self, QDropEvent* event) {

	self->QPdfPageSelector::dropEvent(event);
}

void QPdfPageSelector_virtualbase_showEvent(VirtualQPdfPageSelector* self, QShowEvent* event) {

	self->QPdfPageSelector::showEvent(event);
}

void QPdfPageSelector_virtualbase_hideEvent(VirtualQPdfPageSelector* self, QHideEvent* event) {

	self->QPdfPageSelector::hideEvent(event);
}

bool QPdfPageSelector_virtualbase_nativeEvent(VirtualQPdfPageSelector* self, struct seaqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPdfPageSelector::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QPdfPageSelector_virtualbase_changeEvent(VirtualQPdfPageSelector* self, QEvent* param1) {

	self->QPdfPageSelector::changeEvent(param1);
}

int QPdfPageSelector_virtualbase_metric(const VirtualQPdfPageSelector* self, int param1) {

	return self->QPdfPageSelector::metric(static_cast<VirtualQPdfPageSelector::PaintDeviceMetric>(param1));
}

void QPdfPageSelector_virtualbase_initPainter(const VirtualQPdfPageSelector* self, QPainter* painter) {

	self->QPdfPageSelector::initPainter(painter);
}

QPaintDevice* QPdfPageSelector_virtualbase_redirected(const VirtualQPdfPageSelector* self, QPoint* offset) {

	return self->QPdfPageSelector::redirected(offset);
}

QPainter* QPdfPageSelector_virtualbase_sharedPainter(const VirtualQPdfPageSelector* self) {

	return self->QPdfPageSelector::sharedPainter();
}

void QPdfPageSelector_virtualbase_inputMethodEvent(VirtualQPdfPageSelector* self, QInputMethodEvent* param1) {

	self->QPdfPageSelector::inputMethodEvent(param1);
}

QVariant* QPdfPageSelector_virtualbase_inputMethodQuery(const VirtualQPdfPageSelector* self, int param1) {

	return new QVariant(self->QPdfPageSelector::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QPdfPageSelector_virtualbase_focusNextPrevChild(VirtualQPdfPageSelector* self, bool next) {

	return self->QPdfPageSelector::focusNextPrevChild(next);
}

bool QPdfPageSelector_virtualbase_eventFilter(VirtualQPdfPageSelector* self, QObject* watched, QEvent* event) {

	return self->QPdfPageSelector::eventFilter(watched, event);
}

void QPdfPageSelector_virtualbase_timerEvent(VirtualQPdfPageSelector* self, QTimerEvent* event) {

	self->QPdfPageSelector::timerEvent(event);
}

void QPdfPageSelector_virtualbase_childEvent(VirtualQPdfPageSelector* self, QChildEvent* event) {

	self->QPdfPageSelector::childEvent(event);
}

void QPdfPageSelector_virtualbase_customEvent(VirtualQPdfPageSelector* self, QEvent* event) {

	self->QPdfPageSelector::customEvent(event);
}

void QPdfPageSelector_virtualbase_connectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal) {

	self->QPdfPageSelector::connectNotify(*signal);
}

void QPdfPageSelector_virtualbase_disconnectNotify(VirtualQPdfPageSelector* self, QMetaMethod* signal) {

	self->QPdfPageSelector::disconnectNotify(*signal);
}

void QPdfPageSelector_protectedbase_updateMicroFocus(VirtualQPdfPageSelector* self) {
	self->QPdfPageSelector::updateMicroFocus();
}

void QPdfPageSelector_protectedbase_create(VirtualQPdfPageSelector* self) {
	self->QPdfPageSelector::create();
}

void QPdfPageSelector_protectedbase_destroy(VirtualQPdfPageSelector* self) {
	self->QPdfPageSelector::destroy();
}

bool QPdfPageSelector_protectedbase_focusNextChild(VirtualQPdfPageSelector* self) {
	return self->QPdfPageSelector::focusNextChild();
}

bool QPdfPageSelector_protectedbase_focusPreviousChild(VirtualQPdfPageSelector* self) {
	return self->QPdfPageSelector::focusPreviousChild();
}

QObject* QPdfPageSelector_protectedbase_sender(const VirtualQPdfPageSelector* self) {
	return self->QPdfPageSelector::sender();
}

int QPdfPageSelector_protectedbase_senderSignalIndex(const VirtualQPdfPageSelector* self) {
	return self->QPdfPageSelector::senderSignalIndex();
}

int QPdfPageSelector_protectedbase_receivers(const VirtualQPdfPageSelector* self, const char* signal) {
	return self->QPdfPageSelector::receivers(signal);
}

bool QPdfPageSelector_protectedbase_isSignalConnected(const VirtualQPdfPageSelector* self, QMetaMethod* signal) {
	return self->QPdfPageSelector::isSignalConnected(*signal);
}

double QPdfPageSelector_protectedbase_getDecodedMetricF(const VirtualQPdfPageSelector* self, int metricA, int metricB) {
	return self->QPdfPageSelector::getDecodedMetricF(static_cast<VirtualQPdfPageSelector::PaintDeviceMetric>(metricA), static_cast<VirtualQPdfPageSelector::PaintDeviceMetric>(metricB));
}

void QPdfPageSelector_delete(QPdfPageSelector* self) {
	delete self;
}

