package com.delivery.db.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Getter
@Setter
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToOne(fetch = FetchType.EAGER, targetEntity = Description.class, cascade = {CascadeType.ALL})
    @JoinColumn(name = "description_id", nullable = false)
    private Description description;

    @OneToOne(fetch = FetchType.EAGER, targetEntity = Road.class, cascade = {CascadeType.ALL})
    @JoinColumn(name = "road_id", nullable = false)
    private Road road;

    @OneToOne(fetch = FetchType.EAGER, targetEntity = Dates.class, cascade = {CascadeType.ALL})
    @JoinColumn(name = "dates_id", nullable = false)
    private Dates dates;

    @ManyToOne(fetch = FetchType.EAGER, targetEntity = User.class)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Enumerated(EnumType.STRING)
    @Column(name = "payment_status", nullable = false)
    private PaymentStatus paymentStatus = PaymentStatus.UNDER_CONSIDERATION;

    @Enumerated(EnumType.STRING)
    @Column(name = "location_status", nullable = false)
    private LocationStatus locationStatus = LocationStatus.IN_THE_CITY_OF_DEPARTURE;

}
