//book class
class Book {
String title;
String author;
int yearPublished;
bool isCheckedOut;

Book ({
    required this.title,
    required this.author,
    required this.yearPublished,
    this.isCheckedOut = false, required ,
});
 
 Book.unknownAuthor() : this(title: 'Raya and the last dragon' , author: 'unknown' , yearPublished: 2021 , isCheckedOut: false);

 factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      title: map['title'],
      author: map['author'],
      yearPublished: map['yearPublished'],
      isCheckedOut: map['isCheckedOut'] ?? false,
    );
      
  }
}


