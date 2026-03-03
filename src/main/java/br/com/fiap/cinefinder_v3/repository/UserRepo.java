package br.com.fiap.cinefinder_v3.repository;

import br.com.fiap.cinefinder_v3.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
}
