package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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

    @Column(name = "department_id")
    private UUID departmentId;

    private String number;
}
