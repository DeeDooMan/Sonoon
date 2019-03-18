package com.example.Sonoon.domain;
import org.springframework.security.core.GrantedAuthority;
public class Role implements GrantedAuthority{
    USER,EDITOR,MANAGER;
    @Override
    public String getAuthority(){
        return name();
    }
}
