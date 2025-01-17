create database ItlaTv
use ItlaTv

CREATE TABLE Productoras (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(255) NOT NULL
);
INSERT INTO Productoras (Nombre) VALUES ('Warner Bros');
INSERT INTO Productoras (Nombre) VALUES ('Universal Pictures');
INSERT INTO Productoras (Nombre) VALUES ('20th Century Fox');
INSERT INTO Productoras (Nombre) VALUES ('Paramount Pictures');
INSERT INTO Productoras (Nombre) VALUES ('Legendary Pictures');
INSERT INTO Productoras (Nombre) VALUES ('Lionsgate');
INSERT INTO Productoras (Nombre) VALUES ('MGM');
INSERT INTO Productoras (Nombre) VALUES ('Netflix');
INSERT INTO Productoras (Nombre) VALUES ('HBO');
INSERT INTO Productoras (Nombre) VALUES ('Amazon Studios');
INSERT INTO Productoras (Nombre) VALUES ('Disney');
INSERT INTO Productoras (Nombre) VALUES ('Pixar');
INSERT INTO Productoras (Nombre) VALUES ('Columbia Pictures');
INSERT INTO Productoras (Nombre) VALUES ('New Line Cinema');
INSERT INTO Productoras (Nombre) VALUES ('DreamWorks');



CREATE TABLE Generos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(255) NOT NULL
);
INSERT INTO Generos (Nombre) VALUES ('Comedia');
INSERT INTO Generos (Nombre) VALUES ('Acción');
INSERT INTO Generos (Nombre) VALUES ('Drama');
INSERT INTO Generos (Nombre) VALUES ('Ciencia Ficción');
INSERT INTO Generos (Nombre) VALUES ('Fantasía');
INSERT INTO Generos (Nombre) VALUES ('Animación');
INSERT INTO Generos (Nombre) VALUES ('Misterio');
INSERT INTO Generos (Nombre) VALUES ('Aventura');
INSERT INTO Generos (Nombre) VALUES ('Terror');
INSERT INTO Generos (Nombre) VALUES ('Crimen');
INSERT INTO Generos (Nombre) VALUES ('Thriller');
INSERT INTO Generos (Nombre) VALUES ('Biografía');
INSERT INTO Generos (Nombre) VALUES ('Historia');
INSERT INTO Generos (Nombre) VALUES ('Familia');
INSERT INTO Generos (Nombre) VALUES ('Western');
INSERT INTO Generos (Nombre) VALUES ('Música');
INSERT INTO Generos (Nombre) VALUES ('Corto');

CREATE TABLE Series (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(1000) NOT NULL,
    ImagenUrl NVARCHAR(1000) NOT NULL,
    VideoUrl NVARCHAR(1000) NOT NULL,
    ProductoraId INT NOT NULL,
    GeneroPrimarioId INT NOT NULL,
    GeneroSecundarioId INT NULL,
    FOREIGN KEY (ProductoraId) REFERENCES Productoras(Id),
    FOREIGN KEY (GeneroPrimarioId) REFERENCES Generos(Id),
    FOREIGN KEY (GeneroSecundarioId) REFERENCES Generos(Id)
);


INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Mandalorian','https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/4826879538A92B52B2B316E2E9D5A1BEC5C774C094FF9F96E3265E0D4220E3E6/scale?width=1200&aspectRatio=1.78&format=webp','https://www.youtube.com/watch?v=aOC8E8z_ifw&ab_channel=StarWars', 11, 4, 5);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Gravity Falls','https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/03A4EB3D71AE0BE1E33A9FC6A0D7DF2C2679A96CB22F776104E43F563BA014C9/scale?width=1200&amp;aspectRatio=1.78&amp;format=webp','https://www.youtube.com/watch?v=yfUDIPUETUg&ab_channel=DisneyChannel', 11, 6, 1);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Wanda Vision','https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/5525675DDD0ADAC6D5527A7E051241B2DB49578C204C32C9C097B67022EABFC8/scale?width=1200&amp;aspectRatio=1.78&amp;format=webp','https://www.youtube.com/watch?v=R2oA59hYN_Y&ab_channel=MarvelLatinoam%C3%A9ricaOficial', 11, 4, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Stranger Things','https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABS6v2gvwesuRN6c28ZykPq_fpmnQCJwELBU-kAmEcuC9HhWX-DfuDbtA-bfo-IrfgNtxl0qwJJlhI6DENsGFXknKkjhxPGTV-qhp.jpg?r=608','https://www.youtube.com/watch?v=x7Yq9MJUqjY&ab_channel=NetflixEspa%C3%B1a', 8, 4, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Witcher','https://es.web.img2.acsta.net/pictures/19/11/22/09/33/5060052.jpg', 'https://www.youtube.com/watch?v=ETY44yszyNc&ab_channel=NetflixLatinoam%C3%A9rica', 8, 5, 8);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Narcos','https://upload.wikimedia.org/wikipedia/en/b/b9/Narcos_season_1.png', 'https://www.youtube.com/watch?v=xl8zdCY-abw&ab_channel=NetflixAsia', 8, 10, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Boys', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVxQeYPg3rnnjUnLl27yx6G2uOnjP-lj06lQBdHssFNg&s','https://www.youtube.com/watch?v=FbTk8-B5a9w&ab_channel=ONEMediaEspa%C3%B1ol', 10, 2, 1);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Invincible','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhZdlVwwTqNcWlY6vJFqvQpnXRXGfes0juzvamP96zHA&s','https://www.youtube.com/watch?v=ROCIksHW2oc&ab_channel=PrimeVideoM%C3%A9xico', 10, 4, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Fleabag','https://m.media-amazon.com/images/S/pv-target-images/763c0d632cc2e7b97733528c8691529ded913b45b6741dfb99b884fc7c589d83.jpg','https://www.youtube.com/watch?v=L3iqdpYoZNU&ab_channel=AmazonPrimeVideoEspa%C3%B1a', 10, 1, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Game of Thrones','https://m.media-amazon.com/images/M/MV5BN2IzYzBiOTQtNGZmMi00NDI5LTgxMzMtN2EzZjA1NjhlOGMxXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg','https://www.youtube.com/watch?v=KPLWWIOCOOQ&t=7s&ab_channel=GameofThrones', 9, 5, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Chernobyl', 'https://images.ecestaticos.com/V4CiL2KFeh63i3c3KUE3pHSleOY=/0x2:1437x810/1200x675/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2Ffe2%2F3c0%2Fb28%2Ffe23c0b2878276032fe5f0d69732ef95.jpg','https://www.youtube.com/watch?v=s9APLXM9Ei8&ab_channel=HBO', 9, 13, 11);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Westworld', 'https://m.media-amazon.com/images/I/81V2yYyPA2L._AC_UF894,1000_QL80_.jpg','https://www.youtube.com/watch?v=kEkZdgWu7mM&ab_channel=HBOUK', 9, 4, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Good Fight','https://m.media-amazon.com/images/M/MV5BZDliNjMwMzAtYWY3Ny00ODBkLWJiZDktOWRjYThhYjI5YTAwXkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_.jpg','https://www.youtube.com/watch?v=Q65DSXQdaaw&ab_channel=Videoland', 4, 3, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('FBI', 'https://m.media-amazon.com/images/M/MV5BNzk4MjFjMzAtNTk4MC00NzI4LWJmYTctZGJjNTFhYzZiNGRhXkEyXkFqcGdeQXVyMTE0NzY5OTk5._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=_h3NFrBsJAM&ab_channel=RottenTomatoesTV', 4, 10, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Star Trek: Discovery','https://m.media-amazon.com/images/M/MV5BODU1MmVmMTYtNzNhNi00NjRlLTljMWItZmFhMWNmYTNhYThiXkEyXkFqcGdeQXVyMTU5OTc2NTk@._V1_.jpg','https://www.youtube.com/watch?v=oWnYtyNKPsA&ab_channel=Netflix', 4, 4, 8);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The X-Files','https://m.media-amazon.com/images/M/MV5BZDA0MmM4YzUtMzYwZC00OGI2LWE0ODctNzNhNTkwN2FmNTVhXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=KKziOmsJxzE&ab_channel=TVPromos', 3, 4, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Buffy the Vampire Slayer','https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p184321_b_v13_bp.jpg','https://www.youtube.com/watch?v=-1v_q6TWAL4&ab_channel=BuffyverseTrailers', 3, 2, 5);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Glee','https://m.media-amazon.com/images/M/MV5BMDU0NDg5YjgtZTI4NS00MjgyLTlmZjctY2M0ZTU5NTg4Zjk1XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=sefQqCMusJI&ab_channel=BlockbusterUK', 3, 3, 16);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Vikings','https://m.media-amazon.com/images/M/MV5BZWNlZmNiNzItYWMwNC00ODYxLThlNjYtMjU3NzlmNDQxMTY2XkEyXkFqcGdeQXVyMTA3MzQ4MTc0._V1_.jpg','https://www.youtube.com/watch?v=9GgxinPwAGc&ab_channel=RewatchAgain', 7, 2, 8);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Fargo','https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p17672_p_v8_at.jpg','https://www.youtube.com/watch?v=ju75Sd4yAZw&ab_channel=AmazonMGMStudios', 7, 10, 11);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Teen Wolf','https://es.web.img3.acsta.net/pictures/15/10/01/11/22/245908.jpg','https://www.youtube.com/watch?v=BmHM5eUp9w4&ab_channel=AmazonMGMStudios', 7, 2, 5);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Mad Men','https://images.amcnetworks.com/uk.amc.com/wp-content/uploads/2015/07/large-MM.jpg','https://www.youtube.com/watch?v=B8b0B2-hvhc&ab_channel=NickScott', 6, 3, 2);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Orange Is the New Black', 'https://akns-images.eonline.com/eol_images/Entire_Site/201869/rs_634x939-180709061638-634-oitnb-s6.ch.070918.jpg?fit=around%7C634:939&output-quality=90&crop=634:939;center,top', 'https://www.youtube.com/watch?v=vY0qzXi5oJg&ab_channel=NetflixNederland%26Belgi%C3%AB', 6, 1, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Nashville','https://es.web.img2.acsta.net/medias/nmedia/18/90/68/47/20192951.jpg','https://www.youtube.com/watch?v=0ZduL3mLKi0&ab_channel=CMT', 6, 3, 16);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Office(US)','https://m.media-amazon.com/images/M/MV5BMDNkOTE4NDQtMTNmYi00MWE0LWE4ZTktYTc0NzhhNWIzNzJiXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_.jpg','https://www.youtube.com/watch?v=tNcDHWpselE&ab_channel=MaxBrasil', 15, 1, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Trollhunters','https://m.media-amazon.com/images/M/MV5BNzU4MDY5Mjk4OF5BMl5BanBnXkFtZTgwODEzNTE1NTM@._V1_.jpg','https://www.youtube.com/watch?v=J2oNgZlbSKI&ab_channel=NetflixAfterSchool', 15, 6, 8);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Spirit Riding Free','https://m.media-amazon.com/images/M/MV5BMjQ1NWQwOTAtZjJiZC00YWRiLTg4MmEtMjYyZGQ5YjIyZmY2XkEyXkFqcGdeQXVyNjM1MjMyMDE@._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=bxCCU9O1VEY&ab_channel=DreamWorksSpirit', 15, 6, 8);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Monsters at Work','https://m.media-amazon.com/images/M/MV5BOWI4OWE5MDgtMGNlYi00N2MwLWJlZmQtNGJlMjU4OGVkZjFmXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg','https://www.youtube.com/watch?v=ijsh5RVYnoY&ab_channel=DisneyPlus', 12, 8, 6);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Cars on the Road','https://m.media-amazon.com/images/I/91w4k9Y0GeL._AC_UF1000,1000_QL80_.jpg','https://www.youtube.com/watch?v=-Vui-DhwIAg&ab_channel=Pixar', 12, 8, 6);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Dug Days','https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/A581294437EF52ECCDC333CDDBCCA85982B7F51BB3EAE434E47FAEE3915B1D6B/scale?width=1200&amp;aspectRatio=1.78&amp;format=webp','https://www.youtube.com/watch?v=JeuoUHn9Cfg&ab_channel=Pixar', 12, 6, 17);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Lord of the Rings:The Rings of Power', 'https://m.media-amazon.com/images/S/pv-target-images/0393aff2ef3474c5a32f418bcbe6d67a04975157242451aeb0622b94be07f243.jpg','https://www.youtube.com/watch?v=TCwmXY_f-e0&ab_channel=PrimeVideo', 14, 2, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Mortal Kombat: Legacy','https://m.media-amazon.com/images/M/MV5BMjgzYzI5NWItNDA2ZC00MmJmLWE0NDctOTM1ZDE4NGMzZjM1XkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg','https://www.youtube.com/watch?v=a6hdLrSAeZ8&ab_channel=IN6TV', 14, 2, 5);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Final Destination','https://m.media-amazon.com/images/I/61vwdbpbL8L._AC_UF894,1000_QL80_.jpg','https://www.youtube.com/watch?v=lP4Psj7d1ZI&ab_channel=glows', 14, 9, 11);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Breaking Bad','https://es.web.img3.acsta.net/pictures/18/04/04/22/52/3191575.jpg','https://www.youtube.com/watch?v=mXd1zTwcQ18&ab_channel=AMCLatinoam%C3%A9rica', 13, 10, 11);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Crown', 'https://pics.filmaffinity.com/the_crown-838357032-mmed.jpg','https://www.youtube.com/watch?v=zzBjNG1GKu4&ab_channel=NetflixLatinoam%C3%A9rica', 13, 12, 13);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Better Call Saul','https://m.media-amazon.com/images/S/pv-target-images/fe1c0138b7b0e05ea22a711f44e57cd80cfbaea30745c425b7043d786ba66cd1.jpg','https://www.youtube.com/watch?v=HN4oydykJFc&ab_channel=StillWatchingNetflix', 13, 10, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Lost in Space','https://resizing.flixster.com/GR9Ng2YYzyWn945sfqQrDO4Xgz8=/ems.cHJkLWVtcy1hc3NldHMvdHZzZXJpZXMvUlRUVjI4MDUwNy53ZWJw','https://www.youtube.com/watch?v=fzmM0AB60QQ&ab_channel=Netflix', 5, 8, 14);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Carnival Row','https://m.media-amazon.com/images/M/MV5BZGY4ZDFiYWYtYzMwZS00ZmVlLWEwOGEtM2I1ZjcxNTFjMTRiXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=T120yZjSLL0&ab_channel=AmazonPrimeVideoEspa%C3%B1a', 5, 10, 5);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Expanse','https://m.media-amazon.com/images/S/pv-target-images/1766a1cc94bcd6c04a9cd449e5c2f2f0bdb4fbf9525832ea2c9c170c48ad433e.jpg','https://www.youtube.com/watch?v=nrC_QzwyQco&ab_channel=NetflixLatinoam%C3%A9rica', 5, 3, 7);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('The Big Bang Theory','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2SpY9BRuoDVordYa7OwiVZV5121l3EcQYD3QfmuZNg&s','https://www.youtube.com/watch?v=_uQXxvZ3afQ&ab_channel=JaJaFilms', 1, 1, 3);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Supernatural','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHYwNG3OTu1E14dD76qeJtV-tEKYl7xKdTOSvtH-vW1g&s','https://www.youtube.com/watch?v=0L30y8ern3M&t=4s&ab_channel=WarnerChannelLatam', 1, 3, 9);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Arrow','https://es.web.img3.acsta.net/medias/nmedia/18/90/72/11/20214318.jpg','https://www.youtube.com/watch?v=nPL9wWWuFqA&ab_channel=CineFantasia', 1, 2, 10);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Brooklyn Nine-Nine','https://m.media-amazon.com/images/M/MV5BNzVkYWY4NzYtMWFlZi00YzkwLThhZDItZjcxYTU4ZTMzMDZmXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_FMjpg_UX1000_.jpg','https://www.youtube.com/watch?v=sEOuJ4z5aTc&ab_channel=HLCFilmingandEvents', 2, 1, 2);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('House','https://images.justwatch.com/poster/199979170/s332/temporada-8','https://www.youtube.com/watch?v=MczMB8nU1sY&ab_channel=iflixMalaysia', 2, 1, 2);
INSERT INTO Series (Nombre, ImagenUrl, VideoUrl, ProductoraId, GeneroPrimarioId, GeneroSecundarioId)
VALUES ('Suits','https://m.media-amazon.com/images/M/MV5BNmVmMmM5ZmItZDg0OC00NTFiLWIxNzctZjNmYTY5OTU3ZWU3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg','https://www.youtube.com/watch?v=85z53bAebsI&ab_channel=BlockbusterAustralia', 2, 1, 2);




select *from Productoras
select *from Generos

select *from Series