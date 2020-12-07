
import {Component, OnInit, OnDestroy, Input, Inject, EventEmitter, Output} from '@angular/core';
import { UserLogin } from '../../models/user-login.model';
import { HttpClient } from '@angular/common/http';
import {Router, ActivatedRoute} from '@angular/router';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-poll',
  templateUrl: './poll.component.html',
  styleUrls: ['./poll.component.scss']
})

export class PollComponent{

  constructor(private http: HttpClient, @Inject('BASE_URL') private baseUrl: string, private router: Router, private route: ActivatedRoute) {

  }

  private pollId: number;
  private poll: Poll;

  ngOnInit() {
    this.pollId = Number(this.route.snapshot.paramMap.get('id'));
    console.log(this.pollId);

  }

}
