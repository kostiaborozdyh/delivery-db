package com.delivery.db.entities;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "road")
public class Road {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "city_from",nullable = false)
    private String cityFrom;

    @Column(name = "city_to",nullable = false)
    private String cityTo;

    @Column(name = "address",nullable = false)
    private String address;
}
