package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.Set;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "ticket")
public class Ticket {
    @Id
    @GeneratedValue
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "time_id")
    private Time time;

    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;

    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.MERGE})
    @JoinTable(
            name = "ticket_chair",
            joinColumns = {@JoinColumn(name = "ticket_id")},
            inverseJoinColumns = @JoinColumn(name = "chair_id"))
    Set<Chair> chairs;
}
