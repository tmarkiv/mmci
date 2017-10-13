
### README for mmb_input.db

The SQLite database contains all relevant informations on models and policy rules. It will be processed by the GUI, CLI and on the website.

It contains the following tables, followed by their datatype.

## Table1: models
	* model_id 				- INT
	* internal_name 		- TEXT
	* path 					- TEXT
	* description_id 		- INTEGER


## Table2: prules

	* prule_id 				- INT
	* internal_name 		- TEXT
	* description_id 		- INTEGER
	* Parameter_1 			- REAL
	* Parameter_2 			- REAL
	* ...
	* Parameter_n 			- REAL


## Table3: description

	* description_id 		- INT
	* ac_ref 				- TEXT
	* paper_title 			- TEXT
	* journal 				- TEXT
	* replicants_name		- TEXT
	* pub_date 			 	- TEXT
	* "keywords" 			- TEXT
	* description 			- TEXT

## Table4: models_prules

	* links Models <--> Policy rules (boolean data)


## Table5: models_ovares

	* links Models <--> Output variables (boolean data)


## Table6: models_sterms

	* links Models <--> Shock terms (boolean data)
	
