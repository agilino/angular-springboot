package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Table(name = "ticket_chair")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class TicketChair {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    @Column(name = "chair_id")
    private UUID chairId;
    @Column(name = "time_id")
    private UUID timeId;

}
