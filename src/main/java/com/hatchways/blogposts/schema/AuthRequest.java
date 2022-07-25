package com.hatchways.blogposts.schema;

import javax.validation.constraints.NotBlank;

public class AuthRequest {
  @NotBlank(message = "username is required")
  private String username;

  @NotBlank(message = "password is required")
  private String password;

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public AuthRequest(String username, String password) {
    this.username = username;
    this.password = password;
  }
}
