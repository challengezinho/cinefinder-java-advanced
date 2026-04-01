package br.com.fiap.cinefinder_v3.controller;

import br.com.fiap.cinefinder_v3.model.Review;
import br.com.fiap.cinefinder_v3.service.ReviewService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController
@RequestMapping("/api/reviews")
@AllArgsConstructor
@Log4j2
public class ReviewController {
    private final ReviewService service;

    @GetMapping
    public Page<Review> getReviews(Pageable pageable) {
        return service.getAll(pageable);
    }


}
