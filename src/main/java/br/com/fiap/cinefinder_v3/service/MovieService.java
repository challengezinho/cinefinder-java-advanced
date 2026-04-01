package br.com.fiap.cinefinder_v3.service;

import br.com.fiap.cinefinder_v3.dto.MovieResponse;
import br.com.fiap.cinefinder_v3.repository.MovieRepo;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class MovieService {

    private MovieRepo repo;

    public Page<MovieResponse> getAll(Pageable pageable) {
        return repo.findAll(pageable).map(MovieResponse::fromMovie);
    }

    public MovieResponse getById(Long id) {
        return repo.findById(id)
                .map(MovieResponse::fromMovie)
                .orElseThrow();
    }


}
