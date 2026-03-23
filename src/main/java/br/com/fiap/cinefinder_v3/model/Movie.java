package br.com.fiap.cinefinder_v3.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "cf_movie")

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String title;

    private String description;

    private LocalDate releaseDate;

    @PositiveOrZero
    private BigDecimal averageRating;

    @ManyToMany
    @JoinTable(
            name = "cf_movie_genres",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genres = new HashSet<>();

    @OneToMany(mappedBy = "movie", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Review> reviews = new ArrayList<>();

    public void addGenre(Genre genre) {
        this.genres.add(genre);
    }

    public void removeGenre(Genre genre) {
        this.genres.remove(genre);
    }

    public void addReview(Review review) {
        review.setMovie(this);
        this.reviews.add(review);
        updateRate();
    }

    private void updateRate() {
        this.averageRating = new BigDecimal(0);
        reviews.stream()
                .mapToDouble(r -> r.getRating().doubleValue())
                .average()
                .ifPresent(avg -> this.averageRating = BigDecimal.valueOf(avg));
    }


}
