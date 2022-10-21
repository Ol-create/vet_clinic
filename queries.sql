/*Queries that provide answers to the questions from all projects.*/

/* Find all animals whose name ends in "mon" */
SELECT * FROM animals WHERE name LIKE '%mon';

/* List the name of all animals born between 2016 and 2019 */
SELECT name FROM animals WHERE date_of_birth >= '01-01-2016' AND date_of_birth <= '01-01-2019';

/* List the name of all animals that are neutered and have less than 3 escape attempts. */
SELECT name FROM animals WHERE neutered IS TRUE AND escape_attempts < 3;

/* List date of birth of all animals named either "Agumon" or "Pikachu" */
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

/* List name and escape attempts of animals that weigh more than 10.5kg */
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

/* Find all animals that are neutered. */
SELECT * FROM animals WHERE neutered IS TRUE;

/* Find all animals not named Gabumon. */
SELECT * FROM animals WHERE name != 'Gabumon';

/* Find all animals with a weight between 10.4kg and 17.3kg */
SELECT * FROM animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

/* No of animal in the table = 11 */
SELECT COUNT(name) FROM animals;

/* No of animals that did not attempt escaping = 2 */
SELECT COUNT (name) FROM animals WHERE escape_attempts = 0;

/* Average weight of animals */
 SELECT AVG (weight_kg) FROM animals;
 /* Who escapes the most, neutered or not neutered animals? */
SELECT neutered, SUM(escape_attempts)
FROM animals
GROUP BY neutered
ORDER BY sum DESC
LIMIT 1;

/* minimum and maximum weight of each type of animal */
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

/* average number of escape attempts per animal type of those born between 1990 and 2000 */
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth >= '01-01-1990' AND date_of_birth <= '01-01-2000' GROUP BY species;
