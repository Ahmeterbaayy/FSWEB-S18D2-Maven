package com.workintech.sqldmlprocedures.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "tur")
public class Tur {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long turno;
    private String ad;
}
