package br.com.fiap.cinefinder_v3.controller;

import br.com.fiap.cinefinder_v3.dto.LoginDTO;
import br.com.fiap.cinefinder_v3.dto.RegisterDTO;
import br.com.fiap.cinefinder_v3.model.User;
import br.com.fiap.cinefinder_v3.repository.UserRepo;
import br.com.fiap.cinefinder_v3.service.JwtService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/auth")
@AllArgsConstructor
@Log4j2
public class AuthController {

    private final AuthenticationManager authManager;
    private final JwtService jwtService;
    private final UserRepo userRepo;
    private final PasswordEncoder passwordEncoder;

    @PostMapping("/login")
    public Map<String, Object> login(@RequestBody LoginDTO loginDTO) {
        log.info("Login attempt: {}", loginDTO.email());
        authManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginDTO.email(), loginDTO.password())
        );
        var user = userRepo.findByEmail(loginDTO.email())
                .orElseThrow(() -> new RuntimeException("User not found"));
        var token = jwtService.generateToken(user.getEmail());
        return Map.of(
                "token", token,
                "id", user.getId(),
                "name", user.getName(),
                "email", user.getEmail()
        );
    }

    @PostMapping("/register")
    public Map<String, Object> register(@RequestBody RegisterDTO registerDTO) {
        log.info("Register attempt: {}", registerDTO.email());
        var user = new User();
        user.setName(registerDTO.name());
        user.setEmail(registerDTO.email());
        user.setPassword(passwordEncoder.encode(registerDTO.password()));
        user.setAge(registerDTO.age());
        user = userRepo.save(user);
        var token = jwtService.generateToken(user.getEmail());
        return Map.of(
                "token", token,
                "id", user.getId(),
                "name", user.getName(),
                "email", user.getEmail()
        );
    }
}
