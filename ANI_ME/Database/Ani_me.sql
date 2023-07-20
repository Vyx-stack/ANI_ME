create database ANI_ME;
use ANI_ME;

create table nguoiDung(
	maND varchar(50) primary key,
	hoTen nvarchar(100),
	matKhau varchar(16),
	email nvarchar(100),
	[quanLy] bit default 0
);

create table video(
	maVideo nvarchar(30) primary key,
	theLoai nvarchar(50),
	tieuDe nvarchar(max),
	anhVideo nvarchar(100),
	linkVideo varchar(max),
	moTa nvarchar(max),
	kichHoat bit default 1,
	luotXem int
);

create table chiaSe(
	maChiaSe int identity(1,1) primary key,
	maND varchar(50),
	maVideo nvarchar(30),
	emails nvarchar(300),
	ngayChiaSe date
);

create table thich(
	maThich int identity(1,1) primary key,
	maND varchar(50),
	maVideo nvarchar(30),
	ngayThich date
);

ALTER TABLE thich
ADD CONSTRAINT fk_thich_nguoiDung
FOREIGN KEY (maND)
REFERENCES nguoiDung (maND);

ALTER TABLE thich
ADD CONSTRAINT fk_thich_video
FOREIGN KEY (maVideo)
REFERENCES video (maVideo);

ALTER TABLE chiaSe
ADD CONSTRAINT fk_chiaSe_video
FOREIGN KEY (maVideo)
REFERENCES video (maVideo);

ALTER TABLE chiaSe
ADD CONSTRAINT fk_chiaSe_nguoiDung
FOREIGN KEY (maND)
REFERENCES nguoiDung (maND);