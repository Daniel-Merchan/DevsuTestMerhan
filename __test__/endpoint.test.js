const request = require('supertest')
const { server } = require('../App.js')
const fs = require("fs");
const options={}

afterAll(done => {
  // Closing the DB connection allows Jest to exit successfully.
  server.close()
  done()
})

describe('POST /DevOps', () => {
    test('json message returned', async () => {
      await request(server)
        .post('/DevOps')
        .set('Accept', 'application/json')
        .set('X-PARSE-REST-API-Key','2f5ae96c-b558-4c7b-a590-a501ae1c3f6c')
        .expect('Content-Type', /json/)
        .expect(201)
    })
  })
 
