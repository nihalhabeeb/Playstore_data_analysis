-- query to create the playstore_data table
CREATE TABLE playstore(
	App VARCHAR(200),
	Category VARCHAR(30),
	Rating DECIMAL(2,1),
	Reviews INT,
	Size VARCHAR(20),
	Installs VARCHAR(20),
	Type VARCHAR(10),
	Price VARCHAR(10),
	Content_Rating VARCHAR(20),
	Genres VARCHAR(50),
	Last_Updated VARCHAR(15),
	Current_Ver VARCHAR(50),
	Android_Ver VARCHAR(30)
);