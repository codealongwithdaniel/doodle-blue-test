import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';

@Component({
  selector: 'app-nearby-users',
  templateUrl: './nearby-users.component.html',
  styleUrls: ['./nearby-users.component.scss']
})
export class NearbyUsersComponent implements OnInit {

  users: any[] =[];
  totalSize: number = 0;
  pageSize: number = 10;
  page: number = 1;
  constructor(private apiService: ApiService) { }

  ngOnInit() {
    this.getAllUsers();
  }


  getAllUsers(){
    this.apiService.getUsers({
      "offset": 0,
      "rowCount": this.pageSize
    }).subscribe((results: any)=>{
      this.users = results.results;
      this.totalSize = results.recordCount;
    })
  }

  onPageChange(event){
    console.log(event);
    this.apiService.getUsers({
      "offset": (event-1)*this.pageSize,
      "rowCount": this.pageSize
    }).subscribe((results: any)=>{
      this.users = results.results;
      this.totalSize = results.recordCount;
    })
  }
}
