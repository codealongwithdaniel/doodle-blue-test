import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { MessageService } from '../../@pages/components/message/message.service';

@Component({
  selector: 'app-add-user-csv',
  templateUrl: './add-user-csv.component.html',
  styleUrls: ['./add-user-csv.component.scss']
})
export class AddUserCsvComponent implements OnInit {
  latitude: any;
  longitude: any;
  files: any[] =[];
  constructor(private apiService: ApiService, private _notification: MessageService) { }

  ngOnInit() {
    this.getLocation();
  }

  getLocation(){
    this.apiService.getPosition().then(pos=>
      {
        this.latitude = pos.lat
        this.longitude = pos.lng;
      });
  }
  
  fileChanged(event){
    this.files = event.target.files;
    console.log(this.files);
  }

  saveData(){
    const uploadData = new FormData();

    for(var i = 0;i<this.files.length; i++){
      uploadData.append('file', this.files[i]);
    }
    uploadData.append('latitude', this.latitude);
    uploadData.append('longitude', this.longitude);

    this.apiService.saveUser(uploadData)
    .subscribe((results: any)=>{
      if(results.success){
        this._notification.create(
          "primary",
          'Records added',
          {
          Position:"top",
          Style:"bar",
          Duration:0
          }
        );
      }else{
        this._notification.create(
          "danger",
          'Something went wrong check the csv schema',
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
