package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.InvestmentNewAccount;

@Repository
public interface InvestmentNewAccountRepo extends JpaRepository<InvestmentNewAccount, Integer> {

}
