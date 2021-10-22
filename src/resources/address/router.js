const express = require("express");

const { createExhibitionWaddress } = require("./controller")

const router = express.Router();

router.post("/", createExhibitionWaddress);

module.exports = router;