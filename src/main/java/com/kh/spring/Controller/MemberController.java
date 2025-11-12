package com.kh.spring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MemberController {
    @PostMapping("insert.me")
    public String joinMember(Member member) {}

    @GetMapping("enrollForm.me")
    public String enrollForm() {
        return "Sign_Up";
    }

    @GetMapping("loginForm.me")
    public  String login() {return "Login";}
}
