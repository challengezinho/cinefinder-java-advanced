package br.com.fiap.cinefinder_v3.repository;

import br.com.fiap.cinefinder_v3.model.MovieList;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieListRepo extends JpaRepository<MovieList, Long> {
}
