
### README for mmb_input.db

The SQLite database contains all relevant informations on models and policy rules. It will be processed by the GUI, CLI and on the website.

It contains the following tables, followed by their datatype.

## Table1: models
	* `model_id` INTEGER UNIQUE
	* `internal_name` text NOT NULL UNIQUE
	* `path` text NOT NULL
	* `description_id` integer 
	* `interest` INTEGER 
	* `inflation` INTEGER
	* `outputgap` INTEGER
	* `outpu` INTEGER
	* `interest_` INTEGER
	* `fiscal_` INTEGER
	* `prule01` INTEGER
	* ...
	* `prule09` INTEGER

The policy rules (prules) contain boolean data on whether the model works with the respective policy rule (e.i. NULL) or not (value of 1).

The description_id links to an entry from the 'description' table.

## Table2: prules

	* `prule_id` INT UNIQUE
	* `internal_name` text
	* `description_id` int
	* `param1` real
	* `param2` real
	* ...
	* `param33` real


## Table3: description

	* `description_id` INT NOT NULL
	* `ac_ref` text NOT NULL
	* `paper_title` text
	* `journal` text
	* `replicants_name` text
	* `pub_date` text
	* `keywords` text
	* `description` text
	* `author1` text
	* `author2` TEXT
	* `author3` TEXT
	* `author4` TEXT
	* `author_n` TEXT
