package br.com.fiap.cinefinder_v3.controller;

import br.com.fiap.cinefinder_v3.dto.UserResponse;
import br.com.fiap.cinefinder_v3.service.UserService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService service;

    public UserController(UserService service) {
        this.service = service;
    }

    @GetMapping
    public Page<UserResponse> getUsers(
            @PageableDefault(size = 15, sort = "name") Pageable pageable) {
        return service.getAll(pageable);
    }

    @GetMapping("/{id}")
    public UserResponse getUserById(@PathVariable Long id) {
        return service.getById(id);
    }
}
