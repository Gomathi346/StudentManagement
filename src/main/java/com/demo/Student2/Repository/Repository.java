package com.demo.Student2.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.Student2.PathModel.PathModel;

public interface Repository extends JpaRepository <PathModel,Integer> {
	

}