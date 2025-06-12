package com.bookstore.service;

import com.bookstore.repository.BookStoreRepo;
import com.bookstore.entity.BookStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookStoreService {
   @Autowired
    private BookStoreRepo bookStoreRepo;
 public BookStore addBook(BookStore bookStore){
     return bookStoreRepo.save(bookStore);
 }
public List<BookStore>  getBooks(){
     return bookStoreRepo.findAll();
}
public BookStore getById(Long id){
     return  bookStoreRepo.findById(id).orElse(null);
}
public void deleteById(Long id){
     bookStoreRepo.deleteById(id);
}
public BookStore updateBookStore(Long id , BookStore updatedBookStore){
    BookStore book = getById(id);
    if (book != null) {
        book.setBookName(updatedBookStore.getBookName());
        book.setAuthor(updatedBookStore.getAuthor());
        book.setDescription(updatedBookStore.getDescription());
        book.setPrice(updatedBookStore.getPrice());
        book.setStock(updatedBookStore.getStock());
        book.setCategory(updatedBookStore.getCategory());
        book.setVolume(updatedBookStore.getVolume());
        book.setPublishedDate(updatedBookStore.getPublishedDate());
        book.setAvailable(updatedBookStore.getAvailable());
        return bookStoreRepo.save(book);
    }
    return null;
}
}
