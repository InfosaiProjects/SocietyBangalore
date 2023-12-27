package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.NewGLGroupMaster;

@Repository
public interface NewGLGroupMasterRepo extends JpaRepository<NewGLGroupMaster, Long> {

	@Query("SELECT MAX(g.gLGroupNo) FROM NewGLGroupMaster g")
	Integer findMaxgLGroupNo();

	List<NewGLGroupMaster> findByPrimaryGroupAndPrimarySubGroup(String primaryGroup, String primarySubGroup);

	NewGLGroupMaster findByid(Long glGroupId);

	NewGLGroupMaster getBygLGroupNo(Integer getgLGroupNo);

}
