package com.bobo.movie.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobo.movie.domain.Movie;
import com.bobo.movie.service.MovieService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class MovieController {
       
	@Autowired
	private MovieService service;
	
	
	@RequestMapping("list")
	public String getMovielist(HttpServletRequest request,@RequestParam(defaultValue="1")int pageNum) {
		PageHelper.startPage(pageNum, 2);
		List<Movie> movielist = service.getMovielist();
		PageInfo<Movie> info = new PageInfo<Movie>(movielist);
		request.setAttribute("movielist", movielist);
		request.setAttribute("info", info);
		return "list";
	}
	//本地也改变了////
}
