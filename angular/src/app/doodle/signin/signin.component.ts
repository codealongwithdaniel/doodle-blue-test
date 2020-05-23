import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ApiService } from '../../services/api.service';
import { MessageService } from '../../@pages/components/message/message.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-signin',
  templateUrl: './signin.component.html',
  styleUrls: ['./signin.component.scss']
})
export class SigninComponent implements OnInit {
  userData: any = {};
  constructor(private apiService: ApiService, private _notification: MessageService, private router: Router) { }

  ngOnInit() {
  }

  signin(loginForm: NgForm){
    if(loginForm.invalid){
      this._notification.create(
        "danger",
        'Please enter required fields',
        {
        Position:"top",
        Style:"bar",
        Duration:0
        }
      );
    }else{
      this.apiService.signin(this.userData)
      .subscribe((results: any)=>{
        if(results.success){
          localStorage.setItem('token', results.token);
          this.router.navigate(['/pages/nearby-users']);
        }else{
          this._notification.create(
            "danger",
            'Authentication failed',
            {
            Position:"top",
            Style:"bar",
            Duration:0
            }
          );
        }
      })
    }
  }

}
