package br.com.fiap.cinefinder_v3.dto;

public record RegisterDTO(
        String name,
        String email,
        String password,
        Integer age
) {}
