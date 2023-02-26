const request = require('supertest')

const { app } = require('../App.js')
const fs = require("fs");
const options={}

// if (process.env.SSL_ACTIVATED === 'true') {
// 	options['key'] = fs.readFileSync('../key.pem');
// 	options['cert'] = fs.readFileSync('../cert.pem');
// }

describe('POST /DevOps', () => {
    test('should return the message', async () => {
      await request(app)
        .post('/DevOps')
        .set('Accept', 'application/json')
        .set('X-PARSE-REST-API-Key','2f5ae96c-b558-4c7b-a590-a501ae1c3f6c')
        .expect('Content-Type', /json/)
        // .key(options.key)
        // .cert(options.cert)
        .disableTLSCerts()
        .expect(201)
    })
  })