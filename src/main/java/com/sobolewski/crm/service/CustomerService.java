package com.sobolewski.crm.service;

import com.sobolewski.crm.model.Customer;
import com.sobolewski.crm.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService implements ICustomerService {

    private CustomerRepository customerRepository;

    @Autowired
    public CustomerService(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }


    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public Customer getCustomer(Integer id) {
        return customerRepository.findById(id).get();

    }

    @Override
    public void deleteCustomer(int theId) {
        customerRepository.deleteById(theId);
    }
//
//    @Override
//    public void update(Customer customer) {
//        customerRepository.update(customer.getId(), customer.getFirstName(), customer.getLastName(), customer.getEmail());
//    }
}
