package kr.ac.kopo.parcelservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.parcelservice.model.Notice;
import kr.ac.kopo.parcelservice.service.NoticeService;


@Controller
@RequestMapping("/notice")
public class NoticeController {
	final String path = "notice/";
	
	@Autowired
	NoticeService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<Notice> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);

		return "redirect:../list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Notice item) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model) {
		Notice item = service.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{id}")
	public String update(@PathVariable int id, Notice item) {
		item.setId(id);
		service.update(item);
		
		return "redirect:../detail/" + item.getId();
	}
	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model) {
		Notice item = service.item(id);

		model.addAttribute("item", item);

		return path + "detail";
	}
}
