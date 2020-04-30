package com.project.SpringBoot.repositories;

import com.project.SpringBoot.entities.Comments;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CommentsRepository extends JpaRepository<Comments, Long> {

    Optional<Comments> findById(Long id);

}