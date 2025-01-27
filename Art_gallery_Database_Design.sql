DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Art;
DROP TABLE IF EXISTS Exhibition ;
DROP TABLE IF EXISTS  Art_Exhibition;
DROP TABLE IF EXISTS Permanent_collections;
DROP TABLE IF EXISTS Loan_collections;

CREATE TABLE Artist (
    ArtistID  int NOT NULL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Place_of_origin VARCHAR(255),
    Date_of_birth DATE,
    Date_of_death DATE,
    Artistic_epoch VARCHAR(200),
    Primary_artist_style VARCHAR(200),
    Overview TEXT
)

INSERT INTO Artist (ArtistID, Name, Place_of_origin, Date_of_birth, Date_of_Death, Artistic_epoch, Primary_artist_style, Overview)
VALUES (001, 'Josef Albers', 'German', '1888-03-31', '1976-03-25', 'Modern art', 'optical illusions', 'AMERICAN PAINTER POET SCULPTOR TEACHER THEORETICIAN')
;

INSERT INTO Artist (ArtistID, Name, Place_of_origin, Date_of_birth, Date_of_Death, Artistic_epoch, Primary_artist_style, Overview) VALUES (002, 'Vincent Van Gogh', 'Netherlands', '1853-03-30', '1890-07-29', 'Post Impressionism', 'Pointillism', 'A vivid personal style Noted for its striking color, emphatic brushwork, and contoured forms.')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth, Date_of_Death,Artistic_epoch, Primary_artist_style,Overview) VALUES (003 , 'Claude Monet' , 'France', '1840-11-14' , '1926-12-05' , 'French Impressionist movement', 'Realism' , 'The artist sought to painstakingly depict the changing look of something as ordinary.')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Artistic_epoch, Primary_artist_style,Overview)
VALUES (004 , 'Karan Shign' , 'Indian ', '1990-12-15' , 'Contemporary ', 'Pop art' , ' Karan drew inspiration from the commodification and commercialism of modern life')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Date_of_Death,Artistic_epoch, Primary_artist_style,Overview) VALUES (005 , 'Kabir Ansrai' , 'Omani ', '1835-05-30' ,'1890-08-03', 'Symbolism ', 'Abstract art' , 'A young prodigy uses visual language of shape, form, color and line to create a composition which may exist with a degree of independence')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Artistic_epoch, Primary_artist_style,Overview) VALUES (006 , 'Bianca Roberson' , 'Nigerian ', '2000-05-30', 'Art Deco ', 'Oil painting ' , 'Artsy effects help you discover your creative side and transform your favorite photo into a stunning painting, watercolor, cartoon, sketch, and more.')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Date_of_Death,Artistic_epoch, Primary_artist_style,Overview) VALUES (007 , 'Abbas Al Lawti' , 'Yamen', '1987-05-21','2004-05-21', 'Lowbrow Pop Surrealism', 'Minimalist' , 'The artist was draw to the concept less is more and hence it had showcase on some like the apple .')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Date_of_Death,Artistic_epoch, Primary_artist_style,Overview) VALUES (008 , 'Adrian Roxanne' , 'France', '1777-09-15', '1800-05-16 ', 'Neoclassicism', 'Portraiture' , 'Adrian was a woman of mystery though her exact notes of her life remains unknown her art spoke more and touch hearts of french civilian .')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Artistic_epoch, Primary_artist_style,Overview) VALUES (009 , 'Faye Morrow' , 'Indoasia', '1990-10-06 ', 'Contemporary ', 'Typography' , 'This artist with the understanding growth of the print industry, typography changed and is now present everywhere, including on signs, posters, books, and the internet. An essential component of modern art and design is this aesthetic .')
;

INSERT INTO Artist (ArtistID,Name,Place_of_origin,Date_of_birth,Artistic_epoch, Primary_artist_style,Overview) VALUES (010 , ' Pearce Fang ' , 'Chain', '2005-05-13', 'Gothic', 'Urban' , 'Pearce Fang  approach tackles urban spaces and lifestyles while simultaneously emphasizing the detrimental effects of urbanization, such as poverty, eviction, the environment, etc .')
;


CREATE TABLE Art (
    ArtID  INT PRIMARY KEY NOT NULL,
    Name  VARCHAR(200)NOT NULL,
    Price  INT,
    Creation_Year INT,
    Description TEXT,
    Paint_type  VARCHAR(200),
    Underlying_Material  VARCHAR(200),
    Artistic_style  VARCHAR(200),
    ArtistID INT,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
);


INSERT INTO Art (ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (101 , 'Infernal Cloud' , '40000', '2000', 'Indian themes and imagery frequently serve as inspiration, modern Indian art frequently demonstrates the influence of Western techniques.' , 'Oil', 'paper', 'Modern' ,'004');

INSERT INTO Art (ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (102 , 'Quiet Justice' , '24000', 'This paint show caused the revolution of France in 14th century .' , 'Water Color', 'Canvas', 'Cubism' ,'001');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (103 , 'Cities of Emotion' , '50000','1885' ,'Showcases a reality with the citizens internal voices comes out in the form of colors .' ,'Oil','wood', 'Expressionism' ,'001');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (104 , 'Permission' , '532000', '1865', 'No one is above the law or beneath it, and we never ask a man consent before asking him to follow it.' , ' Oil', 'paper ', 'Abstract' ,'005');


INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (105 , 'Solitude' , '35377', 'The loneliness epidemic among men of the 21st century .' , 'Oil', 'wood', 'Modern' ,'003');

INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (106 , 'Noxious Audience' , '963000', 'A court room paint of johnny depp (victim) and amber turd (abuser) .' , 
'Water Color', 'paper', 'Impressionism' ,'010');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (107 , 'Exasperated Mistress' , '245000','2020', 'When you say someone is exasperated  are implying that they are upset or annoyed about something that is going on or something that someone else is doing .' , 'Oil', 'Canvas', 'Cubism' ,'008');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID)  VALUES (108 , 'Quiet Justice' , '674000','2010', 'A black live matter painting in earlier cases of racism.' , 'Water Color', 'wood', 'Expressionism' ,'007');





INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (109 , 'Joyful Song' , '157000','1820','A jungle of wild birds singing to an eagle  .' , 'Water Color', 'Canvas', 'Impressionism' ,'007');

INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (110 , 'Self Love' , '642000', 'This painting shows a woman sitting in a tub and eating strawberries and slipping champagne  .' , 'Oil', 'paper', 'Cubism' ,'006');

INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (111 , 'Finding the Sun' , '985000', 'The philosophy of finding meaning in a cruel world .' , ' Water Color', 'Canvas', 'Impressionism' ,'006');

INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (112 , 'Classicalist' , '10000', 'The traditionalism in the older society vs the mindset of modern era .' , ' Water Color', 'Canvas', 'Expressionism' ,'003');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (113 , 'Live Side' , '62000','1850', 'Immigration of lintax communities coming to america and change in lifestyle .' , 'Water Color', 'wood', 'Abstract' ,'005 ')

INSERT INTO Art 
(ArtID,Name,Price,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (114 , 'Nostalgic Passage' , '852000', 'A field of dreams of people enjoying their childhood .' , 'Oil', 'Canvas', 'Modern' ,'008');

INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,
Underlying_Material,Artistic_style,ArtistID) VALUES (115 , 'Ancient Knowledge' , '94000','2010','Greek mythology  of athena bistoling her knowledge .' , 'Oil', 'paper', 'Cubism' ,'004');



INSERT INTO Art 
(ArtID,Name,Price,Creation_Year,Description,Paint_type,Underlying_Material,Artistic_style,ArtistID) VALUES (116 , 'Grey Omen' , '100000', '1834', 'The paint hold a dystopian reality of bank during the covid financial crisis .' , 'Oil', 'paper', 'Impressionism' ,'007');

CREATE TABLE Exhibition (
    ExhibitionID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    StartDate DATE,
    EndDate DATE
);

INSERT INTO Exhibition
(ExhibitionID,Name,StartDate,EndDate ) 
VALUES (301,'New love','2023-01-01','2023-04-30');

INSERT INTO Exhibition
(ExhibitionID,Name,StartDate,EndDate ) 
VALUES (302,'Dark Morality ','2023-02-01','2024-01-31');

INSERT INTO Exhibition
(ExhibitionID,Name,StartDate,EndDate ) 
VALUES (303,'White lies & Brutal truth ','2023-03-21','2023-12-21');

INSERT INTO Exhibition
(ExhibitionID,Name,StartDate,EndDate ) 
VALUES (304,'Mr.Fox and Miss Rabbit ','2023-10-25','2024-03-21');


CREATE TABLE Art_Exhibition (
    ArtID INT,
    FOREIGN KEY (ArtID) REFERENCES Art(ArtID),
    ExhibitionID INT,
    FOREIGN KEY (ExhibitionID ) REFERENCES Exhibition (ExhibitionID )
);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 101, 304);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES (102, 303);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES (103, 301);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 105, 302);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 107, 302);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 108, 303);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 110, 301);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 111, 301);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 113, 301);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES ( 114, 304);

INSERT INTO Art_Exhibition (Art_Exhibition, ArtID, ExhibitionID) VALUES (116, 302);



CREATE TABLE Permanent_collections (
   OwnedID  INT PRIMARY KEY,
   Date_of_acquisition  DATE,
   Current_Display CHAR (200),
   acquisition_cost int ,
   ArtID INT,
   FOREIGN KEY (ArtID) REFERENCES Art(ArtID)
);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (401, '1990-12-15', 'TRUE', 409852, 101);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (402, '1967-09-04','FALSE', 948417, 106);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (403, '2000-07-02', 'FALSE' ,370179, 109);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (404, '2003-10-11', 'TRUE', 763733, 110);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (405, '2004-04-13', 'TRUE', 118618, 111);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (406, '2001-05-31','FALSE', 564630, 112);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (407, '2003-10-11', 'TRUE', 763733, 113);

INSERT INTO Permanent_collections (OwnedID, Date_of_acquisition, Current_Display, acquisition_cost, ArtID) VALUES (408, '201-01-14', 'FLASE', 866312, 115);




CREATE TABLE Loan_collections (
    RentalID INT PRIMARY KEY,
    date_of_renting DATE,
    date_of_return  DATE,
    museum  VARCHAR(200),
    rental_cost int ,
    ArtID INT,
    FOREIGN KEY (ArtID) REFERENCES Art(ArtID)
    );




INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (501, '1990-12-15', '2000-12-15', 'Heritage Hub', 802780, 102);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (502, '2000-08-31', '2024-11-15', 'Art Haven ', 129865, 103);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (503, '1993-06-10', '1999-06-10', 'National Optical Museum', 393131, 104);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (504, '1985-10-29', '2023-10-29', 'Knowledge Kingdom', 489415, 105);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (505, '2004-11-25', '2004-11-25', 'National Optical Museum ', 774235, 107);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (506, '1990-03-23', '2025-12-15', 'Art Haven ', 780617, 108);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (507, '1995-12-15', '2023-12-15', 'Art Haven ', 746674, 112);

INSERT INTO Loan_collections (RentalID, date_of_renting ,date_of_return, museum, rental_cost, ArtID) VALUES (508, '1990-12-29', '2020-12-29', 'Heritage Hub', 752717, 116);
