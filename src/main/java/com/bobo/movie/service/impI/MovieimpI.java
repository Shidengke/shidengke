package com.bobo.movie.service.impI;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bobo.movie.dao.MovieMapper;
import com.bobo.movie.domain.Movie;
import com.bobo.movie.service.MovieService;

@Service
public class MovieimpI implements MovieService {

	@Autowired
	private MovieMapper mapper;
	
	public List<Movie> getMovielist() {
		// TODO Auto-generated method stub
		return mapper.getMovielist();
	}

}
