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
@Table(name = "movie")
public class Movie {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private UUID id;
    private String title;
    private String description;
}
