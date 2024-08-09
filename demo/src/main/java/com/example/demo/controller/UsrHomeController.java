package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Controller
public class UsrHomeController {
	private int count;
	public UsrHomeController() {
		count = 0;
	}
	@RequestMapping("/usr/home/main")
	@ResponseBody
	public String showMain() {
		return "안녕";
	}
	@RequestMapping("/usr/home/getInt")
	@ResponseBody
	public int getInt() {
		return 3;
	}
	@RequestMapping("/usr/home/getString")
	@ResponseBody
	public String getString() {
		return "hi";
	}
	@RequestMapping("/usr/home/getMap")
	@ResponseBody
	public Map<String, Object> getMap() {
		Map<String, Object> map = new HashMap<>();
		map.put("철수나이", 11);
		map.put("영수나이", 12);

		return map;
	}
	@RequestMapping("/usr/home/getDouble")
	@ResponseBody
	public Double getDouble() {
		return 3.14;
	}
	@RequestMapping("/usr/home/getBoolean")
	@ResponseBody
	public Boolean getBoolean() {
		return true;
	}
	@RequestMapping("/usr/home/getArticle")
	@ResponseBody
	public Article getArticle() {
		Article article = new Article(1, "제목", "내용");
		return article;
	}
	@RequestMapping("/usr/home/getList")
	@ResponseBody
	public List<String> getList() {
		List<String> list = new ArrayList<>();
		list.add("철수 나이");
		list.add("영수 나이");
		return list;
	}
}
@Data
@AllArgsConstructor
@NoArgsConstructor
class Article {

	int id;
	String title;
	String body;
}

