DROP TABLE "cart";
DROP TABLE "MYPAGE";
DROP TABLE "PRODUCT";
DROP TABLE "MEMBER";

CREATE TABLE "MEMBER" (
	"mebmerId"	varchar2(50)		NOT NULL,
	"memberName"	varchar2(100)		NOT NULL,
	"memberPassword"	varchar2(100)		NOT NULL,
	"memberEmail"	varchar2(100)		NOT NULL,
	"tradeName"	varchar2(100)		NULL,
    "businessRegistrationNumber"	varchar2(100)		NULL,
	"representative"	varchar2(100)		NULL,
	"membertype"	number(1)	DEFAULT 1	NULL
);

COMMENT ON COLUMN "MEMBER"."membertype" IS '일반회원,2사업자';
ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"mebmerId"
);
CREATE TABLE "PRODUCT" (
	"pID"	varchar2(30)		NOT NULL,
	"pName"	varchar2(30)		NOT NULL,
	"pPrice"	number(10)		NOT NULL,
	"pDescription"	varchar2(30)		NOT NULL,
	"pCompany"	varchar2(50)		NOT NULL,
	"pStock"	number		NOT NULL
);

ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY (
	"pID"
);


CREATE TABLE "MYPAGE" (
	"Field"	varchar2(50)		NULL,
	"memberInformation"	varchar2(50)		NOT NULL,
	"ModifyingInformation"	varchar2(50)		NULL,
	"mebmerId"	varchar2(50)		NOT NULL
);

CREATE TABLE "cart" (
	"pName"	varchar2(30)		NOT NULL,
	"amount"	varchar2(30)		NOT NULL,
	"price"	number(10)		NOT NULL,
	"pID"	varchar2(30)		NOT NULL,
	"mebmerId"	varchar2(50)		NOT NULL
);











ALTER TABLE "cart" ADD CONSTRAINT "FK_PRODUCT_TO_cart_1" FOREIGN KEY (
	"pID"
)
REFERENCES "PRODUCT" (
	"pID"
);

ALTER TABLE "cart" ADD CONSTRAINT "FK_MEMBER_TO_cart_1" FOREIGN KEY (
	"mebmerId"
)
REFERENCES "MEMBER" (
	"mebmerId"
);

ALTER TABLE "MYPAGE" ADD CONSTRAINT "FK_MEMBER_TO_MYPAGE_1" FOREIGN KEY (
	"mebmerId"
)
REFERENCES "MEMBER" (
	"mebmerId"
);

