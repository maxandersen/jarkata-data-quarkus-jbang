///usr/bin/env jbang "$0" "$@" ; exit $?
package dataexample;

//JAVA 17+
// Update the Quarkus version to what you want here or run jbang with
// `-Dquarkus.version=<version>` to override it.
//DEPS io.quarkus:quarkus-bom:${quarkus.version:3.15.1}@pom
//DEPS io.quarkus:quarkus-picocli
//DEPS io.quarkus:quarkus-hibernate-orm
//DEPS io.quarkus:quarkus-jdbc-h2
//DEPS jakarta.data:jakarta.data-api:1.0.1
//DEPS org.hibernate:hibernate-jpamodelgen:6.6.1.Final

//Q:CONFIG quarkus.datasource.db-kind=h2
//Q:CONFIG quarkus.datasource.jdbc.url=jdbc:h2:mem:test;DB_CLOSE_DELAY=-1
//Q:CONFIG quarkus.datasource.username=sa
//Q:CONFIG quarkus.datasource.password=sa
//Q:CONFIG quarkus.hibernate-orm.database.generation=drop-and-create

//FILES import.sql

// Only done to allow running the script via http/https
// Can be changed to //SOURCE *.java if run locally
//SOURCES Author.java Book.java Bookshop.java Library.java Publisher.java Publishers.java Type.java Address.java

//JAVAC_OPTIONS -proc:full
// comment out to see generated sources
////JAVAC_OPTIONS -s generated

//Q:CONFIG quarkus.banner.enabled=false
//Q:CONFIG quarkus.log.level=WARN

import org.hibernate.StatelessSession;

import jakarta.enterprise.context.control.ActivateRequestContext;
import jakarta.inject.Inject;
import jakarta.transaction.Transactional;
import picocli.CommandLine;

@CommandLine.Command
public class Main implements Runnable {
    
    @Inject Library library;

    @Override
    @Transactional
    @ActivateRequestContext
    public void run() {
    
       library.booksByTitle("B%").forEach(System.out::println);
    }

}
