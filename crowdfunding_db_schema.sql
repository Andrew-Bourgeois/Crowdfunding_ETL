Create Table Category(
	category_id varchar not null,
	category varchar not null,
	Primary Key(category_id)
);

Create Table Sub_Category(
	subcategory_id varchar not null,
	subcategory varchar not null,
	Primary Key(subcategory_id)
);

Create Table Contacts(
	contacts_id int not null,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	Primary Key(contacts_id)
);

Create Table Campaign(
	cf_id int not null,
	contacts_id int not null,
	company_name varchar not null,
	description varchar not null,
	goal numeric not null,
	pledged numeric not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar not null,
	subcategory_id varchar not null,
	Foreign Key(contacts_id) references Contacts(contacts_id),
	Foreign Key(category_id) references Category(category_id),
	Foreign Key(subcategory_id) references Sub_Category(subcategory_id),
	Primary Key(cf_id)

);

