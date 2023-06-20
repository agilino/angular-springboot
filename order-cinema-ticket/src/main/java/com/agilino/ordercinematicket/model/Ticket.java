package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
    @ManyToOne(cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
    @JoinColumn(name = "time_id", insertable = true, updatable = false)
    private Time time;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @ManyToOne
    @JoinColumn(name = "account_id", insertable = true, updatable = false)
    private Account account;

//    @OneToOne(cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
////    @JoinColumn(name = "chair_id", insertable = true, updatable = false)
////    private Chair chair;

    @ManyToMany
    @JoinTable(
            name = "ticket_chair",
            joinColumns = @JoinColumn(name = "chair_id"),
            inverseJoinColumns = @JoinColumn(name = "ticket_id"))
    Set<Chair> chairs;
}
