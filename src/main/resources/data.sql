INSERT INTO `USER` (`USER_SEQ`, `LOGIN_ID`, `PASSWORD`, `NAME`, `PHONE_NUMBER`, `EMAIL`)
VALUES ('1', 'test1', 'test1pw', '11', '01000000001', '1@naver.com'),
       ('4', 'test2', 'test2pw', '22', '01000000001', '2@naver.com'),
       ('6', 'test3', 'test3pw', '33', '01000000001', '3@naver.com'),
       ('8', 'test4', 'test4pw', '44', '01000000001', '4@naver.com'),
       ('23', 'test5', 'test5pw', '55', '01000000001', '5@naver.com'),
       ('25', 'test6', '$2a$10$n87tHz0k0YzazutVDnZg3.BcD5kvDiPM/osWDhlKcZCDCf2g7zCse', '66',
        '01000000001', '6@naver.com');

INSERT INTO `OWNER` (`OWNER_SEQ`, `LOGIN_ID`, `PASSWORD`)
VALUES ('1', 'owner1', 'owner1pw'),
       ('2', 'owner2', 'owner2pw'),
       ('3', 'owner3', 'owner3pw'),
       ('4', 'owner4', 'owner4pw'),
       ('5', 'owner5', 'owner5pw');

INSERT INTO `ADDRESS` (`ADDRESS_SEQ`, `POST`, `SPOT_Y`, `SPOT_X`, `ADDRESS_DETAIL`)
VALUES ('1', '13561', '37.35951219616309', '127.10522081658463', '301호'),
       ('2', '13561', '37.35951219616309', '127.10522081658463', '1208호'),
       ('3', '63309', '33.450701', '126.570667', '2039호'),
       ('4', '63309', '33.450701', '126.570667', '101호'),
       ('5', '13561', '39.450701', '126.570667', '303호'),
       ('6', '15223', '37.450701', '124.570667', '503호'),
       ('7', '13588', '33.450704541', '125.570667', '103호'),
       ('8', '12345', '34.450702355', '119.570667', '3003호'),
       ('9', '18869', '16.4507212341', '116.570667', '103호'),
       ('10', '14436', '37.078956155887', '127.423084873712', '105호');

INSERT INTO `USER_ADDRESS_MAPPING` (`USER_ADDRESS_SEQ`, `USER_SEQ`, `ADDRESS_SEQ`,
                                    `DEFAULT_YN`)
VALUES ('1', '25', '1', 'Y'),
       ('2', '25', '2', 'N'),
       ('3', '23', '3', 'Y'),
       ('4', '23', '4', 'N');

INSERT INTO `RESTAURANT` (`RESTAURANT_SEQ`, `OWNER_SEQ`, `CATEGORY`, `OPEN_YN`,
                          `RESTAURANT_NAME`, `INTRODUCTION`, `MINIMUM_ORDER_AMOUNT`,
                          `ADDRESS_SEQ`, `INPUT_DATE`, `UPDATE_DATE`)
VALUES ('1', '1', '중식', 'Y', '중식중 최고집', '증식집 중 최고를 자랑합니다.', 12000, 5, NOW(), null),
       ('2', '2', '양식', 'Y', '양식중 최고집', '양식집 중 최고를 자랑합니다.', 15000, 6, NOW(), null),
       ('3', '3', '일식', 'Y', '칸지돈부리', '10년 동안 돈부리만 고집한 사람이 차린 돈부리집.', 9000, 7, NOW(), null),
       ('4', '4', '중식', 'N', '성화반점', '탕수육이 기가 막힌집.', 7500, 8, NOW(), null),
       ('5', '5', '동남아', 'Y', '팟타이타이', '팟타이 맛집을 찾으신다면 여기가 답입니다. ', 13000, 9, NOW(), null),
       ('6', '1', '분식', 'Y', '떡순이네', '쌀떡과 부산오뎅의 기가막힌 조합 떡순이네', 12000, 10, NOW(), null);

INSERT INTO `ORDER` (ORDER_SEQ, USER_SEQ, ADDRESS, RESTAURANT_SEQ, RESTAURANT_NAME, ORDER_STATUS,
                     AMOUNT,
                     ORDER_TIME)
VALUES ('1', '25', '경기도 남양주 123-12', 3, '칸지돈부리', 'READY', 17500, NOW()),
       ('2', '25', '서울특별시 강남구 55-8', 3, '칸지돈부리', 'READY', 18500, NOW()),
       ('3', '25', '분당구 불정로 66', 3, '칸지돈부리', 'READY', 19500, NOW()),
       ('4', '23', '분당구 불정로 66', 1, '중식중 최고집', 'READY', 20500, NOW()),
       ('5', '23', '분당구 불정로 66', 1, '중식중 최고집', 'READY', 33500, NOW());

INSERT INTO `MENU` (`MENU_SEQ`, `RESTAURANT_SEQ`, `NAME`, `PRICE`)
VALUES ('1', '1', '짜장면', 7500),
       ('2', '1', '짬뽕', 8500),
       ('3', '2', '쉬림프 로제 파스타', 10500),
       ('4', '5', '쉬림프 팟타이', 10500),
       ('5', '5', '똠양꿍', 13500),
       ('6', '5', '소고기 국수', 10000),
       ('7', '3', '칸지 가츠동', 8500),
       ('8', '3', '에비동', 9500),
       ('9', '3', '규동', 9000),
       ('10', '3', '믹스나베', 11500),
       ('11', '3', '김치나베', 11000);