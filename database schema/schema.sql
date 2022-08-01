CREATE TABLE `migrants` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `year_of_birth` smallint,
  `year_of_death` smallint,
  `social_status_id` int,
  `family_member_id` int,
  `education_id` int,
  `religion_id` int,
  `ethnicity_id` int,
  `home_before_migration_id` int,
  `home_after_migration_id` int,
  `occupation_before_migration_id` int,
  `occupation_after_migration_id` int,
  `migrant_type_id` int,
  `was_in_party` boolean,
  `why_was_added` varchar(255)
);

CREATE TABLE `events` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `date` date,
  `description` varchar(255),
  `event_type_id` int,
  `geo` varchar(255)
);

CREATE TABLE `sources` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `archive_id` int,
  `date` date,
  `number_of_sheets` smallint,
  `file_id` int
);

CREATE TABLE `media_content` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `description` varchar(255),
  `media_content_type_id` int,
  `media_content_author_id` int,
  `year_of_digitization` smallint,
  `year_of_creation` smallint,
  `geo` varchar(255)
);

CREATE TABLE `migrations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `migration_type_id` int,
  `place_of_departure_id` int,
  `place_of_arrival_id` int,
  `count_of_migrants` int,
  `why_was_added` varchar(255)
);

CREATE TABLE `institutions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `year_of_foundation` smallint,
  `year_of_liquidation_or_rename` smallint,
  `institution_type_id` int,
  `institution_status_id` int,
  `place_id` int
);

CREATE TABLE `publications` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `scientific_publication_id` int,
  `edition` tinyint,
  `volume` tinyint,
  `issue` tinyint,
  `number` tinyint,
  `part` tinyint,
  `publishing_house_id` int,
  `publication_place_id` int,
  `publiction_type_id` int,
  `year_of_publication` smallint,
  `page_from` smallint,
  `page_to` smallint,
  `language_id` int,
  `url` varchar(255),
  `storage_id` int
);

CREATE TABLE `c_migrations_migrants` (
  `migrant_id` int,
  `migration_id` int
);

CREATE TABLE `c_migrants_sources` (
  `migrant_id` int,
  `source_id` int
);

CREATE TABLE `c_sources_events` (
  `source_id` int,
  `event_id` int
);

CREATE TABLE `c_sources_media_content` (
  `source_id` int,
  `media_content_id` int
);

CREATE TABLE `c_sources_publications` (
  `source_id` int,
  `publication_id` int
);

CREATE TABLE `c_sources_institutions` (
  `source_id` int,
  `institution_id` int
);

CREATE TABLE `c_sources_migrations` (
  `source_id` int,
  `migration_id` int
);

CREATE TABLE `c_publications_events` (
  `publication_id` int,
  `event_id` int
);

CREATE TABLE `c_publications_institutions` (
  `publication_id` int,
  `institution_id` int
);

CREATE TABLE `c_publications_migrations` (
  `publication_id` int,
  `migration_id` int
);

CREATE TABLE `c_publications_publication_participants` (
  `publication_id` int,
  `publication_participant_id` int
);

CREATE TABLE `c_publications_literature` (
  `publication_id` int,
  `literature_id` int
);

CREATE TABLE `c_events_institutions` (
  `event_id` int,
  `institution_id` int
);

CREATE TABLE `c_events_migrations` (
  `event_id` int,
  `migration_id` int
);

CREATE TABLE `c_events_media_content` (
  `event_id` int,
  `media_content_id` int
);

CREATE TABLE `c_insitutions_media_content` (
  `institution_id` int,
  `media_content_id` int
);

CREATE TABLE `c_institutions_migrations` (
  `institution_id` int,
  `migration_id` int,
  `institution_migration_function_id` int
);

CREATE TABLE `c_publications_publication_sources` (
  `publication_id` int,
  `pub_source_id` int
);

CREATE TABLE `family_members` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `social_statuses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `educations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `religions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `ethnicities` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `occupations` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `places` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `migrant_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `event_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `funds` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `number` int,
  `fund_name` varchar(255)
);

CREATE TABLE `inventories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `number` int,
  `fund_id` int
);

CREATE TABLE `files` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `number` int,
  `file_name` varchar(255),
  `inventory_id` int
);

CREATE TABLE `media_content_authors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `media_content_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `migration_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `institution_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `institution_statuses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `scientific_publications` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `scientific_publication_type_id` int
);

CREATE TABLE `scientific_publication_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `publishing_houses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `publication_places` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `publiction_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `languages` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `storages` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `publication_participants` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `publication_participant_type_id` int
);

CREATE TABLE `publication_participant_types` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `literature` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `archives` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `institution_migration_functions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `publication_sources` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

ALTER TABLE `migrants` ADD FOREIGN KEY (`social_status_id`) REFERENCES `social_statuses` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`family_member_id`) REFERENCES `family_members` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`education_id`) REFERENCES `educations` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`ethnicity_id`) REFERENCES `ethnicities` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`occupation_before_migration_id`) REFERENCES `occupations` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`occupation_after_migration_id`) REFERENCES `occupations` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`home_before_migration_id`) REFERENCES `places` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`home_after_migration_id`) REFERENCES `places` (`id`);

ALTER TABLE `migrants` ADD FOREIGN KEY (`migrant_type_id`) REFERENCES `migrant_types` (`id`);

ALTER TABLE `events` ADD FOREIGN KEY (`event_type_id`) REFERENCES `event_types` (`id`);

ALTER TABLE `sources` ADD FOREIGN KEY (`archive_id`) REFERENCES `archives` (`id`);

ALTER TABLE `sources` ADD FOREIGN KEY (`file_id`) REFERENCES `files` (`id`);

ALTER TABLE `media_content` ADD FOREIGN KEY (`media_content_author_id`) REFERENCES `media_content_authors` (`id`);

ALTER TABLE `media_content` ADD FOREIGN KEY (`media_content_type_id`) REFERENCES `media_content_types` (`id`);

ALTER TABLE `migrations` ADD FOREIGN KEY (`place_of_departure_id`) REFERENCES `places` (`id`);

ALTER TABLE `migrations` ADD FOREIGN KEY (`place_of_arrival_id`) REFERENCES `places` (`id`);

ALTER TABLE `migrations` ADD FOREIGN KEY (`migration_type_id`) REFERENCES `migration_types` (`id`);

ALTER TABLE `institutions` ADD FOREIGN KEY (`institution_type_id`) REFERENCES `institution_types` (`id`);

ALTER TABLE `institutions` ADD FOREIGN KEY (`institution_status_id`) REFERENCES `institution_statuses` (`id`);

ALTER TABLE `institutions` ADD FOREIGN KEY (`place_id`) REFERENCES `places` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`scientific_publication_id`) REFERENCES `scientific_publications` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`publishing_house_id`) REFERENCES `publishing_houses` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`publication_place_id`) REFERENCES `publication_places` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`publiction_type_id`) REFERENCES `publiction_types` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

ALTER TABLE `publications` ADD FOREIGN KEY (`storage_id`) REFERENCES `storages` (`id`);

ALTER TABLE `c_migrations_migrants` ADD FOREIGN KEY (`migrant_id`) REFERENCES `migrants` (`id`);

ALTER TABLE `c_migrations_migrants` ADD FOREIGN KEY (`migration_id`) REFERENCES `migrations` (`id`);

ALTER TABLE `c_migrants_sources` ADD FOREIGN KEY (`migrant_id`) REFERENCES `migrants` (`id`);

ALTER TABLE `c_migrants_sources` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_events` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_events` ADD FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `c_sources_media_content` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_media_content` ADD FOREIGN KEY (`media_content_id`) REFERENCES `media_content` (`id`);

ALTER TABLE `c_sources_publications` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_publications` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_sources_institutions` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_institutions` ADD FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `c_sources_migrations` ADD FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`);

ALTER TABLE `c_sources_migrations` ADD FOREIGN KEY (`migration_id`) REFERENCES `migrations` (`id`);

ALTER TABLE `c_publications_events` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_events` ADD FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `c_publications_institutions` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_institutions` ADD FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `c_publications_migrations` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_migrations` ADD FOREIGN KEY (`migration_id`) REFERENCES `migrations` (`id`);

ALTER TABLE `c_publications_publication_participants` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_publication_participants` ADD FOREIGN KEY (`publication_participant_id`) REFERENCES `publication_participants` (`id`);

ALTER TABLE `c_publications_literature` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_literature` ADD FOREIGN KEY (`literature_id`) REFERENCES `literature` (`id`);

ALTER TABLE `c_events_institutions` ADD FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `c_events_institutions` ADD FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `c_events_migrations` ADD FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `c_events_migrations` ADD FOREIGN KEY (`migration_id`) REFERENCES `migrations` (`id`);

ALTER TABLE `c_events_media_content` ADD FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);

ALTER TABLE `c_events_media_content` ADD FOREIGN KEY (`media_content_id`) REFERENCES `media_content` (`id`);

ALTER TABLE `c_insitutions_media_content` ADD FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `c_insitutions_media_content` ADD FOREIGN KEY (`media_content_id`) REFERENCES `media_content` (`id`);

ALTER TABLE `c_institutions_migrations` ADD FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

ALTER TABLE `c_institutions_migrations` ADD FOREIGN KEY (`migration_id`) REFERENCES `migrations` (`id`);

ALTER TABLE `c_institutions_migrations` ADD FOREIGN KEY (`institution_migration_function_id`) REFERENCES `institution_migration_functions` (`id`);

ALTER TABLE `c_publications_publication_sources` ADD FOREIGN KEY (`publication_id`) REFERENCES `publications` (`id`);

ALTER TABLE `c_publications_publication_sources` ADD FOREIGN KEY (`pub_source_id`) REFERENCES `publication_sources` (`id`);

ALTER TABLE `inventories` ADD FOREIGN KEY (`fund_id`) REFERENCES `funds` (`id`);

ALTER TABLE `files` ADD FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`);

ALTER TABLE `scientific_publications` ADD FOREIGN KEY (`scientific_publication_type_id`) REFERENCES `scientific_publication_types` (`id`);

ALTER TABLE `publication_participants` ADD FOREIGN KEY (`publication_participant_type_id`) REFERENCES `publication_participant_types` (`id`);
