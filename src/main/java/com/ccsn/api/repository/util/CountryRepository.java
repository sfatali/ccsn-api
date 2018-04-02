package com.ccsn.api.repository.util;

import com.ccsn.api.model.util.Country;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Sabina on 3/12/2018.
 */
public interface CountryRepository extends CrudRepository<Country, Integer> {
    @Query(value = "", nativeQuery = true)
    List<String> findCountryNames(String lang);
}
