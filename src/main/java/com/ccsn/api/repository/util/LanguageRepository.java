package com.ccsn.api.repository.util;

import com.ccsn.api.model.util.Language;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

import java.util.List;

/**
 * Created by Sabina on 3/12/2018.
 */
public interface LanguageRepository extends Repository<Language, Integer> {
   // @Query("select shortName from Language order by shortName desc")
    List<String> findLanguages();
}
