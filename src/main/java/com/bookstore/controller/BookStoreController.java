package com.bookstore.controller;

import com.bookstore.service.BookStoreService;
import com.bookstore.entity.BookStore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin(origins="https://bookstore-project-three.vercel.app/")
@RestController

@RequestMapping("/books")
public class BookStoreController {
@Autowired
    private BookStoreService bookStoreService;
  @PostMapping
    public BookStore addBook(@RequestBody BookStore bookStore){
      return bookStoreService.addBook(bookStore);
  }
  @GetMapping("/")
    public List<BookStore> getBooks(){
      return bookStoreService.getBooks();
  }
  @GetMapping("/{id}")
  public BookStore getById(@PathVariable Long id){
    return  bookStoreService.getById(id);
  }
  @DeleteMapping("/{id}")
  public void deleteById(@PathVariable Long id){
    bookStoreService.deleteById(id);
  }

  @PutMapping("/{id}")
public ResponseEntity<BookStore> updatedBookStore(@PathVariable Long id, @RequestBody BookStore updatedBookStore){
    BookStore updated = bookStoreService.updateBookStore(id, updatedBookStore);
    if (updated != null) {
      return ResponseEntity.ok(updated);  // 200 OK with updated Book as body
    } else {
      return ResponseEntity.notFound().build();  // 404 Not Found
    }
  }

}
