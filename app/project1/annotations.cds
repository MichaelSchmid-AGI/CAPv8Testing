using TravelService as service from '../../srv/travel-service';

annotate sap.fe.cap.travel.Travel with @fiori.draft.enabled;
annotate service.Travel with @fiori.draft.enabled;

annotate service.Travel with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Value: createdAt,
    },
    {
        $Type: 'UI.DataField',
        Value: createdBy,
    },
    {
        $Type: 'UI.DataField',
        Value: LastChangedAt,
    },
    {
        $Type: 'UI.DataField',
        Value: LastChangedBy,
    },
    {
        $Type: 'UI.DataField',
        Label: 'TravelID',
        Value: TravelID,
    },
]);

annotate service.Travel with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: createdAt,
            },
            {
                $Type: 'UI.DataField',
                Value: createdBy,
            },
            {
                $Type: 'UI.DataField',
                Value: LastChangedAt,
            },
            {
                $Type: 'UI.DataField',
                Value: LastChangedBy,
            },
            {
                $Type: 'UI.DataField',
                Label: 'TravelID',
                Value: TravelID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'BeginDate',
                Value: BeginDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'EndDate',
                Value: EndDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'BookingFee',
                Value: BookingFee,
            },
            {
                $Type: 'UI.DataField',
                Label: 'TotalPrice',
                Value: TotalPrice,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: Description,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
