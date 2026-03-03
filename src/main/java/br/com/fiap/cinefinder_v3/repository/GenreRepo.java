package br.com.fiap.cinefinder_v3.repository;

import br.com.fiap.cinefinder_v3.model.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenreRepo extends JpaRepository<Genre, Long> {
}
