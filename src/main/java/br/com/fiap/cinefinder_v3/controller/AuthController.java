package br.com.fiap.cinefinder_v3.controller;

import br.com.fiap.cinefinder_v3.dto.LoginDTO;
import br.com.fiap.cinefinder_v3.dto.RegisterDTO;
import br.com.fiap.cinefinder_v3.model.User;
import br.com.fiap.cinefinder_v3.repository.UserRepo;
import br.com.fiap.cinefinder_v3.service.JwtService;
import jakarta.validation.Valid;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
public class AuthController {

    private final UserRepo userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;

    public AuthController(UserRepo userRepository,
                          PasswordEncoder passwordEncoder,
                          JwtService jwtService,
                          AuthenticationManager authenticationManager) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.authenticationManager = authenticationManager;
    }

    @PostMapping("/register")
    public String register(@RequestBody @Valid RegisterDTO dto) {

        if (userRepository.findByEmail(dto.email()).isPresent()) {
            throw new RuntimeException("Email já cadastrado");
        }

        User user = User.builder()
                .name(dto.name())
                .email(dto.email())
                .password(passwordEncoder.encode(dto.password()))
                .age(dto.age())
                .isAdmin(false)
                .build();

        userRepository.save(user);

        return jwtService.generateToken(user.getEmail());
    }

    @PostMapping("/login")
    public String login(@RequestBody LoginDTO dto) {

        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        dto.email(),
                        dto.password()
                )
        );

        return jwtService.generateToken(dto.email());
    }
}
