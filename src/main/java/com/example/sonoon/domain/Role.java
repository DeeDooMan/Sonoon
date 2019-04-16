package com.example.sonoon.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN, EDITOR;

    @Override
    public String getAuthority() {
        return name();
    }
}
