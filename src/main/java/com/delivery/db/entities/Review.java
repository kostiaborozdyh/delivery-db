package com.delivery.db.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.time.LocalDateTime;


@Entity
@Getter
@Setter
@Table(name = "review")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER, targetEntity = User.class, cascade = {CascadeType.REMOVE})
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "response", nullable = false)
    private String response;

    @Column(name = "date", nullable = false)
    private LocalDateTime date = LocalDateTime.now();
}
