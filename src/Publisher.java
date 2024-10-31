


import java.util.Set;

import jakarta.persistence.Basic;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Publisher {
    @Id long id;

    @Basic(optional = false)
    String name;

    @OneToMany(mappedBy = "publisher")
    Set<Book> books;
}
