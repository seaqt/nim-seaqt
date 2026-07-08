#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QIODevice>
#include <QList>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QXmlStreamAttribute>
#include <QXmlStreamEntityDeclaration>
#include <QXmlStreamEntityResolver>
#include <QXmlStreamNamespaceDeclaration>
#include <QXmlStreamNotationDeclaration>
#include <QXmlStreamReader>
#include <QXmlStreamWriter>
#include <qxmlstream.h>
#include "gen_qxmlstream.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QXmlStreamAttribute* QXmlStreamAttribute_new() {
	return new (std::nothrow) QXmlStreamAttribute();
}

QXmlStreamAttribute* QXmlStreamAttribute_new_qualifiedName_value(struct seaqt_string qualifiedName, struct seaqt_string value) {
	QString qualifiedName_QString = QString::fromUtf8(qualifiedName.data, qualifiedName.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	return new (std::nothrow) QXmlStreamAttribute(qualifiedName_QString, value_QString);
}

QXmlStreamAttribute* QXmlStreamAttribute_new_namespaceUri_name_value(struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string value) {
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	return new (std::nothrow) QXmlStreamAttribute(namespaceUri_QString, name_QString, value_QString);
}

QXmlStreamAttribute* QXmlStreamAttribute_new_from(QXmlStreamAttribute* from) {
	return new (std::nothrow) QXmlStreamAttribute(*from);
}

bool QXmlStreamAttribute_isDefault(const QXmlStreamAttribute* self) {
	return self->isDefault();
}

void QXmlStreamAttribute_delete(QXmlStreamAttribute* self) {
	delete self;
}

QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new() {
	return new (std::nothrow) QXmlStreamNamespaceDeclaration();
}

QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new_prefix_namespaceUri(struct seaqt_string prefix, struct seaqt_string namespaceUri) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	QString namespaceUri_QString = QString::fromUtf8(namespaceUri.data, namespaceUri.len);
	return new (std::nothrow) QXmlStreamNamespaceDeclaration(prefix_QString, namespaceUri_QString);
}

QXmlStreamNamespaceDeclaration* QXmlStreamNamespaceDeclaration_new_from(QXmlStreamNamespaceDeclaration* from) {
	return new (std::nothrow) QXmlStreamNamespaceDeclaration(*from);
}

void QXmlStreamNamespaceDeclaration_delete(QXmlStreamNamespaceDeclaration* self) {
	delete self;
}

QXmlStreamNotationDeclaration* QXmlStreamNotationDeclaration_new() {
	return new (std::nothrow) QXmlStreamNotationDeclaration();
}

QXmlStreamNotationDeclaration* QXmlStreamNotationDeclaration_new_from(QXmlStreamNotationDeclaration* from) {
	return new (std::nothrow) QXmlStreamNotationDeclaration(*from);
}

void QXmlStreamNotationDeclaration_delete(QXmlStreamNotationDeclaration* self) {
	delete self;
}

QXmlStreamEntityDeclaration* QXmlStreamEntityDeclaration_new() {
	return new (std::nothrow) QXmlStreamEntityDeclaration();
}

QXmlStreamEntityDeclaration* QXmlStreamEntityDeclaration_new_from(QXmlStreamEntityDeclaration* from) {
	return new (std::nothrow) QXmlStreamEntityDeclaration(*from);
}

void QXmlStreamEntityDeclaration_delete(QXmlStreamEntityDeclaration* self) {
	delete self;
}

class VirtualQXmlStreamEntityResolver final : public QXmlStreamEntityResolver {
	const QXmlStreamEntityResolver_VTable* vtbl;
public:
	friend void* QXmlStreamEntityResolver_vdata(VirtualQXmlStreamEntityResolver* self);
	friend VirtualQXmlStreamEntityResolver* vdata_QXmlStreamEntityResolver(void* vdata);

	VirtualQXmlStreamEntityResolver(const QXmlStreamEntityResolver_VTable* vtbl): QXmlStreamEntityResolver(), vtbl(vtbl) {}

	virtual ~VirtualQXmlStreamEntityResolver() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual QString resolveEntity(const QString& publicId, const QString& systemId) override {
		if (vtbl->resolveEntity == 0) {
			return QXmlStreamEntityResolver::resolveEntity(publicId, systemId);
		}

		const QString publicId_ret = publicId;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray publicId_b = publicId_ret.toUtf8();
		struct seaqt_string publicId_ms;
		publicId_ms.len = publicId_b.length();
		publicId_ms.data = static_cast<char*>(malloc(publicId_ms.len));
		memcpy(publicId_ms.data, publicId_b.data(), publicId_ms.len);
		struct seaqt_string sigval1 = publicId_ms;
		const QString systemId_ret = systemId;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray systemId_b = systemId_ret.toUtf8();
		struct seaqt_string systemId_ms;
		systemId_ms.len = systemId_b.length();
		systemId_ms.data = static_cast<char*>(malloc(systemId_ms.len));
		memcpy(systemId_ms.data, systemId_b.data(), systemId_ms.len);
		struct seaqt_string sigval2 = systemId_ms;
		struct seaqt_string callback_return_value = vtbl->resolveEntity(this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QXmlStreamEntityResolver_virtualbase_resolveEntity(VirtualQXmlStreamEntityResolver* self, struct seaqt_string publicId, struct seaqt_string systemId);

	virtual QString resolveUndeclaredEntity(const QString& name) override {
		if (vtbl->resolveUndeclaredEntity == 0) {
			return QXmlStreamEntityResolver::resolveUndeclaredEntity(name);
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct seaqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct seaqt_string sigval1 = name_ms;
		struct seaqt_string callback_return_value = vtbl->resolveUndeclaredEntity(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);
		return callback_return_value_QString;
	}

	friend struct seaqt_string QXmlStreamEntityResolver_virtualbase_resolveUndeclaredEntity(VirtualQXmlStreamEntityResolver* self, struct seaqt_string name);

};

VirtualQXmlStreamEntityResolver* QXmlStreamEntityResolver_new(const QXmlStreamEntityResolver_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQXmlStreamEntityResolver>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQXmlStreamEntityResolver(vtbl) : nullptr;
}

struct seaqt_string QXmlStreamEntityResolver_resolveEntity(QXmlStreamEntityResolver* self, struct seaqt_string publicId, struct seaqt_string systemId) {
	QString publicId_QString = QString::fromUtf8(publicId.data, publicId.len);
	QString systemId_QString = QString::fromUtf8(systemId.data, systemId.len);
	QString _ret = self->resolveEntity(publicId_QString, systemId_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QXmlStreamEntityResolver_resolveUndeclaredEntity(QXmlStreamEntityResolver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->resolveUndeclaredEntity(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void* QXmlStreamEntityResolver_vdata(VirtualQXmlStreamEntityResolver* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQXmlStreamEntityResolver>()); }
VirtualQXmlStreamEntityResolver* vdata_QXmlStreamEntityResolver(void* vdata) { return reinterpret_cast<VirtualQXmlStreamEntityResolver*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQXmlStreamEntityResolver>()); }

struct seaqt_string QXmlStreamEntityResolver_virtualbase_resolveEntity(VirtualQXmlStreamEntityResolver* self, struct seaqt_string publicId, struct seaqt_string systemId) {
	QString publicId_QString = QString::fromUtf8(publicId.data, publicId.len);
	QString systemId_QString = QString::fromUtf8(systemId.data, systemId.len);

	QString _ret = self->QXmlStreamEntityResolver::resolveEntity(publicId_QString, systemId_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QXmlStreamEntityResolver_virtualbase_resolveUndeclaredEntity(VirtualQXmlStreamEntityResolver* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);

	QString _ret = self->QXmlStreamEntityResolver::resolveUndeclaredEntity(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QXmlStreamEntityResolver_delete(QXmlStreamEntityResolver* self) {
	delete self;
}

QXmlStreamReader* QXmlStreamReader_new() {
	return new (std::nothrow) QXmlStreamReader();
}

QXmlStreamReader* QXmlStreamReader_new_device(QIODevice* device) {
	return new (std::nothrow) QXmlStreamReader(device);
}

QXmlStreamReader* QXmlStreamReader_new_data(struct seaqt_string data) {
	QAnyStringView data_QString = QAnyStringView(data.data, data.len);
	return new (std::nothrow) QXmlStreamReader(data_QString);
}

void QXmlStreamReader_setDevice(QXmlStreamReader* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QXmlStreamReader_device(const QXmlStreamReader* self) {
	return self->device();
}

void QXmlStreamReader_addData(QXmlStreamReader* self, struct seaqt_string data) {
	QAnyStringView data_QString = QAnyStringView(data.data, data.len);
	self->addData(data_QString);
}

void QXmlStreamReader_clear(QXmlStreamReader* self) {
	self->clear();
}

bool QXmlStreamReader_atEnd(const QXmlStreamReader* self) {
	return self->atEnd();
}

int QXmlStreamReader_readNext(QXmlStreamReader* self) {
	QXmlStreamReader::TokenType _ret = self->readNext();
	return static_cast<int>(_ret);
}

bool QXmlStreamReader_readNextStartElement(QXmlStreamReader* self) {
	return self->readNextStartElement();
}

void QXmlStreamReader_skipCurrentElement(QXmlStreamReader* self) {
	self->skipCurrentElement();
}

int QXmlStreamReader_tokenType(const QXmlStreamReader* self) {
	QXmlStreamReader::TokenType _ret = self->tokenType();
	return static_cast<int>(_ret);
}

struct seaqt_string QXmlStreamReader_tokenString(const QXmlStreamReader* self) {
	QString _ret = self->tokenString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QXmlStreamReader_setNamespaceProcessing(QXmlStreamReader* self, bool namespaceProcessing) {
	self->setNamespaceProcessing(namespaceProcessing);
}

bool QXmlStreamReader_namespaceProcessing(const QXmlStreamReader* self) {
	return self->namespaceProcessing();
}

bool QXmlStreamReader_isStartDocument(const QXmlStreamReader* self) {
	return self->isStartDocument();
}

bool QXmlStreamReader_isEndDocument(const QXmlStreamReader* self) {
	return self->isEndDocument();
}

bool QXmlStreamReader_isStartElement(const QXmlStreamReader* self) {
	return self->isStartElement();
}

bool QXmlStreamReader_isEndElement(const QXmlStreamReader* self) {
	return self->isEndElement();
}

bool QXmlStreamReader_isCharacters(const QXmlStreamReader* self) {
	return self->isCharacters();
}

bool QXmlStreamReader_isWhitespace(const QXmlStreamReader* self) {
	return self->isWhitespace();
}

bool QXmlStreamReader_isCDATA(const QXmlStreamReader* self) {
	return self->isCDATA();
}

bool QXmlStreamReader_isComment(const QXmlStreamReader* self) {
	return self->isComment();
}

bool QXmlStreamReader_isDTD(const QXmlStreamReader* self) {
	return self->isDTD();
}

bool QXmlStreamReader_isEntityReference(const QXmlStreamReader* self) {
	return self->isEntityReference();
}

bool QXmlStreamReader_isProcessingInstruction(const QXmlStreamReader* self) {
	return self->isProcessingInstruction();
}

bool QXmlStreamReader_isStandaloneDocument(const QXmlStreamReader* self) {
	return self->isStandaloneDocument();
}

bool QXmlStreamReader_hasStandaloneDeclaration(const QXmlStreamReader* self) {
	return self->hasStandaloneDeclaration();
}

long long QXmlStreamReader_lineNumber(const QXmlStreamReader* self) {
	qint64 _ret = self->lineNumber();
	return static_cast<long long>(_ret);
}

long long QXmlStreamReader_columnNumber(const QXmlStreamReader* self) {
	qint64 _ret = self->columnNumber();
	return static_cast<long long>(_ret);
}

long long QXmlStreamReader_characterOffset(const QXmlStreamReader* self) {
	qint64 _ret = self->characterOffset();
	return static_cast<long long>(_ret);
}

struct seaqt_string QXmlStreamReader_readElementText(QXmlStreamReader* self) {
	QString _ret = self->readElementText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QXmlStreamNamespaceDeclaration* */  QXmlStreamReader_namespaceDeclarations(const QXmlStreamReader* self) {
	QXmlStreamNamespaceDeclarations _ret = self->namespaceDeclarations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QXmlStreamNamespaceDeclaration** _arr = static_cast<QXmlStreamNamespaceDeclaration**>(malloc(sizeof(QXmlStreamNamespaceDeclaration*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QXmlStreamNamespaceDeclaration(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QXmlStreamReader_addExtraNamespaceDeclaration(QXmlStreamReader* self, QXmlStreamNamespaceDeclaration* extraNamespaceDeclaraction) {
	self->addExtraNamespaceDeclaration(*extraNamespaceDeclaraction);
}

void QXmlStreamReader_addExtraNamespaceDeclarations(QXmlStreamReader* self, struct seaqt_array /* of QXmlStreamNamespaceDeclaration* */  extraNamespaceDeclaractions) {
	QXmlStreamNamespaceDeclarations extraNamespaceDeclaractions_QList;
	extraNamespaceDeclaractions_QList.reserve(extraNamespaceDeclaractions.len);
	QXmlStreamNamespaceDeclaration** extraNamespaceDeclaractions_arr = static_cast<QXmlStreamNamespaceDeclaration**>(extraNamespaceDeclaractions.data);
	for(size_t i = 0; i < extraNamespaceDeclaractions.len; ++i) {
		extraNamespaceDeclaractions_QList.push_back(*(extraNamespaceDeclaractions_arr[i]));
	}
	self->addExtraNamespaceDeclarations(extraNamespaceDeclaractions_QList);
}

struct seaqt_array /* of QXmlStreamNotationDeclaration* */  QXmlStreamReader_notationDeclarations(const QXmlStreamReader* self) {
	QXmlStreamNotationDeclarations _ret = self->notationDeclarations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QXmlStreamNotationDeclaration** _arr = static_cast<QXmlStreamNotationDeclaration**>(malloc(sizeof(QXmlStreamNotationDeclaration*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QXmlStreamNotationDeclaration(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_array /* of QXmlStreamEntityDeclaration* */  QXmlStreamReader_entityDeclarations(const QXmlStreamReader* self) {
	QXmlStreamEntityDeclarations _ret = self->entityDeclarations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QXmlStreamEntityDeclaration** _arr = static_cast<QXmlStreamEntityDeclaration**>(malloc(sizeof(QXmlStreamEntityDeclaration*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QXmlStreamEntityDeclaration(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QXmlStreamReader_entityExpansionLimit(const QXmlStreamReader* self) {
	return self->entityExpansionLimit();
}

void QXmlStreamReader_setEntityExpansionLimit(QXmlStreamReader* self, int limit) {
	self->setEntityExpansionLimit(static_cast<int>(limit));
}

void QXmlStreamReader_raiseError(QXmlStreamReader* self) {
	self->raiseError();
}

struct seaqt_string QXmlStreamReader_errorString(const QXmlStreamReader* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QXmlStreamReader_error(const QXmlStreamReader* self) {
	QXmlStreamReader::Error _ret = self->error();
	return static_cast<int>(_ret);
}

bool QXmlStreamReader_hasError(const QXmlStreamReader* self) {
	return self->hasError();
}

void QXmlStreamReader_setEntityResolver(QXmlStreamReader* self, QXmlStreamEntityResolver* resolver) {
	self->setEntityResolver(resolver);
}

QXmlStreamEntityResolver* QXmlStreamReader_entityResolver(const QXmlStreamReader* self) {
	return self->entityResolver();
}

struct seaqt_string QXmlStreamReader_readElementText_behaviour(QXmlStreamReader* self, int behaviour) {
	QString _ret = self->readElementText(static_cast<QXmlStreamReader::ReadElementTextBehaviour>(behaviour));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QXmlStreamReader_raiseError_message(QXmlStreamReader* self, struct seaqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->raiseError(message_QString);
}

void QXmlStreamReader_delete(QXmlStreamReader* self) {
	delete self;
}

QXmlStreamWriter* QXmlStreamWriter_new() {
	return new (std::nothrow) QXmlStreamWriter();
}

QXmlStreamWriter* QXmlStreamWriter_new_device(QIODevice* device) {
	return new (std::nothrow) QXmlStreamWriter(device);
}

void QXmlStreamWriter_setDevice(QXmlStreamWriter* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QXmlStreamWriter_device(const QXmlStreamWriter* self) {
	return self->device();
}

void QXmlStreamWriter_setAutoFormatting(QXmlStreamWriter* self, bool autoFormatting) {
	self->setAutoFormatting(autoFormatting);
}

bool QXmlStreamWriter_autoFormatting(const QXmlStreamWriter* self) {
	return self->autoFormatting();
}

void QXmlStreamWriter_setAutoFormattingIndent(QXmlStreamWriter* self, int spacesOrTabs) {
	self->setAutoFormattingIndent(static_cast<int>(spacesOrTabs));
}

int QXmlStreamWriter_autoFormattingIndent(const QXmlStreamWriter* self) {
	return self->autoFormattingIndent();
}

void QXmlStreamWriter_writeAttribute_qualifiedName_value(QXmlStreamWriter* self, struct seaqt_string qualifiedName, struct seaqt_string value) {
	QAnyStringView qualifiedName_QString = QAnyStringView(qualifiedName.data, qualifiedName.len);
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	self->writeAttribute(qualifiedName_QString, value_QString);
}

void QXmlStreamWriter_writeAttribute_namespaceUri_name_value(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string value) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView value_QString = QAnyStringView(value.data, value.len);
	self->writeAttribute(namespaceUri_QString, name_QString, value_QString);
}

void QXmlStreamWriter_writeAttribute_attribute(QXmlStreamWriter* self, QXmlStreamAttribute* attribute) {
	self->writeAttribute(*attribute);
}

void QXmlStreamWriter_writeCDATA(QXmlStreamWriter* self, struct seaqt_string text) {
	QAnyStringView text_QString = QAnyStringView(text.data, text.len);
	self->writeCDATA(text_QString);
}

void QXmlStreamWriter_writeCharacters(QXmlStreamWriter* self, struct seaqt_string text) {
	QAnyStringView text_QString = QAnyStringView(text.data, text.len);
	self->writeCharacters(text_QString);
}

void QXmlStreamWriter_writeComment(QXmlStreamWriter* self, struct seaqt_string text) {
	QAnyStringView text_QString = QAnyStringView(text.data, text.len);
	self->writeComment(text_QString);
}

void QXmlStreamWriter_writeDTD(QXmlStreamWriter* self, struct seaqt_string dtd) {
	QAnyStringView dtd_QString = QAnyStringView(dtd.data, dtd.len);
	self->writeDTD(dtd_QString);
}

void QXmlStreamWriter_writeEmptyElement_qualifiedName(QXmlStreamWriter* self, struct seaqt_string qualifiedName) {
	QAnyStringView qualifiedName_QString = QAnyStringView(qualifiedName.data, qualifiedName.len);
	self->writeEmptyElement(qualifiedName_QString);
}

void QXmlStreamWriter_writeEmptyElement_namespaceUri_name(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	self->writeEmptyElement(namespaceUri_QString, name_QString);
}

void QXmlStreamWriter_writeTextElement_qualifiedName_text(QXmlStreamWriter* self, struct seaqt_string qualifiedName, struct seaqt_string text) {
	QAnyStringView qualifiedName_QString = QAnyStringView(qualifiedName.data, qualifiedName.len);
	QAnyStringView text_QString = QAnyStringView(text.data, text.len);
	self->writeTextElement(qualifiedName_QString, text_QString);
}

void QXmlStreamWriter_writeTextElement_namespaceUri_name_text(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name, struct seaqt_string text) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	QAnyStringView text_QString = QAnyStringView(text.data, text.len);
	self->writeTextElement(namespaceUri_QString, name_QString, text_QString);
}

void QXmlStreamWriter_writeEndDocument(QXmlStreamWriter* self) {
	self->writeEndDocument();
}

void QXmlStreamWriter_writeEndElement(QXmlStreamWriter* self) {
	self->writeEndElement();
}

void QXmlStreamWriter_writeEntityReference(QXmlStreamWriter* self, struct seaqt_string name) {
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	self->writeEntityReference(name_QString);
}

void QXmlStreamWriter_writeNamespace_namespaceUri(QXmlStreamWriter* self, struct seaqt_string namespaceUri) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	self->writeNamespace(namespaceUri_QString);
}

void QXmlStreamWriter_writeDefaultNamespace(QXmlStreamWriter* self, struct seaqt_string namespaceUri) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	self->writeDefaultNamespace(namespaceUri_QString);
}

void QXmlStreamWriter_writeProcessingInstruction_target(QXmlStreamWriter* self, struct seaqt_string target) {
	QAnyStringView target_QString = QAnyStringView(target.data, target.len);
	self->writeProcessingInstruction(target_QString);
}

void QXmlStreamWriter_writeStartDocument(QXmlStreamWriter* self) {
	self->writeStartDocument();
}

void QXmlStreamWriter_writeStartDocument_version(QXmlStreamWriter* self, struct seaqt_string version) {
	QAnyStringView version_QString = QAnyStringView(version.data, version.len);
	self->writeStartDocument(version_QString);
}

void QXmlStreamWriter_writeStartDocument_version_standalone(QXmlStreamWriter* self, struct seaqt_string version, bool standalone) {
	QAnyStringView version_QString = QAnyStringView(version.data, version.len);
	self->writeStartDocument(version_QString, standalone);
}

void QXmlStreamWriter_writeStartElement_qualifiedName(QXmlStreamWriter* self, struct seaqt_string qualifiedName) {
	QAnyStringView qualifiedName_QString = QAnyStringView(qualifiedName.data, qualifiedName.len);
	self->writeStartElement(qualifiedName_QString);
}

void QXmlStreamWriter_writeStartElement_namespaceUri_name(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string name) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	QAnyStringView name_QString = QAnyStringView(name.data, name.len);
	self->writeStartElement(namespaceUri_QString, name_QString);
}

void QXmlStreamWriter_writeCurrentToken(QXmlStreamWriter* self, QXmlStreamReader* reader) {
	self->writeCurrentToken(*reader);
}

bool QXmlStreamWriter_hasError(const QXmlStreamWriter* self) {
	return self->hasError();
}

void QXmlStreamWriter_writeNamespace_namespaceUri_prefix(QXmlStreamWriter* self, struct seaqt_string namespaceUri, struct seaqt_string prefix) {
	QAnyStringView namespaceUri_QString = QAnyStringView(namespaceUri.data, namespaceUri.len);
	QAnyStringView prefix_QString = QAnyStringView(prefix.data, prefix.len);
	self->writeNamespace(namespaceUri_QString, prefix_QString);
}

void QXmlStreamWriter_writeProcessingInstruction_target_data(QXmlStreamWriter* self, struct seaqt_string target, struct seaqt_string data) {
	QAnyStringView target_QString = QAnyStringView(target.data, target.len);
	QAnyStringView data_QString = QAnyStringView(data.data, data.len);
	self->writeProcessingInstruction(target_QString, data_QString);
}

void QXmlStreamWriter_delete(QXmlStreamWriter* self) {
	delete self;
}

