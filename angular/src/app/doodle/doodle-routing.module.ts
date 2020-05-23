import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { SendMailComponent } from './send-mail/send-mail.component';
import { AllProductsComponent } from './all-products/all-products.component';
import { NearbyUsersComponent } from './nearby-users/nearby-users.component';
import { AddUserCsvComponent } from './add-user-csv/add-user-csv.component';
import { RegisterComponent } from './register/register.component';
import { SigninComponent } from './signin/signin.component';
import { 
  AuthGuardService as AuthGuard 
} from '../services/auth-guard.service';
const routes: Routes = [
  {
    path:'',
    redirectTo:'signin'
  },
  {
    path:'register',
    component: RegisterComponent,
    canActivate: [AuthGuard] 
  },
  {
    path:'signin',
    component: SigninComponent,
    canActivate: [AuthGuard] 
  },
  {
    path: 'send-mail',
    component: SendMailComponent,
    canActivate: [AuthGuard] 
  },
  {
    path: 'all-products',
    component: AllProductsComponent,
    canActivate: [AuthGuard] 
  },
  {
    path: 'nearby-users',
    component: NearbyUsersComponent,
    canActivate: [AuthGuard] 
  },
  {
    path: 'add-users',
    component: AddUserCsvComponent,
    canActivate: [AuthGuard] 
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DoodleRoutingModule { }
