package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "time")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Time {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    @Column
    private LocalDateTime from;
    @Column
    private LocalDateTime to;
    @Column
    private Long price;

    @ManyToOne
    @JoinColumn(name = "move_id", insertable = false, updatable = false)
    private Movie movie;

    @ManyToOne
    @JoinColumn(name = "department_id", insertable = false, updatable = false)
    private Department department;

    @OneToOne(mappedBy = "time")
    private Ticket ticket;
}
