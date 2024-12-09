
import 'package:nikitchem/data/enum/document_type.dart';

///
class CustomDocument{

  ///
  final String? filePath;
  ///
  final int? documentId;
  ///
  final int? documentType;
  ///
  final DocumentType? customDocumentType;

  ///
  const CustomDocument(
      {this.filePath, this.documentId, this.documentType, this.customDocumentType});
}