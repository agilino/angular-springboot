package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Department;
import com.agilino.ordercinematicket.model.Time;
import com.agilino.ordercinematicket.repository.TimeRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import static org.mockito.Mockito.doReturn;

class TimeServiceTest {

    @InjectMocks
    private TimeService timeService;

    @Mock
    private TimeRepository timeRepository;

    @Mock
    private AppMapper appMapper;

    @BeforeEach
    void setup() {
        MockitoAnnotations.openMocks(this);
    }


    @Test
    void getTimes_ExpectedSuccessful() {
        doReturn(buildTimes()).when(timeRepository).findAll();
        var expected = timeService.getTimes(null);
        Assertions.assertEquals(1, expected.size());
    }

    private List<Time> buildTimes(){
        Department department = new Department();

        Time time = new Time();
        time.setId(UUID.randomUUID());
        time.setDepartment(department);
        time.setFrom(LocalDateTime.now());
        time.setTo(LocalDateTime.now().plusHours(2));
        time.setPrice(70000L);
        return List.of(time);
    }
}
