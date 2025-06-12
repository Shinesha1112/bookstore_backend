package com.bookstore.controller;

import com.bookstore.entity.User;
import com.bookstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
@CrossOrigin(origins="https://bookstore-project-ahmta4lnx-shinesha-ws-projects.vercel.app/")

@RestController
@ RequestMapping("/api")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public Map<String,Object> registerUser(@RequestBody Map<String,String>  registerData)  {
        Map<String, Object> response = new HashMap<>();
        try {
            User value = userService.registerUser(registerData.get("userName"), registerData.get("password"));
            response.put("status", value != null ? "success" : "failure");
            return response;
        }
        catch(Exception e) {
            response.put("status", "failure");
            response.put("error", e.getMessage());
        }
  return response;



    }

    @PostMapping("/login")
    public Map<String,Object> login(@RequestBody Map<String,String> LoginData) {
String userName=LoginData.get("userName");
String password=LoginData.get("password");
        boolean success = userService.login(userName,password);

        Map<String, Object> response = new HashMap<>();
        response.put("status", success ? "success" : "failure");
        return response;
    }
}