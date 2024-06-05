package data.service;

import data.dto.ReserveDto;
import data.mapper.ReserveMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReserveService {
    @Autowired
    ReserveMapperInter inter;
    
    public ReserveDto getReserve(String name, String phone, String reserve_num) {
    	return inter.getReserve(name, phone, reserve_num);
    }
    public void makeReservation(ReserveDto dto) {
    	inter.makeReservation(dto);
    }
}
