package com.ccsn.api.dto;

/**
 * Created by Sabina on 2/19/2018.
 */
public class Account {
    private String username;
    private String password;

    public Account() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
