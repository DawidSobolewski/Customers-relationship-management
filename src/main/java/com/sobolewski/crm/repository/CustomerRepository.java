package com.sobolewski.crm.repository;

import com.sobolewski.crm.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
//
//    @Query("update customer c set c.first_name= :firstName, c.last_name= :lastName, c.email= :email where c.id= :id")
//    void update(@Param("id") Integer id, @Param("firstName") String firstName, @Param("lastName") String lastName,@Param("email") String email);
}
