describe('Vape API', function () {


  context('Mods', function () {

    it('response should have a \'mods\' and \'meta\' property', function () {

      cy.request(Cypress.env("v1").modsURL).then(function (response) {
        expect(response.body).to.have.property('mods');
      });
    });

    it('should retrieve a list of mods', function () {

      cy.request(Cypress.env("v1").modsURL).then(function (response) {
        expect(response.body.mods).to.be.not.empty;
      });

    });

    it('should retrieve a mod using an id', function () {
      cy.request(Cypress.env("v1").modsURL + '/1').then(function (response) {
        expect(response.body).to.be.not.empty;
        expect(response.body.id).to.equal(1);
      });
    });

  });

  context('Juices', function () {

    it('response should have a \'juices\' and \'meta\' property', function () {

      cy.request(Cypress.env("v1").juicesURL).then(function (response) {
        expect(response.body).to.have.property('juices');
      });
    });

    it('should retrieve a list of juices', function () {

      cy.request(Cypress.env("v1").juicesURL).then(function (response) {
        expect(response.body.juices).to.be.not.empty;
      });

    });

    it('should retrieve a juice using an id', function () {

      cy.request(Cypress.env("v1").juicesURL + '/1').then(function (response) {
        expect(response.body).to.be.not.empty;
        expect(response.body.id).to.equal(1);
      });
    });

  });

  context('Wires', function () {

    it('response should have a \'wires\' and \'meta\' property', function () {

      cy.request(Cypress.env("v1").wiresURL).then(function (response) {
        expect(response.body).to.have.property('wires');
      });
    });

    it('should retrieve a list of wires', function () {

      cy.request(Cypress.env("v1").wiresURL).then(function (response) {
        expect(response.body.wires).to.be.not.empty;
      });

    });

    it('should retrieve a wire using an id', function () {

      cy.request(Cypress.env("v1").wiresURL + '/1').then(function (response) {
        expect(response.body).to.be.not.empty;
        expect(response.body.id).to.equal(1);
      });
    });

  });

  context('Shops', function () {

    it('response should have a \'shops\' and \'meta\' property', function () {

      cy.request(Cypress.env("v1").shopsURL).then(function (response) {
        expect(response.body).to.have.property('shops');
      });
    });

    it('should retrieve a list of shops', function () {

      cy.request(Cypress.env("v1").shopsURL).then(function (response) {
        expect(response.body.shops).to.be.not.empty;
      });

    });

    it('should retrieve a shops using an id', function () {
      cy.request(Cypress.env("v1").shopsURL + '/1').then(function (response) {
        expect(response.body).to.be.not.empty;
        expect(response.body.id).to.equal(1);
      });
    });

  });

});
