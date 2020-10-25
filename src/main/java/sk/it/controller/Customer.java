package sk.it.controller;

import javax.validation.constraints.*;

public class Customer {
    private String firstName;

    @NotNull
    @Size(min = 1,message = "is required")
    private String lastName;

    @NotNull(message="Is required")
    @Min(value = 0, message = "Must be greater or equal to 0")
    @Max(value = 10, message = "Must be less or equal to 10")
    private Integer freePasses;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "Only 5 characters/digits")
    private String postalCode;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getFreePasses() {
        return freePasses;
    }

    public void setFreePasses(Integer freePasses) {
        this.freePasses = freePasses;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
}
