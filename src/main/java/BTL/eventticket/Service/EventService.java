package BTL.eventticket.Service;

import BTL.eventticket.Model.Event;

public interface EventService {
    public Iterable<Event> findAll();
    public Event saveAll(Event event);
    public  Event getById(String prId);
    public Event getID(String id);
    public Event getByIdintProducts(int pId);
    public void deleteById(Event products);
    public Iterable<Event> findAllByCategoryCategoryId(Integer categoryId);
    public long countProduct();
}
