import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';

@Component({
  selector: 'app-all-products',
  templateUrl: './all-products.component.html',
  styleUrls: ['./all-products.component.scss']
})
export class AllProductsComponent implements OnInit {

  products: any[] =[];
  totalSize: number = 0;
  pageSize: number = 10;
  page: number = 1;
  constructor(private apiService: ApiService) { }

  ngOnInit() {
    this.getAllProducts();
  }

  getAllProducts(){
    this.apiService.getProducts({
      "offset": 0,
      "rowCount": this.pageSize
    }).subscribe((results: any)=>{
      this.products = results.results;
      this.totalSize = results.recordCount;
    })
  }

  onPageChange(event){
    console.log(event);
    this.apiService.getProducts({
      "offset": (event-1)*this.pageSize,
      "rowCount": this.pageSize
    }).subscribe((results: any)=>{
      this.products = results.results;
      this.totalSize = results.recordCount;
    })
  }
}
