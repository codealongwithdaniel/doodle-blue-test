import { Component, OnInit,ViewEncapsulation } from '@angular/core';
import { RootLayout } from '../root/root.component';

@Component({
  selector: 'simplywhite-layout',
  templateUrl: './simplywhite.component.html',
  styleUrls: ['./simplywhite.component.scss'],
  encapsulation: ViewEncapsulation.None
})
export class SimplyWhiteLayout extends RootLayout implements OnInit {
  menuLinks = [
    {
        label:"Send Email",
        routerLink:"/pages/send-mail",
        iconType:"fi",
        iconName:"mail"
    },
    {
        label:"Products",
        routerLink:"/pages/all-products",
        iconType:"fi",
        iconName:"list"
    },
    {
      label:"Users",
      routerLink:"/pages/nearby-users",
      iconType:"fi",
      iconName:"user"
    },
    {
      label:"Add Users",
      routerLink:"/pages/add-users",
      iconType:"fa",
      iconName:"user-plus"
    },
];
  ngOnInit() {
    this.changeLayout("menu-pin");
    //Will sidebar close on screens below 1024
    this.autoHideMenuPin();
  }

}
