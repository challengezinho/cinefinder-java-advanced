package br.com.fiap.cinefinder_v3.service;

import br.com.fiap.cinefinder_v3.dto.UserResponse;
import br.com.fiap.cinefinder_v3.repository.UserRepo;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepo repo;

    public UserService(UserRepo repo) {
        this.repo = repo;
    }

    public Page<UserResponse> getAll(Pageable pageable) {
        return repo.findAll(pageable)
                .map(UserResponse::fromUser);
    }

    public UserResponse getById(Long id) {
        return repo.findById(id).map(UserResponse::fromUser).orElseThrow();
    }
}
