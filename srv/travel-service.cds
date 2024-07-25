using {sap.fe.cap.travel as my} from '../db/schema';

service TravelService @(path: '/processor') {
  @odata.draft.enabled
  entity Travel as projection on my.Travel;

}
