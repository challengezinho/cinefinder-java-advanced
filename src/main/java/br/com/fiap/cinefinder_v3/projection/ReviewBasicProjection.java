package br.com.fiap.cinefinder_v3.projection;

import br.com.fiap.cinefinder_v3.model.Review;
import org.springframework.data.rest.core.config.Projection;

@Projection(name = "reviewView", types = Review.class)
public interface ReviewBasicProjection {


}
