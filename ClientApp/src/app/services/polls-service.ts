import { Injectable, OnInit, Inject } from "@angular/core";
import { BehaviorSubject, Observable } from "rxjs";
import { HttpClient, HttpHeaders } from '@angular/common/http';
@Injectable({
    providedIn: "root",
})
export class PollsService {
    pollSource: BehaviorSubject<Poll>;
    currentPoll: Observable<Poll>;

    constructor(private http: HttpClient, @Inject('BASE_URL') private baseUrl: string){}

    changePoll(poll: Poll) {
        if (!this.pollSource){
            this.pollSource = new BehaviorSubject(poll);
            this.currentPoll = this.pollSource.asObservable();
        }
        this.pollSource.next(poll);
    }

}