const express = require("express");

const { createArtistAddToExhibition } = require("./controller")

const router = express.Router();

// create an artist profile and add them to an exhibition (POST, /artists)
router.post("/", createArtistAddToExhibition);

module.exports = router;
