import 'bookclass.dart';
import 'typedef.dart';

/*  countCheckedOutBooks(List<Book> books) {
   return books.reduce((count, book) => count + (book.isCheckedOut? 1 : 0 ));
 }
*/

countCheckedOutBooks(List<Book> books) { 
  return books.map((book) => book.isCheckedOut ? 1:0 ).reduce((count, isCheckedOut) => count + isCheckedOut);
}

totalBooksPublishedAfter(List<Book> books, int year) {
  return books.fold(0, (total, book) => total + (book.yearPublished > year ? 1 : 0));
}


/*List<Book> filterBooksByAuthor(List<Book> books, author) {
  return books.where((book) => book.author == author).toList();
}
*/
BookFilter filterBooksByAuthor(String author) {
  return (Book book) => book.author == author;
}

List<String> getBookTitles(List<Book> books) {
  return books.map((book) => book.title).toList();
}

void printBookDetails(List<Book> books) {
  books.forEach((book) {
    print('The Title: ${book.title},The Author: ${book.author},The Year: ${book.yearPublished}, The Checked Out: ${book.isCheckedOut}');
  });
}

getBookStatus(Book? book) {
  switch (book!.isCheckedOut) {
    case true:
      return 'Checked Out';
    case false:
      return 'It is Available';
    default:
      return 'Unknown status';
  }
}
