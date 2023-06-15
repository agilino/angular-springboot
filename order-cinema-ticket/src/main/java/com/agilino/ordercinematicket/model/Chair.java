package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;
import java.util.Set;
import java.util.UUID;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "chair")
public class Chair {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;

    @Column
    private String number;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "department_id", insertable = false, updatable = false)
    private Department department;

    @OneToOne(mappedBy = "chair")
    private Ticket ticket;

}
