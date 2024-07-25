using {
    Currency,
    custom.managed,
    sap.common.CodeList
} from './common';

namespace sap.fe.cap.travel;

entity Travel : managed {
    key TravelUUID  : UUID;
        TravelID    : Integer        @readonly default 0;
        BeginDate   : Date;
        EndDate     : Date;
        BookingFee  : Decimal(16, 3);
        TotalPrice  : Decimal(16, 3) @readonly;

        @validation.message: 'Enter a valid begin date'
        @mandatory
        Description : String(1024);


};
