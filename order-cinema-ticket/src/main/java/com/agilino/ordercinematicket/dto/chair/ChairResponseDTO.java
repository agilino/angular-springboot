package com.agilino.ordercinematicket.dto.chair;

import com.agilino.ordercinematicket.enums.ChairStatus;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChairResponseDTO extends ChairDTO {
    private ChairStatus status;
}
