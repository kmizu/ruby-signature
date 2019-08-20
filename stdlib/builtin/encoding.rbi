class Encoding < Object
  def self.aliases: () -> ::Hash[String, String]

  def self.compatible?: (BasicObject obj1, BasicObject obj2) -> Encoding?

  def self.default_external: () -> Encoding

  def self.default_external=: (String arg0) -> String
                            | (Encoding arg0) -> Encoding

  def self.default_internal: () -> Encoding

  def self.default_internal=: (String arg0) -> String?
                            | (Encoding arg0) -> Encoding?

  def self.find: (String | Encoding arg0) -> Encoding

  def self.list: () -> ::Array[Encoding]

  def self.name_list: () -> ::Array[String]

  def ascii_compatible?: () -> T::Boolean

  def dummy?: () -> T::Boolean

  def inspect: () -> String

  def name: () -> String

  def names: () -> ::Array[String]

  def replicate: (String name) -> Encoding

  def to_s: () -> String
end

Encoding::ANSI_X3_4_1968: Encoding

Encoding::ASCII: Encoding

Encoding::ASCII_8BIT: Encoding

Encoding::BIG5: Encoding

Encoding::BIG5_HKSCS: Encoding

Encoding::BIG5_HKSCS_2008: Encoding

Encoding::BIG5_UAO: Encoding

Encoding::BINARY: Encoding

Encoding::Big5: Encoding

Encoding::Big5_HKSCS: Encoding

Encoding::Big5_HKSCS_2008: Encoding

Encoding::Big5_UAO: Encoding

Encoding::CP1250: Encoding

Encoding::CP1251: Encoding

Encoding::CP1252: Encoding

Encoding::CP1253: Encoding

Encoding::CP1254: Encoding

Encoding::CP1255: Encoding

Encoding::CP1256: Encoding

Encoding::CP1257: Encoding

Encoding::CP1258: Encoding

Encoding::CP437: Encoding

Encoding::CP50220: Encoding

Encoding::CP50221: Encoding

Encoding::CP51932: Encoding

Encoding::CP65000: Encoding

Encoding::CP65001: Encoding

Encoding::CP737: Encoding

Encoding::CP775: Encoding

Encoding::CP850: Encoding

Encoding::CP852: Encoding

Encoding::CP855: Encoding

Encoding::CP857: Encoding

Encoding::CP860: Encoding

Encoding::CP861: Encoding

Encoding::CP862: Encoding

Encoding::CP863: Encoding

Encoding::CP864: Encoding

Encoding::CP865: Encoding

Encoding::CP866: Encoding

Encoding::CP869: Encoding

Encoding::CP874: Encoding

Encoding::CP878: Encoding

Encoding::CP932: Encoding

Encoding::CP936: Encoding

Encoding::CP949: Encoding

Encoding::CP950: Encoding

Encoding::CP951: Encoding

Encoding::CSWINDOWS31J: Encoding

Encoding::CsWindows31J: Encoding

Encoding::EBCDIC_CP_US: Encoding

Encoding::EMACS_MULE: Encoding

Encoding::EUCCN: Encoding

Encoding::EUCJP: Encoding

Encoding::EUCJP_MS: Encoding

Encoding::EUCKR: Encoding

Encoding::EUCTW: Encoding

Encoding::EUC_CN: Encoding

Encoding::EUC_JISX0213: Encoding

Encoding::EUC_JIS_2004: Encoding

Encoding::EUC_JP: Encoding

Encoding::EUC_JP_MS: Encoding

Encoding::EUC_KR: Encoding

Encoding::EUC_TW: Encoding

Encoding::Emacs_Mule: Encoding

Encoding::EucCN: Encoding

Encoding::EucJP: Encoding

Encoding::EucJP_ms: Encoding

Encoding::EucKR: Encoding

Encoding::EucTW: Encoding

Encoding::GB12345: Encoding

Encoding::GB18030: Encoding

Encoding::GB1988: Encoding

Encoding::GB2312: Encoding

Encoding::GBK: Encoding

Encoding::IBM037: Encoding

Encoding::IBM437: Encoding

Encoding::IBM737: Encoding

Encoding::IBM775: Encoding

Encoding::IBM850: Encoding

Encoding::IBM852: Encoding

Encoding::IBM855: Encoding

Encoding::IBM857: Encoding

Encoding::IBM860: Encoding

Encoding::IBM861: Encoding

Encoding::IBM862: Encoding

Encoding::IBM863: Encoding

Encoding::IBM864: Encoding

Encoding::IBM865: Encoding

Encoding::IBM866: Encoding

Encoding::IBM869: Encoding

Encoding::ISO2022_JP: Encoding

Encoding::ISO2022_JP2: Encoding

Encoding::ISO8859_1: Encoding

Encoding::ISO8859_10: Encoding

Encoding::ISO8859_11: Encoding

Encoding::ISO8859_13: Encoding

Encoding::ISO8859_14: Encoding

Encoding::ISO8859_15: Encoding

Encoding::ISO8859_16: Encoding

Encoding::ISO8859_2: Encoding

Encoding::ISO8859_3: Encoding

Encoding::ISO8859_4: Encoding

Encoding::ISO8859_5: Encoding

Encoding::ISO8859_6: Encoding

Encoding::ISO8859_7: Encoding

Encoding::ISO8859_8: Encoding

Encoding::ISO8859_9: Encoding

Encoding::ISO_2022_JP: Encoding

Encoding::ISO_2022_JP_2: Encoding

Encoding::ISO_2022_JP_KDDI: Encoding

Encoding::ISO_8859_1: Encoding

Encoding::ISO_8859_10: Encoding

Encoding::ISO_8859_11: Encoding

Encoding::ISO_8859_13: Encoding

Encoding::ISO_8859_14: Encoding

Encoding::ISO_8859_15: Encoding

Encoding::ISO_8859_16: Encoding

Encoding::ISO_8859_2: Encoding

Encoding::ISO_8859_3: Encoding

Encoding::ISO_8859_4: Encoding

Encoding::ISO_8859_5: Encoding

Encoding::ISO_8859_6: Encoding

Encoding::ISO_8859_7: Encoding

Encoding::ISO_8859_8: Encoding

Encoding::ISO_8859_9: Encoding

Encoding::KOI8_R: Encoding

Encoding::KOI8_U: Encoding

Encoding::MACCENTEURO: Encoding

Encoding::MACCROATIAN: Encoding

Encoding::MACCYRILLIC: Encoding

Encoding::MACGREEK: Encoding

Encoding::MACICELAND: Encoding

Encoding::MACJAPAN: Encoding

Encoding::MACJAPANESE: Encoding

Encoding::MACROMAN: Encoding

Encoding::MACROMANIA: Encoding

Encoding::MACTHAI: Encoding

Encoding::MACTURKISH: Encoding

Encoding::MACUKRAINE: Encoding

Encoding::MacCentEuro: Encoding

Encoding::MacCroatian: Encoding

Encoding::MacCyrillic: Encoding

Encoding::MacGreek: Encoding

Encoding::MacIceland: Encoding

Encoding::MacJapan: Encoding

Encoding::MacJapanese: Encoding

Encoding::MacRoman: Encoding

Encoding::MacRomania: Encoding

Encoding::MacThai: Encoding

Encoding::MacTurkish: Encoding

Encoding::MacUkraine: Encoding

Encoding::PCK: Encoding

Encoding::SHIFT_JIS: Encoding

Encoding::SJIS: Encoding

Encoding::SJIS_DOCOMO: Encoding

Encoding::SJIS_DoCoMo: Encoding

Encoding::SJIS_KDDI: Encoding

Encoding::SJIS_SOFTBANK: Encoding

Encoding::SJIS_SoftBank: Encoding

Encoding::STATELESS_ISO_2022_JP: Encoding

Encoding::STATELESS_ISO_2022_JP_KDDI: Encoding

Encoding::Shift_JIS: Encoding

Encoding::Stateless_ISO_2022_JP: Encoding

Encoding::Stateless_ISO_2022_JP_KDDI: Encoding

Encoding::TIS_620: Encoding

Encoding::UCS_2BE: Encoding

Encoding::UCS_4BE: Encoding

Encoding::UCS_4LE: Encoding

Encoding::US_ASCII: Encoding

Encoding::UTF8_DOCOMO: Encoding

Encoding::UTF8_DoCoMo: Encoding

Encoding::UTF8_KDDI: Encoding

Encoding::UTF8_MAC: Encoding

Encoding::UTF8_SOFTBANK: Encoding

Encoding::UTF8_SoftBank: Encoding

Encoding::UTF_16: Encoding

Encoding::UTF_16BE: Encoding

Encoding::UTF_16LE: Encoding

Encoding::UTF_32: Encoding

Encoding::UTF_32BE: Encoding

Encoding::UTF_32LE: Encoding

Encoding::UTF_7: Encoding

Encoding::UTF_8: Encoding

Encoding::UTF_8_HFS: Encoding

Encoding::UTF_8_MAC: Encoding

Encoding::WINDOWS_1250: Encoding

Encoding::WINDOWS_1251: Encoding

Encoding::WINDOWS_1252: Encoding

Encoding::WINDOWS_1253: Encoding

Encoding::WINDOWS_1254: Encoding

Encoding::WINDOWS_1255: Encoding

Encoding::WINDOWS_1256: Encoding

Encoding::WINDOWS_1257: Encoding

Encoding::WINDOWS_1258: Encoding

Encoding::WINDOWS_31J: Encoding

Encoding::WINDOWS_874: Encoding

Encoding::Windows_1250: Encoding

Encoding::Windows_1251: Encoding

Encoding::Windows_1252: Encoding

Encoding::Windows_1253: Encoding

Encoding::Windows_1254: Encoding

Encoding::Windows_1255: Encoding

Encoding::Windows_1256: Encoding

Encoding::Windows_1257: Encoding

Encoding::Windows_1258: Encoding

Encoding::Windows_31J: Encoding

Encoding::Windows_874: Encoding

class Encoding::Converter < Data
end

Encoding::Converter::AFTER_OUTPUT: Integer

Encoding::Converter::CRLF_NEWLINE_DECORATOR: Integer

Encoding::Converter::CR_NEWLINE_DECORATOR: Integer

Encoding::Converter::INVALID_MASK: Integer

Encoding::Converter::INVALID_REPLACE: Integer

Encoding::Converter::PARTIAL_INPUT: Integer

Encoding::Converter::UNDEF_HEX_CHARREF: Integer

Encoding::Converter::UNDEF_MASK: Integer

Encoding::Converter::UNDEF_REPLACE: Integer

Encoding::Converter::UNIVERSAL_NEWLINE_DECORATOR: Integer

Encoding::Converter::XML_ATTR_CONTENT_DECORATOR: Integer

Encoding::Converter::XML_ATTR_QUOTE_DECORATOR: Integer

Encoding::Converter::XML_TEXT_DECORATOR: Integer

class Encoding::CompatibilityError < EncodingError
end

class Encoding::ConverterNotFoundError < EncodingError
end

class Encoding::InvalidByteSequenceError < EncodingError
end

class Encoding::UndefinedConversionError < EncodingError
end
