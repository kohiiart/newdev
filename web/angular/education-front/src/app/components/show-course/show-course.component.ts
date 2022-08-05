import { Component, OnInit, Input, EventEmitter } from '@angular/core';
import {CourseResponseType, CourseService} from 'src/app/course.service';


@Component({
  selector: 'app-show-course',
  templateUrl: './show-course.component.html',
  styleUrls: ['./show-course.component.css']
})
export class ShowCourseComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}
