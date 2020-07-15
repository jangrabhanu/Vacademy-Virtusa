package com.vedu.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import com.vedu.model.JwtRequestModel;
import com.vedu.model.JwtResponseModel;

@RestController
@CrossOrigin
public class JwtAuthentication {

   @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenUtility jwtTokenUtility;

    @Autowired
    private JwtUserDetailService userDetailsService;

    

@RequestMapping(value = "/login", method = RequestMethod.POST)
public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtRequestModel authenticationRequest) throws Exception {
authenticate(authenticationRequest.getUsername(), authenticationRequest.getPassword());

final UserDetails userDetails = userDetailsService
.loadUserByUsername(authenticationRequest.getUsername());
System.out.println("Data "+userDetails);
final String token = jwtTokenUtility.generateToken(userDetails);
//final String token="eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqb2FtIiwiZXhwIjoxNTk0NzQ4MDE4LCJpYXQiOjE1OTQ3MTIwMTh9.b3tLqpolh2tN5DrCB8cvxb2e5WM-XlvQOH-leX4xEHr4N7hWo1hRBYZI0ZBUcD51q_K3NlqGkkJnM-PzZip4HA";
return ResponseEntity.ok(new JwtResponseModel(token));
}
private void authenticate(String username, String password) throws Exception {
try {
authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
} catch (DisabledException e) {
throw new Exception("USER_DISABLED", e);
} catch (BadCredentialsException e) {
throw new Exception("INVALID_CREDENTIALS", e);
}
}
}