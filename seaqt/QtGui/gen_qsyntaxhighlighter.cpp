#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QFont>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSyntaxHighlighter>
#include <QTextBlock>
#include <QTextBlockUserData>
#include <QTextCharFormat>
#include <QTextDocument>
#include <QTimerEvent>
#include <qsyntaxhighlighter.h>
#include "gen_qsyntaxhighlighter.h"
class VirtualQSyntaxHighlighter final : public QSyntaxHighlighter {
	const QSyntaxHighlighter_VTable* vtbl;
	void* vdata;
public:
	friend const QSyntaxHighlighter_VTable* QSyntaxHighlighter_vtbl(const VirtualQSyntaxHighlighter* self);
	friend void* QSyntaxHighlighter_vdata(const VirtualQSyntaxHighlighter* self);
	friend void QSyntaxHighlighter_setVdata(VirtualQSyntaxHighlighter* self, void* vdata);

	VirtualQSyntaxHighlighter(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QObject* parent): QSyntaxHighlighter(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSyntaxHighlighter(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QTextDocument* parent): QSyntaxHighlighter(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSyntaxHighlighter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSyntaxHighlighter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const VirtualQSyntaxHighlighter* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSyntaxHighlighter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSyntaxHighlighter_virtualbase_metacast(VirtualQSyntaxHighlighter* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSyntaxHighlighter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSyntaxHighlighter_virtualbase_metacall(VirtualQSyntaxHighlighter* self, int param1, int param2, void** param3);

	virtual void highlightBlock(const QString& text) override {
		if (vtbl->highlightBlock == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->highlightBlock(this, sigval1);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSyntaxHighlighter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSyntaxHighlighter_virtualbase_event(VirtualQSyntaxHighlighter* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSyntaxHighlighter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSyntaxHighlighter_virtualbase_eventFilter(VirtualQSyntaxHighlighter* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSyntaxHighlighter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_timerEvent(VirtualQSyntaxHighlighter* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSyntaxHighlighter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_childEvent(VirtualQSyntaxHighlighter* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSyntaxHighlighter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_customEvent(VirtualQSyntaxHighlighter* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSyntaxHighlighter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_connectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSyntaxHighlighter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSyntaxHighlighter_virtualbase_disconnectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSyntaxHighlighter_protectedbase_setFormat(VirtualQSyntaxHighlighter* self, int start, int count, QTextCharFormat* format);
	friend void QSyntaxHighlighter_protectedbase_setFormat2(VirtualQSyntaxHighlighter* self, int start, int count, QColor* color);
	friend void QSyntaxHighlighter_protectedbase_setFormat3(VirtualQSyntaxHighlighter* self, int start, int count, QFont* font);
	friend QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const VirtualQSyntaxHighlighter* self, int pos);
	friend int QSyntaxHighlighter_protectedbase_previousBlockState(const VirtualQSyntaxHighlighter* self);
	friend int QSyntaxHighlighter_protectedbase_currentBlockState(const VirtualQSyntaxHighlighter* self);
	friend void QSyntaxHighlighter_protectedbase_setCurrentBlockState(VirtualQSyntaxHighlighter* self, int newState);
	friend void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(VirtualQSyntaxHighlighter* self, QTextBlockUserData* data);
	friend QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const VirtualQSyntaxHighlighter* self);
	friend QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const VirtualQSyntaxHighlighter* self);
	friend QObject* QSyntaxHighlighter_protectedbase_sender(const VirtualQSyntaxHighlighter* self);
	friend int QSyntaxHighlighter_protectedbase_senderSignalIndex(const VirtualQSyntaxHighlighter* self);
	friend int QSyntaxHighlighter_protectedbase_receivers(const VirtualQSyntaxHighlighter* self, const char* signal);
	friend bool QSyntaxHighlighter_protectedbase_isSignalConnected(const VirtualQSyntaxHighlighter* self, QMetaMethod* signal);
};

VirtualQSyntaxHighlighter* QSyntaxHighlighter_new(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSyntaxHighlighter(vtbl, vdata, parent);
}

VirtualQSyntaxHighlighter* QSyntaxHighlighter_new2(const QSyntaxHighlighter_VTable* vtbl, void* vdata, QTextDocument* parent) {
	return new VirtualQSyntaxHighlighter(vtbl, vdata, parent);
}

void QSyntaxHighlighter_virtbase(QSyntaxHighlighter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSyntaxHighlighter_metaObject(const QSyntaxHighlighter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSyntaxHighlighter_metacast(QSyntaxHighlighter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSyntaxHighlighter_metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSyntaxHighlighter_tr(const char* s) {
	QString _ret = QSyntaxHighlighter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_trUtf8(const char* s) {
	QString _ret = QSyntaxHighlighter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSyntaxHighlighter_setDocument(QSyntaxHighlighter* self, QTextDocument* doc) {
	self->setDocument(doc);
}

QTextDocument* QSyntaxHighlighter_document(const QSyntaxHighlighter* self) {
	return self->document();
}

void QSyntaxHighlighter_rehighlight(QSyntaxHighlighter* self) {
	self->rehighlight();
}

void QSyntaxHighlighter_rehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block) {
	self->rehighlightBlock(*block);
}

struct miqt_string QSyntaxHighlighter_tr2(const char* s, const char* c) {
	QString _ret = QSyntaxHighlighter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_tr3(const char* s, const char* c, int n) {
	QString _ret = QSyntaxHighlighter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_trUtf82(const char* s, const char* c) {
	QString _ret = QSyntaxHighlighter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSyntaxHighlighter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const VirtualQSyntaxHighlighter* self) {

	return (QMetaObject*) self->QSyntaxHighlighter::metaObject();
}

void* QSyntaxHighlighter_virtualbase_metacast(VirtualQSyntaxHighlighter* self, const char* param1) {

	return self->QSyntaxHighlighter::qt_metacast(param1);
}

int QSyntaxHighlighter_virtualbase_metacall(VirtualQSyntaxHighlighter* self, int param1, int param2, void** param3) {

	return self->QSyntaxHighlighter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSyntaxHighlighter_virtualbase_event(VirtualQSyntaxHighlighter* self, QEvent* event) {

	return self->QSyntaxHighlighter::event(event);
}

bool QSyntaxHighlighter_virtualbase_eventFilter(VirtualQSyntaxHighlighter* self, QObject* watched, QEvent* event) {

	return self->QSyntaxHighlighter::eventFilter(watched, event);
}

void QSyntaxHighlighter_virtualbase_timerEvent(VirtualQSyntaxHighlighter* self, QTimerEvent* event) {

	self->QSyntaxHighlighter::timerEvent(event);
}

void QSyntaxHighlighter_virtualbase_childEvent(VirtualQSyntaxHighlighter* self, QChildEvent* event) {

	self->QSyntaxHighlighter::childEvent(event);
}

void QSyntaxHighlighter_virtualbase_customEvent(VirtualQSyntaxHighlighter* self, QEvent* event) {

	self->QSyntaxHighlighter::customEvent(event);
}

void QSyntaxHighlighter_virtualbase_connectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal) {

	self->QSyntaxHighlighter::connectNotify(*signal);
}

void QSyntaxHighlighter_virtualbase_disconnectNotify(VirtualQSyntaxHighlighter* self, QMetaMethod* signal) {

	self->QSyntaxHighlighter::disconnectNotify(*signal);
}

const QMetaObject* QSyntaxHighlighter_staticMetaObject() { return &QSyntaxHighlighter::staticMetaObject; }

const QSyntaxHighlighter_VTable* QSyntaxHighlighter_vtbl(const VirtualQSyntaxHighlighter* self) { return self->vtbl; }
void* QSyntaxHighlighter_vdata(const VirtualQSyntaxHighlighter* self) { return self->vdata; }
void QSyntaxHighlighter_setVdata(VirtualQSyntaxHighlighter* self, void* vdata) { self->vdata = vdata; }

void QSyntaxHighlighter_protectedbase_setFormat(VirtualQSyntaxHighlighter* self, int start, int count, QTextCharFormat* format) {
	self->setFormat(static_cast<int>(start), static_cast<int>(count), *format);
}

void QSyntaxHighlighter_protectedbase_setFormat2(VirtualQSyntaxHighlighter* self, int start, int count, QColor* color) {
	self->setFormat(static_cast<int>(start), static_cast<int>(count), *color);
}

void QSyntaxHighlighter_protectedbase_setFormat3(VirtualQSyntaxHighlighter* self, int start, int count, QFont* font) {
	self->setFormat(static_cast<int>(start), static_cast<int>(count), *font);
}

QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const VirtualQSyntaxHighlighter* self, int pos) {
	return new QTextCharFormat(self->format(static_cast<int>(pos)));
}

int QSyntaxHighlighter_protectedbase_previousBlockState(const VirtualQSyntaxHighlighter* self) {
	return self->previousBlockState();
}

int QSyntaxHighlighter_protectedbase_currentBlockState(const VirtualQSyntaxHighlighter* self) {
	return self->currentBlockState();
}

void QSyntaxHighlighter_protectedbase_setCurrentBlockState(VirtualQSyntaxHighlighter* self, int newState) {
	self->setCurrentBlockState(static_cast<int>(newState));
}

void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(VirtualQSyntaxHighlighter* self, QTextBlockUserData* data) {
	self->setCurrentBlockUserData(data);
}

QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const VirtualQSyntaxHighlighter* self) {
	return self->currentBlockUserData();
}

QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const VirtualQSyntaxHighlighter* self) {
	return new QTextBlock(self->currentBlock());
}

QObject* QSyntaxHighlighter_protectedbase_sender(const VirtualQSyntaxHighlighter* self) {
	return self->sender();
}

int QSyntaxHighlighter_protectedbase_senderSignalIndex(const VirtualQSyntaxHighlighter* self) {
	return self->senderSignalIndex();
}

int QSyntaxHighlighter_protectedbase_receivers(const VirtualQSyntaxHighlighter* self, const char* signal) {
	return self->receivers(signal);
}

bool QSyntaxHighlighter_protectedbase_isSignalConnected(const VirtualQSyntaxHighlighter* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSyntaxHighlighter_delete(QSyntaxHighlighter* self) {
	delete self;
}

