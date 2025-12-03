package com.workintech.sqldmlprocedures.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "yazar")
public class Yazar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long yazarno;
    private String ad;
    private String soyad;
}
