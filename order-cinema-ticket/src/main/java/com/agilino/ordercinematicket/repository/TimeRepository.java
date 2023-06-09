package com.agilino.ordercinematicket.repository;

import com.agilino.ordercinematicket.model.Time;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface TimeRepository extends JpaRepository<Time, UUID> {
    List<Time> findAllByMovieId(UUID id);
}
