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
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "time_id", insertable = false, updatable = false)
    private Time time;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @ManyToOne
    @JoinColumn(name = "account_id", insertable = false, updatable = false)
    private Account account;

    @ManyToMany(cascade = CascadeType.ALL)
    @EqualsAndHashCode.Exclude @ToString.Exclude
    @JoinTable(
            name = "ticket_chair",
            joinColumns = {@JoinColumn(name = "ticket_id", referencedColumnName = "id")},
            inverseJoinColumns = @JoinColumn(name = "chair_id" ,referencedColumnName = "id"))
    Set<Chair> chairs;
}
