import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { Router } from '@angular/router';
import { MessageService } from '../../@pages/components/message/message.service';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {

  userData: any = {};
  constructor(private apiService: ApiService, private _notification: MessageService, private router: Router) { }

  ngOnInit() {
    this.getLocation();
  }

  getLocation(){
    this.apiService.getPosition().then(pos=>
      {
        this.userData.latitude = pos.lat
        this.userData.longitude = pos.lng;
      });
  }

  register(loginForm: NgForm){
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
      this.apiService.register(this.userData)
      .subscribe((results: any)=>{
        if(results.success){
          localStorage.setItem('token', results.token);
          this.router.navigate(['/signin']);
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
