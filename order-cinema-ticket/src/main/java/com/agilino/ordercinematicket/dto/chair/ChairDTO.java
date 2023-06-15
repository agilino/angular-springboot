package com.agilino.ordercinematicket.dto.chair;

import com.agilino.ordercinematicket.enums.ChairStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChairDTO extends ChairCreateDTO {
    private UUID id;
    private ChairStatus status;
}


