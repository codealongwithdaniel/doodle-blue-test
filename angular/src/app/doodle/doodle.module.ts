import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { DoodleRoutingModule } from './doodle-routing.module';
import { SendMailComponent } from './send-mail/send-mail.component';
import { NearbyUsersComponent } from './nearby-users/nearby-users.component';
import { AllProductsComponent } from './all-products/all-products.component';
import { NgxDatatableModule } from '@swimlane/ngx-datatable';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import { AddUserCsvComponent } from './add-user-csv/add-user-csv.component';
import { FormsModule } from '@angular/forms';
import { MessageModule } from '../@pages/components/message/message.module';
import { MessageService } from '../@pages/components/message/message.service';
import { SigninComponent } from './signin/signin.component';
import { RegisterComponent } from './register/register.component';
import { 
  AuthGuardService as AuthGuard 
} from '../services/auth-guard.service';
import { JwtHelperService } from '@auth0/angular-jwt';
import { JwtModule } from "@auth0/angular-jwt";

@NgModule({
  imports: [
    CommonModule,
    DoodleRoutingModule,
    NgxDatatableModule,
    NgbModule,
    FormsModule,
    MessageModule
    
  ],
  declarations: [SendMailComponent, NearbyUsersComponent, AllProductsComponent, AddUserCsvComponent, SigninComponent, RegisterComponent],
  providers: [MessageService, AuthGuard, JwtHelperService]

})
export class DoodleModule { }
