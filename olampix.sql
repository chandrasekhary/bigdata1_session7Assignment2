use custom;

drop table olampix;


select current_database();

show  tables;

create  table if not exists olampix

(
athlete string,
age int,
contry string,
year string,
closing_date string,
sport string,
gold_m int,
silver_m int,
bronze_m int,
total_m int
)
row format delimited fields terminated by '\t' lines terminated by '\n';

load data local inpath '/home/acadgild/olympix_data.csv'
overwrite into table olampix;




-- SELECT contry,sum(total_m) FROM olampix  where sport='Swimming' group by contry ;



-- SELECT year,sum(total_m) FROM olampix  where contry='India' group by year ;

-- SELECT contry,sum(total_m) FROM olampix group by contry;

SELECT contry,sum(gold_m) FROM olampix group by contry;
