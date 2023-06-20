package com.agilino.ordercinematicket.service;

import com.agilino.ordercinematicket.mapper.AppMapper;
import com.agilino.ordercinematicket.model.Chair;
import com.agilino.ordercinematicket.model.Department;
import com.agilino.ordercinematicket.repository.ChairRepository;
import com.agilino.ordercinematicket.repository.TicketRepository;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;

import java.util.List;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;

class ChairServiceTest {

    @InjectMocks
    private ChairService chairService;

    @Mock
    private ChairRepository chairRepository;

    @Mock
    private TicketRepository ticketRepository;

    @Mock
    private AppMapper appMapper;

    @Test
    void getChairs() {
        doReturn(buildChairs()).when(chairRepository).findByDepartmentId(any(), any());
    }

    private List<Chair> buildChairs() {
        Department department = new Department();
        Chair chair1 = new Chair();
        chair1.setId(UUID.randomUUID());
        chair1.setDepartment(department);
        chair1.setNumber("A1");

        Chair chair2 = new Chair();
        chair2.setId(UUID.randomUUID());
        chair2.setDepartment(department);
        chair2.setNumber("A1");
        return List.of(chair1, chair2);
    }
}
