package dataexample;


import java.util.stream.Stream;

import jakarta.data.repository.BasicRepository;
import jakarta.data.repository.Find;
import jakarta.data.repository.Query;
import jakarta.data.repository.Repository;

@Repository
public interface Publishers extends BasicRepository<Publisher,Long> {
	@Query(" ")
	Stream<Publisher> all();

	@Find
	Publisher find(Long id);
}
