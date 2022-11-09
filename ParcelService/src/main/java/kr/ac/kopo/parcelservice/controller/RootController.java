package kr.ac.kopo.parcelservice.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.parcelservice.model.Member;
import kr.ac.kopo.parcelservice.service.MemberService;
import kr.ac.kopo.parcelservice.service.ParcelService;

@Controller
public class RootController {

	@Autowired
	MemberService service;

	@Autowired
	ParcelService parcelService;

	@RequestMapping("/")
	public String index() {
		
		return "index";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String login(Member member, HttpSession session) {
		if (service.login(member)) {
			session.setAttribute("member", member);

		String targetUrl = (String) session.getAttribute("target_url");
		session.removeAttribute("target_url");

		if (targetUrl == null) {
				return "redirect:.";
			} else {
				return "redirect:" + targetUrl;
		}
		} else {
			return "redirect:login";
		}


	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String signup(Member item) {
		service.signup(item);

		return "redirect:.";

	}

	@ResponseBody
	@GetMapping("/checkId/{id}")
	public String checkId(@PathVariable String id) {

		if (service.checkId(id))
			return "OK";
		else
			return "FAIL";
	}
}
