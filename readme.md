# Jakarta Data with Quarkus using JBang

Quarkus includes Hibernate ORM 6.6+ and so supports Jakarta Data.

For now it requires to manually add the Jakarta Data API dependency (`jakarta.data:jakarta.data-api:1.0.1`).

This example shows how to use Jakarta Data with Quarkus using JBang.

The examples and principles used comes from the Hibernate Guide [Jakarta Data Repositories](https://docs.jboss.org/hibernate/orm/6.6/repositories/html_single/Hibernate_Data_Repositories.html).

## Running the example

Install JBang if not already installed:

```bash
curl -Ls https://sh.jbang.dev | bash -s - app setup
```

or use any of the supported installation methods from https://jbang.dev/download

Run the script:

```bash
jbang Main.java
```

It will start a Quarkus application, setup a H2 database and execute various operations.

After the script has finished you can check the database content using the H2 console alias:

```bash
jbang h2console
```

or directly:

```bash
jbang h2@jbanghub/h2 -url jdbc:h2:file:./library
```

