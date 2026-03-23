package br.com.fiap.cinefinder_v3.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.PositiveOrZero;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "cf_review")

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

    @PositiveOrZero
    private BigDecimal rating;

    private String comments;

    public Review(Long id, User user, Movie movie, BigDecimal rating, String comments) {
        this.id = id;
        this.user = user;
        this.movie = movie;
        this.rating = rating;
        this.comments = comments;

        movie.addReview(this);
    }
}