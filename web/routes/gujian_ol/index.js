
var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var db = require('../../config/db');

var pool = mysql.createPool(db);


router.get('/', function (req, res, next) {

  pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 0 AND child_id = ol_detail.id', function (err, rows0) {
    if (err) {
      console.error(err);
      res.status(500).send({ code: 500, msg: '服务器内部错误！' });
    } else {
      pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 1 AND child_id = ol_detail.id', function (err, rows1) {
        if (err) {
          console.error(err);
          res.status(500).send({ code: 500, msg: '服务器内部错误！' });
        } else {
          pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 2 AND child_id = ol_detail.id', function (err, rows2) {
            if (err) {
              console.error(err);
              res.status(500).send({ code: 500, msg: '服务器内部错误！' });
            } else {


              pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 3 AND child_id = ol_detail.id', function (err, rows3) {
                if (err) {
                  console.error(err);
                  res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                } else {


                  pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 4 AND child_id = ol_detail.id', function (err, rows4) {
                    if (err) {
                      console.error(err);
                      res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                    } else {

                      pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 5 AND child_id = ol_detail.id', function (err, rows5) {
                        if (err) {
                          console.error(err);
                          res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                        } else {

                          pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 6 AND child_id = ol_detail.id', function (err, rows6) {
                            if (err) {
                              console.error(err);
                              res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                            } else {

                              pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 7 AND child_id = ol_detail.id', function (err, rows7) {
                                if (err) {
                                  console.error(err);
                                  res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                                } else {

                                  pool.query('SELECT has_icon, name, path FROM ol_mid_01, ol_detail WHERE father_id = 8 AND child_id = ol_detail.id', function (err, rows8) {
                                    if (err) {
                                      console.error(err);
                                      res.status(500).send({ code: 500, msg: '服务器内部错误！' });
                                    } else {
                                  
                                              res.render('all_series/gujian_ol/index', {
                                                novice_knowledge_Data: rows0,
                                                basic_system_Data: rows1,
                                                scene_map_Data: rows2,
                                                world_history_Data: rows3,
                                                character_and_appearance_Data: rows4,
                                                skill_and_equipment_Data: rows5,
                                                module_pve_Data: rows6,
                                                module_pvp_Data: rows7,
                                                module_pvx_Data: rows8,
                                                title: '古剑奇谭网络版wiki'
                                              });
                                          }
                                        });
                                    }
                                });
                          }
                        });
                  
                      }
                    });
                          
                    }
                  });
                      
                  }
                });

            }
          });

        }
      });

    }
  });
});



module.exports = router;


