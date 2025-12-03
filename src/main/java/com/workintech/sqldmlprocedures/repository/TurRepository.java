package com.workintech.sqldmlprocedures.repository;

import com.workintech.sqldmlprocedures.entity.Tur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TurRepository extends JpaRepository<Tur, Long> {

    Tur findByAd(String ad);

}
