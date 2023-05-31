package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "ticket")
public class Ticket {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    @Column(name = "time_id")
    private UUID timeId;
    @Column(name = "chair_id")
    private UUID chairId;
    @Column(name = "user_id")
    private UUID userId;
    @Column(name = "created_on")
    private LocalDateTime createdOn;

}
