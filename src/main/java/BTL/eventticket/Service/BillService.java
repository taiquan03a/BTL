package BTL.eventticket.Service;

import BTL.eventticket.Model.Bill;

public interface BillService {
    public Bill saveAll(Bill billingAddress);
    public Iterable<Bill> findAll();
    public long countOrder();

}
