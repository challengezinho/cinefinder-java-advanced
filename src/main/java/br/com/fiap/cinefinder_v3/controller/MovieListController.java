package br.com.fiap.cinefinder_v3.controller;

import br.com.fiap.cinefinder_v3.dto.CreateMovieListDTO;
import br.com.fiap.cinefinder_v3.model.MovieList;
import br.com.fiap.cinefinder_v3.service.MovieListService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/lists")
@AllArgsConstructor
@Log4j2
public class MovieListController {

    private final MovieListService service;

    @GetMapping
    public Page<MovieList> getLists(Pageable pageable) {
        log.info("Getting all movie lists ");
        return service.getAllMovieLists(pageable);
    }

    @GetMapping("/{id}")
    public MovieList getMovieList(@PathVariable Long id) {
        log.info("Getting movie list with id {}", id);
        return service.getById(id);
    }

    @PostMapping
    public MovieList createMovieList(@RequestBody CreateMovieListDTO movieList) {
        log.info("Creating movie list {}", movieList);
        return service.create(movieList);
    }

    @PostMapping("/{id}/movies/{movieId}")
    public MovieList addMovie(@PathVariable Long id, @PathVariable Long movieId) {
        log.info("Adding movie {} to list {}", movieId, id);
        return service.addMovieToList(id, movieId);
    }

    @DeleteMapping("/{id}/movies/{movieId}")
    public MovieList removeMovie(@PathVariable Long id, @PathVariable Long movieId) {
        log.info("Remove movie {} to list {}", movieId, id);
        return service.removeMovieToList(id, movieId);
    }
}
