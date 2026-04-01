package br.com.fiap.cinefinder_v3.service;

import br.com.fiap.cinefinder_v3.model.Review;
import br.com.fiap.cinefinder_v3.repository.ReviewRepo;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


@AllArgsConstructor
@Service
public class ReviewService {

    private final ReviewRepo repo;

    public Page<Review> getAll(Pageable pageable) {
        return repo.findAll(pageable);
    }
}
