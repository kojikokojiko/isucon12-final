# やったこと




```
ALTER TABLE user_present_all_received_history ADD INDEX user_id_present_all_id_idx (user_id, present_all_id);
```

```
07:59:53.767768 [SCORE] 3926 (addition: 4136, deduction: 210)
[ADMIN] 07:59:53.767793 [SCORE] map[GET /user/:userId/gacha/index:290 GET /user/:userId/home:292 GET /user/:userId/item:23 GET /user/:userId/present/index/:n:319 POST /login:266 POST /login(ban):194 POST /user:29 POST /user/:userId/card:23 POST /user/:userId/card/addexp/:cardId:23 POST /user/:userId/gacha/draw/:gachaId:276 POST /user/:userId/present/receive:316 POST /user/:userId/reward:265]
```






###　generateIDをsqlを使う方法からgoの関数で処理するように変更

```
[ADMIN] 09:23:23.673981 [SCORE] map[GET /user/:userId/gacha/index:734 GET /user/:userId/home:791 GET /user/:userId/item:125 GET /user/:userId/present/index/:n:907 POST /login:662 POST /login(ban):285 POST /user:141 POST /user/:userId/card:125 POST /user/:userId/card/addexp/:cardId:125 POST /user/:userId/gacha/draw/:gachaId:730 POST /user/:userId/present/receive:866 POST /user/:userId/reward:647]

```

user_presentsテーブルにインデックスを追加

```
ALTER TABLE user_presents ADD INDEX user_id_deleted_at_idx (user_id, deleted_at DESC);
```

09:46:22.756358 [SCORE] 11812 (addition: 11827, deduction: 15)
[ADMIN] 09:46:22.756396 [SCORE] map[GET /user/:userId/gacha/index:877 GET /user/:userId/home:884 GET /user/:userId/item:35 GET /user/:userId/present/index/:n:917 POST /login:852 POST /login(ban):119 POST /user:35 POST /user/:userId/card:35 POST /user/:userId/card/addexp/:cardId:35 POST /user/:userId/gacha/draw/:gachaId:876 POST /user/:userId/present/receive:915 POST /user/:userId/reward:848]





```
 Profile
# Rank Query ID                    Response time Calls  R/Call  V/M   Item
# ==== =========================== ============= ====== ======= ===== ====
#    1 0x79A889ED30BFA8BF517F86... 34.6468 15.2%      1 34.6468  0.00 LOAD DATA user_presents
#    2 0xDA556F9115773A1A99AA01... 32.7886 14.4% 173561  0.0002  0.00 ADMIN PREPARE
#    3 0xFFFCA4D67EA0A788813031... 26.8243 11.8%   2764  0.0097  0.01 COMMIT
#    4 0x8267197805BC46534E450B... 12.8317  5.6%  24762  0.0005  0.00 SELECT user_present_all_received_history
#    5 0x3FFFD39D9DB10329B17404... 11.8297  5.2%  21656  0.0005  0.00 UPDATE user_presents
#    6 0x1049606E13674A053E0CC6... 11.1691  4.9%    913  0.0122  0.01 UPDATE user_one_time_tokens
#    7 0x2096778F723F6666B5D7DD... 10.8822  4.8%     36  0.3023  0.01 INSERT user_cards
#    8 0xAFB4A7475DFDCF1D0D23CC...  8.8450  3.9%    915  0.0097  0.00 INSERT user_one_time_tokens
#    9 0x03FFA53B9AEA23779E51FE...  8.5028  3.7%  14328  0.0006  0.00 INSERT user_presents
#   10 0x75C006C72A2DD00658309A...  7.7822  3.4%    850  0.0092  0.00 UPDATE users
#   11 0xC20D9D224412E78025DDB6...  7.5043  3.3%  13706  0.0005  0.00 SELECT user_items
#   12 0xED0711EB833D06BBD84F49...  4.7610  2.1%  13481  0.0004  0.00 UPDATE user_items
#   13 0x975F0A7CC9BCA46BBC7DAD...  4.5458  2.0%  16811  0.0003  0.00 SELECT item_masters
#   14 0x8CA5C26DA1F53D285B58FE...  4.5240  2.0%   5442  0.0008  0.00 SELECT user_sessions
#   15 0x4112BAFCAD857E650001A2...  3.6640  1.6%     16  0.2290  0.02 INSERT user_present_all_received_history
#   16 0x611363ACBD1690538F1377...  2.8829  1.3%    920  0.0031  0.00 SELECT user_presents
#   17 0x2372FB123B18A108CFBB53...  2.7149  1.2%  10337  0.0003  0.00 SELECT users
#   18 0xD858CC1645CE084FE3844E...  2.4015  1.1%   6688  0.0004  0.00 UPDATE users
#   19 0x0B3509236B570F5C5FE423...  2.0290  0.9%   3213  0.0006  0.00 INSERT user_cards
#   20 0x13D274D305314539C3CEC5...  1.9872  0.9%      8  0.2484  0.03 INSERT user_items
#   21 0x584D7D428BA66028403534...  1.8010  0.8%   3576  0.0005  0.00 SELECT user_devices
#   22 0x41CEDDDAFB6289B60E5F30...  1.7847  0.8%   5558  0.0003  0.00 INSERT user_present_all_received_history
#   23 0xBC551EACF5A3BE27E3F2CC...  1.7828  0.8%   3511  0.0005  0.00 SELECT gacha_item_masters
#   24 0xE63C5805E48DA98A0AD3A2...  1.6477  0.7%   2682  0.0006  0.00 SELECT user_login_bonuses
#   25 0x07D5CE9B533D56A3B70C17...  1.5102  0.7%   6466  0.0002  0.00 SELECT version_masters
#   26 0x162DA0A184B905E35E1254...  1.4212  0.6%   1772  0.0008  0.00 SELECT user_cards
#   27 0x07890000813C4CC7111FD2...  1.3303  0.6% 173561  0.0000  0.00 ADMIN CLOSE STMT
#   28 0xAB2AB35C6EFA17C04018A1...  1.3257  0.6%   6421  0.0002  0.00 SELECT user_bans
#   29 0x5FF17CFE4371C68C8E9D99...  1.0081  0.4%    895  0.0011  0.04 INSERT user_sessions
#   30 0x84505E5BA52EFFCA6A20B2...  0.9988  0.4%    915  0.0011  0.00 SELECT user_one_time_tokens
#   31 0xECCEAADD80B80E193C326B...  0.9825  0.4%      1  0.9825  0.00 DELETE user_presents
#   32 0xB55432CA81A0B9DB525BB3...  0.8254  0.4%   1736  0.0005  0.00 SELECT user_decks
#   33 0xE89B4FB5E77ED142BEAF8C...  0.7607  0.3%    918  0.0008  0.00 SELECT user_presents
#   34 0xB6B9ED728E1332C1DD9977...  0.7345  0.3%      2  0.3672  0.20 INSERT user_login_bonuses
#   35 0x4AC4DC057720031F4B675A...  0.6857  0.3%      2  0.3428  0.25 INSERT user_devices
#   36 0xF0F3320DE1260EAD27BC04...  0.5768  0.3%    920  0.0006  0.00 SELECT user_presents
#   37 0xF072C14C09435D2BA8414F...  0.4108  0.2%    915  0.0004  0.00 UPDATE user_one_time_tokens
#   38 0xB4CF641044894A49AFCC95...  0.3944  0.2%    894  0.0004  0.00 SELECT present_all_masters
#   39 0xA8ECE8E3FF6494A146E831...  0.3504  0.2%    966  0.0004  0.00 SELECT login_bonus_reward_masters
#   40 0xD17D759B5B5B37355F7820...  0.3496  0.2%      1  0.3496  0.00 INSERT user_decks
# MISC 0xMISC                       3.7665  1.7%  10962  0.0003   0.0 <74 ITEMS>

# Query 1: 0 QPS, 0x concurrency, ID 0x79A889ED30BFA8BF517F86F6D70065B6 at byte 66103725
# This item is included in the report because it matches --limit.
# Scores: V/M = 0.00
# Time range: all events occurred at 2023-07-16T09:45:17
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count          0       1
# Exec time     15     35s     35s     35s     35s     35s       0     35s
# Lock time      0     3us     3us     3us     3us     3us       0     3us
# Rows sent      0       0       0       0       0       0       0       0
# Rows examine   0       0       0       0       0       0       0       0
# Query size     0     146     146     146     146     146       0     146
# String:
# Databases    isucon
# Hosts        localhost
# Users        isucon
# Query_time distribution
#   1us
#  10us
# 100us
#   1ms
#  10ms
# 100ms
#    1s
#  10s+  ################################################################
# Tables
#    SHOW TABLE STATUS FROM `isucon` LIKE 'user_presents'\G
#    SHOW CREATE TABLE `isucon`.`user_presents`\G
LOAD DATA INFILE '/var/lib/mysql-files/5_user_presents_not_receive_data.tsv' REPLACE INTO TABLE user_presents FIELDS ESCAPED BY '|' IGNORE 1 LINES\G

# Query 2: 2.80k QPS, 0.53x concurrency, ID 0xDA556F9115773A1A99AA0165670CE848 at byte 104146419
# This item is included in the report because it matches --limit.
# Scores: V/M = 0.00
# Time range: 2023-07-16T09:45:17 to 2023-07-16T09:46:19
# Attribute    pct   total     min     max     avg     95%  stddev  median
# ============ === ======= ======= ======= ======= ======= ======= =======
# Count         32  173561
# Exec time     14     33s    24us    11ms   188us   657us   264us    89us
# Lock time      0    41us       0     4us       0       0       0       0
# Rows sent      0       0       0       0       0       0       0       0
# Rows examine   0       0       0       0       0       0       0       0
# Query size     5   4.97M      30      30      30      30       0      30
# String:
# Databases    isucon
# Hosts        localhost
# Users        isucon
# Query_time distribution
#   1us
#  10us  ################################################################
# 100us  #####################################################
#   1ms  ##
#  10ms  #
# 100ms
#    1s
#  10s+
administrator command: Prepare\G

```