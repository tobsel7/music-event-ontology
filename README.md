# music-event-ontology

A prototype for a music event ontology mapping the content of a relational DB to RDF triples.

## Quick Start

Run the following command to start the PostgreSQL database with the pre-loaded music and event schema:

```bash
docker compose up -d
```

## Database Connection Details

* **Host:** `localhost`
* **Port:** `5432`
* **User:** `user`
* **Password:** `password`
* **Database:** `music`

## Project Resources

* **/ontology**: Contains the OWL ontology and `.obda` mapping files. These are ready for direct import into Protégé.
* **/data**: Contains the raw data and SQL scripts defining the database schema.
* **/plugin**: Contains jars that can be added to Protégé to enable OBDA support.
* **/driver**: Contains the required PostgreSQL JDBC driver for the OBDA connection.

## Setup & Usage

This project is designed for use with the **Protégé** ontology editor.

1.  **Load Plugins**: Add the plugin jars to the `/plugin` directory in the Protégé installation.
2.  **Open Ontology**: Load the files from the `/ontology` directory.
3.  **Configure Driver**: Point Protégé to the JDBC driver in the `/driver` folder to enable database communication.
4.  **OBDA Mappings**: Use the Ontop plugin (or equivalent) to interact with the relational data as a Virtual Knowledge Graph.