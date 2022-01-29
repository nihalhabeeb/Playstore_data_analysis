--getting the count of null values #############################
SELECT
SUM(CASE WHEN app is null THEN 1 ELSE 0 END) AS app_null,
SUM(CASE WHEN category is null THEN 1 ELSE 0 END) AS category_null,
SUM(CASE WHEN rating is null THEN 1 ELSE 0 END) AS rating_null,
SUM(CASE WHEN reviews is null THEN 1 ELSE 0 END) AS reviews_null,
SUM(CASE WHEN size is null THEN 1 ELSE 0 END) AS size_null,
SUM(CASE WHEN installs is null THEN 1 ELSE 0 END) AS installs_null,
SUM(CASE WHEN type is null THEN 1 ELSE 0 END) AS type_null,
SUM(CASE WHEN price is null THEN 1 ELSE 0 END) AS price_null,
SUM(CASE WHEN content_rating is null THEN 1 ELSE 0 END) AS content_rating_null,
SUM(CASE WHEN genres is null THEN 1 ELSE 0 END) AS genres_null,
SUM(CASE WHEN last_updated is null THEN 1 ELSE 0 END) AS last_updated_null,
SUM(CASE WHEN current_ver is null THEN 1 ELSE 0 END) AS current_ver_null,
SUM(CASE WHEN android_ver is null THEN 1 ELSE 0 END) AS android_ver_null
FROM playstore
	
--only selecting non null values in case of columns with few null values
--replacing null values in the 'rating' column with 0 as the null value count is high
SELECT
	app,
	category,
	CAST(COALESCE(rating,0.0) AS DOUBLE PRECISION) AS rating, --replace null values with 0.0 and
	--convert data type to double precision
	reviews,
	--remove 'M','K' and replace 'Varies with device' with a 30 MB size (based on average app size)
	--convert to double precision
	CAST(REPLACE(REPLACE(REPLACE(size,'M',''),'k',''),'Varies with device','30') AS DOUBLE PRECISION) as size_in_mb,
	--remove '+',',' and convert to double precision
	CAST(REPLACE(REPLACE(installs, '+',''),',','') AS DOUBLE PRECISION) as installs,
	type,
	--remove '$' and convert to double precision
	CAST(REPLACE(price,'$','') AS DOUBLE PRECISION) as price_in_dollars,
	content_rating,
	genres,
	last_updated,
	current_ver as current_version,
	--remove ' and up'
	REPLACE(android_ver,' and up','') as android_version
INTO playstore_2 --select the query into new table
FROM playstore 
WHERE type IS NOT NULL AND current_ver IS NOT NULL AND android_ver IS NOT NULL; --remove the data with null values