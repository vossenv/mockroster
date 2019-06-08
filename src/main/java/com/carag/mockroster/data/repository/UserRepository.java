package com.carag.mockroster.data.repository;

import com.carag.mockroster.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface UserRepository extends PagingAndSortingRepository<User, String> {


    @Query("select u from User u left join fetch Enrollment e on u.sourcedId=e.user left join fetch Section s on s.sourcedId=e.section")
    List<User> findAll();

}


