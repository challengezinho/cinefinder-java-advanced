package br.com.fiap.cinefinder_v3.model;

import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity

@Data
@Builder
@NoArgsConstructor
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movie movie;

    private Double rating;

    private String comment;

    public Review(Long id, User user, Movie movie, Double rating, String comment) {
        this.id = id;
        this.user = user;
        this.movie = movie;
        this.rating = rating;
        this.comment = comment;

        movie.addReview(this);
    }
}