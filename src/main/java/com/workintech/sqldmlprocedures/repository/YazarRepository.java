package com.workintech.sqldmlprocedures.repository;

import com.workintech.sqldmlprocedures.entity.Tur;
import com.workintech.sqldmlprocedures.entity.Yazar;
import org.springframework.data.jpa.repository.JpaRepository;

public interface YazarRepository extends JpaRepository<Yazar, Long> {
    Yazar findByAd(String ad);
}
