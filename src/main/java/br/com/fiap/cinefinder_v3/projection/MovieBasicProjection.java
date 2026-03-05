package br.com.fiap.cinefinder_v3.projection;

import br.com.fiap.cinefinder_v3.model.Movie;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.rest.core.config.Projection;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Projection(name = "movieView", types = Movie.class)
public interface MovieBasicProjection {
    Long getId();

    String getTitle();

    String getDescription();

    LocalDate getReleaseDate();

    @Value("#{target.genres.![name]}")
    Set<String> getGenresNames();

    List<ReviewBasicProjection> getReviews();


}
