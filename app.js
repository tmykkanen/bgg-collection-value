// Look up BoardGameGeek collection by username and output collection value
// based upon BGG marketplace listings.

const https = require('https');
const parseString = require('xml2js').parseString;

let xml = '';

// Get username

// Get collection

// Parse collection Data

// For each GAME in COLLECTION get marketplace values & average
const gameUrl = 'https://www.boardgamegeek.com/xmlapi2/thing?id=68448&pricehistory=1';

https.get(gameUrl, (result) => {
  console.log('Status Code: ', result.statusCode);
  result.on('data', (d) => {
    xml = d.toString('utf8');
  });
  result.on('end', () => {
    parseString(xml, (err, res) => {
      console.dir(res);
    });
  })
});



// Parse XML w/xml2js


// Return total COLLECTION value
