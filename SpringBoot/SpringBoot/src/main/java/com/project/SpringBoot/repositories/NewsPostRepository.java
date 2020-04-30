package com.project.SpringBoot.repositories;

import com.project.SpringBoot.entities.NewsPost;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface NewsPostRepository extends JpaRepository<NewsPost, Long> {

    Optional<NewsPost> findById(Long id);
}
