package BTL.eventticket.ServiceImpl;

import BTL.eventticket.Model.Bill;
import BTL.eventticket.Reponsitory.BillRepository;
import BTL.eventticket.Service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BillServiceImpl implements BillService {
    @Autowired
    private BillRepository billRepository;
    @Override
    public Bill saveAll(Bill bill) {
        return billRepository.save(bill);
    }

    @Override
    public Iterable<Bill> findAll() {
        return billRepository.findAll();
    }

    @Override
    public long countOrder() {
        return billRepository.count();
    }
}
