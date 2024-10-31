


import java.util.Set;

import jakarta.persistence.Basic;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

@Entity
public class Author {
    @Id
    String ssn;

    @Basic(optional = false)
    String name;

    Address address;

    @ManyToMany
    Set<Book> books;
}

