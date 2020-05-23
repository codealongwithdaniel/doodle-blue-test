import { Routes } from '@angular/router';
//Layouts
import { 
  CondensedComponent,
  BlankComponent,
  CorporateLayout,
  SimplyWhiteLayout,
  ExecutiveLayout,
  CasualLayout ,
  BlankCasualComponent,
  BlankCorporateComponent,
  BlankSimplywhiteComponent
} from './@pages/layouts';


export const AppRoutes: Routes = [

  {
    path: 'pages',
    component: SimplyWhiteLayout,
    children: [{
      path: '',
      loadChildren: './doodle/doodle.module#DoodleModule'
    }]
  },
  {
    path: '',
    component: BlankSimplywhiteComponent,
    children: [{
      path: '',
      loadChildren: './doodle/doodle.module#DoodleModule'
    }]
  }
];
