const cds = require("@sap/cds/lib");
const { INSERT } = require("@sap/cds/lib/ql/cds-ql");
module.exports = class TravelService extends cds.ApplicationService {
  init() {
    // cds.middlewares.add(errorHandler);


    this.after("draftPrepare","Travel.drafts", async (data, req) => {
      const tx=await this.tx()
      try {
      //data isnt right yet, throws "draft uuid cannot be null, needs fixing"
        await tx.create ("Travel", data)
        await tx.rollback("Test")

      } catch(e) {
      //here youll have the error for SQL Constraint not null
      debugger        
      }


      })
    

    return super.init();
  }
};
