import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { MessageService } from '../../@pages/components/message/message.service';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-send-mail',
  templateUrl: './send-mail.component.html',
  styleUrls: ['./send-mail.component.scss']
})
export class SendMailComponent implements OnInit {
  emailData: any ={

  }
  constructor(private apiService: ApiService, private _notification: MessageService) { }

  ngOnInit() {
  }

  sendEmail(mailForm: NgForm){
    if(mailForm.invalid){
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
      console.log(this.emailData);
      this.apiService.sendMail(this.emailData)
      .subscribe((results: any)=>{
        console.log(results);
        if(results.success){
          this._notification.create(
            "primary",
            results.message,
            {
            Position:"top",
            Style:"bar",
            Duration:0
            }
          );
        }else{
          this._notification.create(
            "danger",
            results.message,
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
