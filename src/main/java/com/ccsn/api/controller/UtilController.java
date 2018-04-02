package com.ccsn.api.controller;

import com.ccsn.api.model.util.Country;
import com.ccsn.api.model.util.Language;
import com.ccsn.api.repository.util.CountryRepository;
import com.ccsn.api.repository.util.LanguageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Sabina on 3/12/2018.
 */
@RestController
public class UtilController {

    @Autowired
    CountryRepository countryRepository;

    @Autowired
    LanguageRepository languageRepository;

    public UtilController() {
    }

    @GetMapping(value = "/languages")
    public List<String> getLanguages() {
        return languageRepository.findLanguages();
    }

    @GetMapping(value = "/countries")
    public List<Country> getCountries() {
        return (List<Country>) countryRepository.findAll();
    }
}
