-- game_room
INSERT INTO game_room (is_private, password, total_participant_cnt, created_at, updated_at, room_manager_nickname,
                       state, title, type)
VALUES (b'1', 1234, 2, NOW(), NOW(), 'Alexander', '진행', '이게 친선경기지', '친선'),
       (b'0', null, 4, NOW(), NOW(), 'Benjamin', '대기', '너 나 이길수 있냐', '친선'),
       (b'1', 1234, 3, NOW(), NOW(), 'Henry', '대기', '빨리 들어오기나해', '친선'),
       (b'0', null, 3, NOW(), NOW(), 'Mia', '진행', '댐벼', '친선'),
       (b'0', null, 2, NOW(), NOW(), 'Ethan', '대기', '빠르게 한판 ㄱㄱ?', '친선'),
       (b'0', null, 4, NOW(), NOW(), 'Lucas', '진행', '친선입니당', '친선'),
       (b'1', 1234, 2, NOW(), NOW(), 'Noah', '대기', '비공개지롱', '친선'),
       (b'0', null, 3, NOW(), NOW(), null, '진행', '경쟁전 1', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 2', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 3', '경쟁'),
       (b'1', 1234, 2, NOW(), NOW(), null, '진행', '경쟁전 4', '경쟁'),
       (b'0', null, 3, NOW(), NOW(), null, '진행', '경쟁전 5', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 6', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 7', '경쟁'),
       (b'1', 1234, 2, NOW(), NOW(), null, '진행', '경쟁전 8', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 9', '경쟁'),
       (b'0', null, 2, NOW(), NOW(), null, '진행', '경쟁전 10', '경쟁'),
       (b'1', 1234, 2, NOW(), NOW(), 'Isaac', '진행', '내가 제일 잘할듯', '친선'),
       (b'0', null, 2, NOW(), NOW(), 'Caleb', '진행', '빨리좀 와라', '친선');

-- spectate-room
INSERT INTO spectate_room (created_at, game_room_id, updated_at)
VALUES (NOW(), 1, NOW()),
       (NOW(), 2, NOW()),
       (NOW(), 3, NOW()),
       (NOW(), 4, NOW()),
       (NOW(), 5, NOW()),
       (NOW(), 6, NOW()),
       (NOW(), 7, NOW()),
       (NOW(), 18, NOW()),
       (NOW(), 19, NOW());

-- game_room_black_list
INSERT INTO game_room_black_list (created_at, game_room_id, updated_at)
VALUES (NOW(), 1, NOW()),
       (NOW(), 2, NOW()),
       (NOW(), 3, NOW()),
       (NOW(), 4, NOW()),
       (NOW(), 5, NOW()),
       (NOW(), 6, NOW()),
       (NOW(), 7, NOW()),
       (NOW(), 18, NOW()),
       (NOW(), 19, NOW());

-- member
INSERT INTO member (kakao_friend_list_agreement, kakao_link_state, created_at, game_room_id, kakao_social_id,
                    spectate_room_id, updated_at, icon, member_id, nickname, password, refresh_token)
VALUES (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '권순준', '권순준닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '임세환', '임세환닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '윤예빈', '윤예빈닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '최현기', '최현기닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '선수연', '선수연닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), NULL, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), '김대원', '김대원닉네임',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 1, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Alexander', 'Alexander',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 1, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Sophia', 'Sophia',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 2, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Benjamin', 'Benjamin',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 2, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Olivia', 'Olivia',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 2, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Samuel', 'Samuel',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 2, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Emma', 'Emma',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 3, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Henry', 'Henry',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 3, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Ava', 'Ava',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 3, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Liam', 'Liam',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 4, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Mia', 'Mia',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 4, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Jackson', 'Jackson',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 4, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Isabella', 'Isabella',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 5, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Ethan', 'Ethan',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 5, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Amelia', 'Amelia',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 6, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Lucas', 'Lucas',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 6, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Harper', 'Harper',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 6, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Aiden', 'Aiden',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 6, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Evelyn', 'Evelyn',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 7, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Noah', 'Noah',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 7, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Abigail', 'Abigail',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 8, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'James', 'James',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 8, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Charlotte', 'Charlotte',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 8, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Oliver', 'Oliver',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 9, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Scarlett', 'Scarlett',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 9, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'William', 'William',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 10, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Grace', 'Grace',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 10, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Elijah', 'Elijah',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 11, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Lily', 'Lily',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 11, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Logan', 'Logan',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 12, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Zoey', 'Zoey',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 12, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Mason', 'Mason',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 12, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Aria', 'Aria',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 13, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Michael', 'Michael',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 13, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Layla', 'Layla',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 14, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Daniel', 'Daniel',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 14, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Chloe', 'Chloe',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 15, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Matthew', 'Matthew',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 15, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Sofia', 'Sofia',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 16, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Joseph', 'Joseph',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 16, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Harper', 'Harper',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 17, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Jackson', 'Jackson',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 17, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Madison', 'Madison',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 18, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Isaac', 'Isaac',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 18, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Emily', 'Emily',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 19, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Caleb', 'Caleb',
        SHA2('password123', 256), NULL),
       (b'0', b'0', NOW(), 19, NULL, NULL, NOW(), CONVERT(FLOOR(RAND() * 20) + 1, CHAR), 'Ella', 'Ella',
        SHA2('password123', 256), NULL);

-- point
INSERT INTO point (current_winning_streak, draw, lose, max_win, point_score, win, created_at, member_id, updated_at)
VALUES (5, 2, 3, 5, 1670, 10, NOW(), 1, NOW()),
       (3, 2, 1, 3, 1250, 10, NOW(), 2, NOW()),
       (2, 2, 4, 2, 1700, 10, NOW(), 3, NOW()),
       (1, 2, 4, 1, 1800, 10, NOW(), 4, NOW()),
       (6, 2, 1, 6, 2300, 10, NOW(), 5, NOW()),
       (5, 2, 0, 5, 980, 10, NOW(), 6, NOW()),
       (3, 2, 5, 3, 567, 10, NOW(), 7, NOW()),
       (2, 2, 3, 2, 964, 10, NOW(), 8, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 9, NOW()),
       (0, 2, 1, 0, 1230, 0, NOW(), 10, NOW()),
       (0, 2, 1, 0, 785, 0, NOW(), 11, NOW()),
       (0, 2, 1, 0, 2304, 0, NOW(), 12, NOW()),
       (0, 2, 1, 0, 940, 0, NOW(), 13, NOW()),
       (0, 2, 1, 0, 343, 0, NOW(), 14, NOW()),
       (0, 2, 1, 0, 400, 0, NOW(), 15, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 16, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 17, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 18, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 19, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 20, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 21, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 22, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 23, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 24, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 25, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 26, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 27, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 28, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 29, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 30, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 31, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 32, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 33, NOW()),
       (0, 2, 1, 0, 800, 0, NOW(), 34, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 35, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 36, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 37, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 38, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 39, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 40, NOW()),
       (0, 3, 2, 0, 1000, 0, NOW(), 41, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 42, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 43, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 44, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 45, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 46, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 47, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 48, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 49, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 50, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 51, NOW()),
       (0, 2, 1, 0, 1000, 0, NOW(), 52, NOW());


-- 친구
INSERT INTO friend (created_at, member_a_id, member_b_id, updated_at)
VALUES (NOW(), 1, 2, NOW()),
       (NOW(), 2, 1, NOW()),
       (NOW(), 1, 3, NOW()),
       (NOW(), 3, 1, NOW()),
       (NOW(), 1, 4, NOW()),
       (NOW(), 4, 1, NOW()),
       (NOW(), 1, 5, NOW()),
       (NOW(), 5, 1, NOW()),
       (NOW(), 1, 6, NOW()),
       (NOW(), 6, 1, NOW()),
       (NOW(), 1, 7, NOW()),
       (NOW(), 7, 1, NOW()),
       (NOW(), 1, 8, NOW()),
       (NOW(), 8, 1, NOW()),
       (NOW(), 1, 9, NOW()),
       (NOW(), 9, 1, NOW()),
       (NOW(), 1, 10, NOW()),
       (NOW(), 10, 1, NOW()),
       (NOW(), 1, 11, NOW()),
       (NOW(), 11, 1, NOW()),
       (NOW(), 1, 12, NOW()),
       (NOW(), 12, 1, NOW()),
       (NOW(), 1, 13, NOW()),
       (NOW(), 13, 1, NOW()),
       (NOW(), 1, 14, NOW()),
       (NOW(), 14, 1, NOW()),
       (NOW(), 1, 15, NOW()),
       (NOW(), 15, 1, NOW()),

       (NOW(), 2, 3, NOW()),
       (NOW(), 3, 2, NOW()),
       (NOW(), 2, 4, NOW()),
       (NOW(), 4, 2, NOW()),
       (NOW(), 2, 5, NOW()),
       (NOW(), 5, 2, NOW()),
       (NOW(), 2, 6, NOW()),
       (NOW(), 6, 2, NOW()),
       (NOW(), 2, 7, NOW()),
       (NOW(), 7, 2, NOW()),
       (NOW(), 2, 8, NOW()),
       (NOW(), 8, 2, NOW()),
       (NOW(), 2, 9, NOW()),
       (NOW(), 9, 2, NOW()),
       (NOW(), 2, 10, NOW()),
       (NOW(), 10, 2, NOW()),
       (NOW(), 2, 11, NOW()),
       (NOW(), 11, 2, NOW()),
       (NOW(), 2, 12, NOW()),
       (NOW(), 12, 2, NOW()),
       (NOW(), 2, 13, NOW()),
       (NOW(), 13, 2, NOW()),
       (NOW(), 2, 14, NOW()),
       (NOW(), 14, 2, NOW()),
       (NOW(), 2, 15, NOW()),
       (NOW(), 15, 2, NOW()),

       (NOW(), 3, 4, NOW()),
       (NOW(), 4, 3, NOW()),
       (NOW(), 3, 5, NOW()),
       (NOW(), 5, 3, NOW()),
       (NOW(), 3, 6, NOW()),
       (NOW(), 6, 3, NOW()),
       (NOW(), 3, 7, NOW()),
       (NOW(), 7, 3, NOW()),
       (NOW(), 3, 8, NOW()),
       (NOW(), 8, 3, NOW()),
       (NOW(), 3, 9, NOW()),
       (NOW(), 9, 3, NOW()),
       (NOW(), 3, 10, NOW()),
       (NOW(), 10, 3, NOW()),
       (NOW(), 3, 11, NOW()),
       (NOW(), 11, 3, NOW()),
       (NOW(), 3, 12, NOW()),
       (NOW(), 12, 3, NOW()),
       (NOW(), 3, 13, NOW()),
       (NOW(), 13, 3, NOW()),
       (NOW(), 3, 14, NOW()),
       (NOW(), 14, 3, NOW()),
       (NOW(), 3, 15, NOW()),
       (NOW(), 15, 3, NOW()),

       (NOW(), 4, 5, NOW()),
       (NOW(), 5, 4, NOW()),
       (NOW(), 4, 6, NOW()),
       (NOW(), 6, 4, NOW()),
       (NOW(), 4, 7, NOW()),
       (NOW(), 7, 4, NOW()),
       (NOW(), 4, 8, NOW()),
       (NOW(), 8, 4, NOW()),
       (NOW(), 4, 9, NOW()),
       (NOW(), 9, 4, NOW()),
       (NOW(), 4, 10, NOW()),
       (NOW(), 10, 4, NOW()),
       (NOW(), 4, 11, NOW()),
       (NOW(), 11, 4, NOW()),
       (NOW(), 4, 12, NOW()),
       (NOW(), 12, 4, NOW()),

       (NOW(), 5, 6, NOW()),
       (NOW(), 6, 5, NOW()),
       (NOW(), 5, 8, NOW()),
       (NOW(), 8, 5, NOW()),
       (NOW(), 5, 9, NOW()),
       (NOW(), 9, 5, NOW()),
       (NOW(), 5, 10, NOW()),
       (NOW(), 10, 5, NOW()),
       (NOW(), 5, 11, NOW()),
       (NOW(), 11, 5, NOW()),
       (NOW(), 5, 12, NOW()),
       (NOW(), 12, 5, NOW()),
       (NOW(), 5, 13, NOW()),
       (NOW(), 13, 5, NOW()),
       (NOW(), 5, 14, NOW()),
       (NOW(), 14, 5, NOW()),


       (NOW(), 6, 7, NOW()),
       (NOW(), 7, 6, NOW()),
       (NOW(), 6, 8, NOW()),
       (NOW(), 8, 6, NOW()),
       (NOW(), 6, 9, NOW()),
       (NOW(), 9, 6, NOW()),
       (NOW(), 6, 10, NOW()),
       (NOW(), 10, 6, NOW()),
       (NOW(), 6, 11, NOW()),
       (NOW(), 11, 6, NOW()),
       (NOW(), 6, 12, NOW()),
       (NOW(), 12, 6, NOW()),
       (NOW(), 6, 13, NOW()),
       (NOW(), 13, 6, NOW()),
       (NOW(), 6, 14, NOW()),
       (NOW(), 14, 6, NOW());

-- 게임 결과 몽고 디비도 넣고

