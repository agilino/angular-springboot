package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@Entity
@Getter
@Setter
@Table(name = "account")
@AllArgsConstructor
@NoArgsConstructor
public class Account {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    @Column
    private String name;
    @Column
    private String email;
    @Column
    private String password;

    @OneToMany(mappedBy = "account")
    private List<Ticket> tickets;
}
