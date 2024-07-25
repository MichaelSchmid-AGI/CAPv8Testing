const cds = require("@sap/cds/lib");
module.exports = class TravelService extends cds.ApplicationService {
  init() {
    // cds.middlewares.add(errorHandler);

    this.before("SAVE", "Travel", async (req, res) => {
      console.log("New Travel");
    });

    this.on("error", async (req, res) => {
      console.log("dsfsd");
    });
    return super.init();
  }
};
