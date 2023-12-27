package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.ShareTransferMaster;

@Repository
public interface ShareTransferMasterRepo extends JpaRepository<ShareTransferMaster, Integer> {

}
