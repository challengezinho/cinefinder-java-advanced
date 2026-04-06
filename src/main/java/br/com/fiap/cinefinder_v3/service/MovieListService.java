package br.com.fiap.cinefinder_v3.service;

import br.com.fiap.cinefinder_v3.dto.CreateMovieListDTO;
import br.com.fiap.cinefinder_v3.dto.UpdateMovieListDTO;
import br.com.fiap.cinefinder_v3.model.MovieList;
import br.com.fiap.cinefinder_v3.repository.MovieListRepo;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class MovieListService {

    private final MovieListRepo repo;

    public Page<MovieList> getAllMovieLists(Pageable pageable) {
        return repo.findAll(pageable);
    }

    public MovieList getById(Long id) {
        return repo.findById(id).orElseThrow();
    }

    public MovieList create(CreateMovieListDTO movieList) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public MovieList update(Long id, UpdateMovieListDTO movieList) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void delete(Long id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public MovieList addMovieToList(Long id, Long movieId) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public MovieList removeMovieToList(Long id, Long movieId) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    //TODO: MovieListResponse implementation
}
