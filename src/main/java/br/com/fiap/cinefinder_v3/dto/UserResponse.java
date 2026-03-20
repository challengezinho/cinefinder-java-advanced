package br.com.fiap.cinefinder_v3.dto;

import br.com.fiap.cinefinder_v3.model.User;

public record UserResponse(
        Long id,
        String name,
        String email,
        Integer age,
        Boolean isAdm
) {

    public static UserResponse fromUser(User user) {
        return new UserResponse(user.getId(),
                user.getName(),
                user.getEmail(),
                user.getAge(),
                user.getIsAdmin());
    }

}
