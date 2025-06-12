package com.bookstore.repository;

import com.bookstore.entity.BookStore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookStoreRepo extends JpaRepository<BookStore, Long> {

}
