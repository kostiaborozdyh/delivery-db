package com.delivery.db.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;


@Entity
@Table(name = "employees")
@Getter
@Setter
@RequiredArgsConstructor
public class Employee {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @NotBlank
    @Column(unique = true)
    @Size(min = 1, max = 100)
    private String name;

    @NotBlank
    @Size(max = 50)
    private String role;

    @Size(max = 50)
    private String project;

    @Override
    public String toString() {
        return String.format("Employee: name='%s'", name);
    }
}
