package com.agilino.ordercinematicket.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

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
    @JoinColumn(name = "movie_id", insertable = false, updatable = false)
    private Movie movie;

    @OneToOne
    @JoinColumn(name = "time_id", insertable = false, updatable = false)
    private Time time;
}
