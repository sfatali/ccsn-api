package com.ccsn.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Sabina on 2/19/2018.
 */

@RestController
public class AuthController {

    @GetMapping(value = "/")
    public String test() {
        return "Test!";
    }

}
