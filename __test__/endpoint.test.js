const request = require('supertest')

const { app } = require('../App.js')
const fs = require("fs");
const options={}



describe('POST /DevOps', () => {
    test('should return the message', async () => {
      await request(app)
        .post('/DevOps')
        .set('Accept', 'application/json')
        .set('X-PARSE-REST-API-Key','2f5ae96c-b558-4c7b-a590-a501ae1c3f6c')
        .expect('Content-Type', /json/)
        .disableTLSCerts()
        .expect(201)
    })
  })