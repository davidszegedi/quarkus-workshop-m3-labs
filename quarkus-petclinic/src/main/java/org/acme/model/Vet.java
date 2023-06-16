package org.acme.model;

import java.util.ArrayList;
import java.util.List;

// TODO: Import packages

// TODO: Add Entity and Cacheable annotation
public class Vet {

    // TODO: Add Column and NotEmpty annotation for firstName
    public String firstName;

    // TODO: Add Column and NotEmpty annotation for lastName
    public String lastName;

    // TODO: Add the list of Specialty

    public String getFirstName() {
        return this.firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    public void setLasttName(String lastName) {
        this.lastName = lastName;
    }
    public static List<Vet> listAll(){
        Vet vet = new Vet();
        vet.setFirstName("Daniel");
        vet.setLasttName("Oh");
        List vets = new ArrayList<Vet>();
        vets.add(vet);
        return vets;
    }

}