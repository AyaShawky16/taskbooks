import 'bookclass.dart';

typedef BookFilter = bool Function(Book);
List<Book> filterBooks(List<Book> books, BookFilter filter) {
  return books.where(filter).toList();
}