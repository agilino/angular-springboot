import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PickShowtimeComponent } from './pick-showtime.component';

describe('PickShowtimeComponent', () => {
  let component: PickShowtimeComponent;
  let fixture: ComponentFixture<PickShowtimeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PickShowtimeComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(PickShowtimeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
