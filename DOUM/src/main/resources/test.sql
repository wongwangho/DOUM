
select *
from  TBL_USER
WHERE  USER_ID =2;


select U.USER_ID,U.NAME,U.INTRODUCTION,U.EMAIL,U.PHONE_NUMBER
from  TBL_USER U
WHERE  U.USER_ID =2;



SELECT S.STORY_ID,S.TITLE, S.CONTENT, S.CREATED_DATE, S.VIEWS, SI.FILE_LOCATION AS IMAGE
FROM TBL_STORY S LEFT JOIN TBL_STORY_IMG SI ON S.STORY_ID=SI.STORY_ID
WHERE S.USER_ID =1
ORDER BY S.CREATED_DATE DESC;





select count(*)
from TBL_STORY;


SELECT SC.STORY_ID, SC.USER_ID, SC.CONTENT
FROM TBL_STORY_COMMENT SC JOIN TBL_USER U ON SC.USER_ID=U.USER_ID
WHERE SC.STORY_ID =2
ORDER BY SC.CREATED_DATE ASC;




select SEQ_STORY.nextval from dual;



SELECT COUNT(*) AS LIKE_COUNT
FROM TBL_STORY_LIKE
WHERE STORY_ID =2;



SELECT UR.USER_REVIEW_ID, UR.CONTENT, UR.RATING, O.NAME AS ORGANIZATION_NAME
FROM TBL_USER_REVIEW UR JOIN TBL_ORGANIZATION O ON UR.ORGANIZATION_ID = O.ORGANIZATION_ID
WHERE UR.USER_ID = 1;



update TBL_STORY
set VIEWS = VIEWS + 1
where STORY_ID = 1;


select *
from TBL_STORY;



update TBL_STORY
set TITLE = 'iamupdatingstory',
            CONTENT = 'This is updating story.'
where STORY_ID = 1;



delete from TBL_STORY
where STORY_ID =1;


SELECT
    U.USER_ID,
    U.EMAIL,
    U.NAME,
    U.PHONE_NUMBER,
    U.REGISTER_DATE,
    U.EMAIL_APPROVE,
    U.PHONE_APPROVE,
    U.BIRTH_DATE,
    U.GENDER,
    U.INTRODUCTION,
    (SELECT COUNT(*) FROM TBL_APPLIED_VOLUNTEER AV WHERE AV.USER_ID = U.USER_ID) AS VOLUNTEER_COUNT,
    (SELECT AVG(R.RATING) FROM TBL_USER_REVIEW R WHERE R.USER_ID = U.USER_ID) AS AVERAGE_RATING
FROM
    TBL_USER U;













SELECT S.STORY_ID,S.TITLE, S.CONTENT, S.CREATED_DATE, S.VIEWS, SI.FILE_LOCATION AS IMAGE
FROM TBL_STORY S LEFT JOIN TBL_STORY_IMG SI ON S.STORY_ID=SI.STORY_ID
WHERE S.USER_ID =1
ORDER BY S.CREATED_DATE DESC;


select count(*)
from TBL_STORY;



SELECT SC.STORY_ID, SC.USER_ID, SC.CONTENT
FROM TBL_STORY_COMMENT SC JOIN TBL_USER U ON SC.USER_ID=U.USER_ID
WHERE SC.STORY_ID = 2
ORDER BY SC.CREATED_DATE ASC;



SELECT COUNT(*) AS LIKE_COUNT
FROM TBL_STORY_LIKE
WHERE STORY_ID =2;



SELECT UR.USER_REVIEW_ID, UR.CONTENT, UR.RATING, O.NAME AS ORGANAZATION_NAME
FROM TBL_USER_REVIEW UR JOIN TBL_ORGANIZATION O ON UR.ORGANIZATION_ID = O.ORGANIZATION_ID
WHERE UR.USER_ID = 1;




SELECT
    U.USER_ID,
    U.EMAIL,
    U.NAME,
    U.PHONE_NUMBER,
    U.REGISTER_DATE,
    U.EMAIL_APPROVE,
    U.PHONE_APPROVE,
    U.BIRTH_DATE,
    U.GENDER,
    U.INTRODUCTION,
    (SELECT COUNT(*) FROM TBL_APPLIED_VOLUNTEER AV WHERE AV.USER_ID = U.USER_ID) AS VOLUNTEER_COUNT,
    (SELECT AVG(R.RATING) FROM TBL_USER_REVIEW R WHERE R.USER_ID = U.USER_ID) AS AVERAGE_RATING
FROM
    TBL_USER U;










