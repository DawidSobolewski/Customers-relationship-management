package com.sobolewski.crm.service;

import com.sobolewski.crm.model.Customer;

import java.util.List;

public interface ICustomerService {

    List<Customer> findAll();

    void saveCustomer(Customer customer);

    Customer getCustomer(Integer id);

    void deleteCustomer(int theId);


//    void update(Customer customer);
}
