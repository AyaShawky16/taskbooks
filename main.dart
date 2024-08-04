import 'bookclass.dart';
import 'code.dart';
import 'typedef.dart';

void main() {
List<Book> library = [
    Book(title: 'ايكادولي', author: ' د/ حنان لاشين', yearPublished: 2018 , isCheckedOut: false),
    Book(title: 'يوتوبيا', author: 'د/ احمد خالد توفيق', yearPublished: 2008, isCheckedOut: true),
    Book(title: 'قوة التفكير', author: 'د/ ابراهيم الفقي ', yearPublished: 2009, isCheckedOut: true),
    Book(title: 'الجريمة والعقاب', author: 'دوستويفسكي', yearPublished: 1866, isCheckedOut: false),
    Book.fromMap({'title': 'سيروش', 'author': ' د/ حنان لاشين', 'yearPublished': 2024}),
    Book.unknownAuthor(),
  ];

  print('===== Filtered Books by Author =====:');
  /*print(filterBooks(library, filterBooksByAuthor(' د/ حنان لاشين')));*/ //محاولات //
 List<Book> hananBooks = filterBooks(library, filterBooksByAuthor(' د/ حنان لاشين' ));
  for (var book in hananBooks) {
    print(book.title);
  }
  print('\n ===== Total Books Published After 2003 =====:');
  print(totalBooksPublishedAfter(library, 2003));

  print('\n ===== Books Titles =====:');
  print(getBookTitles(library));

  print('\n ===== Books Details =====:');
  printBookDetails(library);

  print('\n ===== Count of Checked Out Books =====:');
  print(countCheckedOutBooks(library));

  print('\n ===== Books Status =====:');
  library.forEach((book) => print('${book.title}: ${getBookStatus(book)}'));
}



