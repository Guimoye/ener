import Ots from "./views/ots";
import Clients from "./views/clients";
import Modules from "./views/modules";
//import ClientsForm from "./views/clients_form";
//import OtsForm from "./views/ots_form";
import Users from "./views/users";
//import UsersForm from "./views/users_form";
import E404 from "./views/e404";
import Managements from "./views/managements";
import Vehicles from "./views/vehicles";
import TypeServices from "./views/type_services";
import Competences from "./views/competences";
import Consumables from "./views/consumables";
import Materials from "./views/materials";
import DocumentSigs from "./views/document_sigs";
import Personals from "./views/personals";
import Compekits from "./views/compekits";
import Kits from "./views/kits";
import Roles from "./views/roles";
import Settings from "./views/settings";
import Proveedores from "./views/proveedores";
import Tipo_gastos from "./views/tipo_gastos";
import Unidades from "./views/unidades";

import Choferes from "./views/choferes";
import Rutas from "./views/rutas";

const routes = [
    {path: '/404', component: E404},
    {path: '/ots', component: Ots},
  //  {path: '/ots/form', component: OtsForm},
    {path: '/users', component: Users},
   // {path: '/users/form', component: UsersForm},
  //  {path: '/users/form/:id', component: UsersForm},
    {path: '/clients', component: Clients},
    //{path: '/clients/form', component: ClientsForm},
    //{path: '/clients/form/:id', component: ClientsForm},

    {path: '/proveedores', component: Proveedores},
    {path: '/tipo_gastos', component: Tipo_gastos},
    {path: '/unidades', component: Unidades},

    {path: '/choferes', component: Choferes},
    {path: '/rutas', component: Rutas},


    {path: '/managements', component: Managements},
    {path: '/vehicles', component: Vehicles},
    {path: '/type_services', component: TypeServices},
    {path: '/competences', component: Competences},
    {path: '/consumables', component: Consumables},
    {path: '/materials', component: Materials},
    {path: '/document_sigs', component: DocumentSigs},
    {path: '/personals', component: Personals},
    {path: '/compekits', component: Compekits},
    {path: '/kits', component: Kits},
    {path: '/modules', component: Modules},
    {path: '/roles', component: Roles},
    {path: '/settings', component: Settings}
];

export default routes;