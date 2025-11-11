package com.kh.spring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

    @GetMapping("enrollForm.me")
    public String enrollForm() {
        return "Sign_Up";
    }
}
