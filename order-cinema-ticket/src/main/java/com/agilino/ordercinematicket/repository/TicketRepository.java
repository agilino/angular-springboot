package com.agilino.ordercinematicket.repository;

import com.agilino.ordercinematicket.model.Ticket;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, UUID> {


    @Query("""
            select t from Ticket t
            where t.time.id = :timeId              
                """)
    List<Ticket> findAllByTime(UUID timeId);
}
