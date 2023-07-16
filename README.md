# やったこと




```
ALTER TABLE user_present_all_received_history ADD INDEX user_id_present_all_id_idx (user_id, present_all_id);
```

```
07:59:53.767768 [SCORE] 3926 (addition: 4136, deduction: 210)
[ADMIN] 07:59:53.767793 [SCORE] map[GET /user/:userId/gacha/index:290 GET /user/:userId/home:292 GET /user/:userId/item:23 GET /user/:userId/present/index/:n:319 POST /login:266 POST /login(ban):194 POST /user:29 POST /user/:userId/card:23 POST /user/:userId/card/addexp/:cardId:23 POST /user/:userId/gacha/draw/:gachaId:276 POST /user/:userId/present/receive:316 POST /user/:userId/reward:265]
```




