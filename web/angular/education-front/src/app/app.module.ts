import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CourseComponent } from './pages/course/course.component';
import { LogoComponent } from './components/logo/logo.component';
import { HeaderComponent } from './components/header/header.component';
import { RoomComponent } from './components/room/room.component';
import { LessonComponent } from './components/lesson/lesson.component';
import { SidebarComponent } from './components/sidebar/sidebar.component';
import { VimeModule } from '@vime/angular';
import { HomeComponent } from './pages/home/home.component';
import { ShowCourseComponent } from './components/show-course/show-course.component';
import { CardComponent } from './components/card/card.component';

@NgModule({
  declarations: [
    AppComponent,
    CourseComponent,
    LogoComponent,
    HeaderComponent,
    RoomComponent,
    LessonComponent,
    SidebarComponent,
    HomeComponent,
    ShowCourseComponent,
    CardComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    VimeModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
