import { Component, OnInit, Input } from '@angular/core';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.css']
})
export class CardComponent implements OnInit {
  @Input () nameParam: string[] = [];
  @Input () bioParam: string = ''
  @Input () link1Param: string = '';
  @Input () link2Param: string = '';
  @Input () subtitleParam: string = '';

  showFruit: boolean = true;
  author: string = 'Filipe';
  addName: any;
  list: string[] = [];
  remove: any;

  constructor() {
    this.remove = (index: number) =>{
      this.list.splice(index, 1)
    }
    this.addName = () =>{ 
      this.list.push('pessego');
      console.log('add lista: ', this.list)
    }
   }

  ngOnInit(): void {
  }

}
