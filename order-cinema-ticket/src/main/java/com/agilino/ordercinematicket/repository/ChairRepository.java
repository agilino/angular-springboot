package com.agilino.ordercinematicket.repository;

import com.agilino.ordercinematicket.model.Chair;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ChairRepository extends JpaRepository<Chair, UUID> {
}
