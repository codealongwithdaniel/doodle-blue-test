import { Injectable } from '@angular/core';
import { HostService } from './host.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private hostService: HostService, private http: HttpClient) { }

  getProducts(data){
    return this.http.post(this.hostService.getHost()+'product/getAll', data)
  }

  getUsers(data){
    let http_options = new HttpHeaders({
      'Authorization': `Bearer ${localStorage.getItem('token')}`
    });

    return this.http.post(this.hostService.getHost()+'user/getAll', data, {headers: http_options});
  }

  sendMail(data){
    return this.http.post(this.hostService.getHost()+'user/sendMail', data);
  }


  getPosition(): Promise<any>{
    return new Promise((resolve, reject) => {

      navigator.geolocation.getCurrentPosition(resp => {

          resolve({lng: resp.coords.longitude, lat: resp.coords.latitude});
        },
        err => {
          reject(err);
        });
    });
  }

  saveUser(data){
    return this.http.post(this.hostService.getHost()+'user/add', data);
  }

  signin(data){
    return this.http.post(this.hostService.getHost()+'user/signin', data);
  }

  register(data){
    return this.http.post(this.hostService.getHost()+'user/register', data);
  }
}
