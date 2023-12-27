package com.society.application.repository;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.Receipt;

@Repository
public interface ReceiptRepo extends JpaRepository<Receipt, Integer> {

	List<Receipt> findByEntryDate(LocalDate today);

	@Transactional
	void deleteById(long id);

	/*
	 * @Transactional void deleteByid(long id);
	 */

	@Query("SELECT bankId, SUM(CASE WHEN transactionType = 'credit' THEN amount ELSE -amount END) AS amount FROM Receipt GROUP BY bankId")
    List<Object[]> calculateNewAmounts();

	List<Receipt> findBybankId(String bankID);
}
