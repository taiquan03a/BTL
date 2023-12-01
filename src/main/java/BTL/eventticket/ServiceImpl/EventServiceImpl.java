package BTL.eventticket.ServiceImpl;

import BTL.eventticket.Model.Event;
import BTL.eventticket.Reponsitory.EventRepository;
import BTL.eventticket.Service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService {
    @Autowired
    private EventRepository eventRepository;
    @Override
    public Iterable<Event> findAll() {
        return eventRepository.findAll();
    }

    @Override
    public Event saveAll(Event event) {
        return eventRepository.save(event);
    }

    @Override
    public Event getById(String prId) {
        return eventRepository.getReferenceById(Integer.parseInt(prId));
    }

    @Deprecated
    public Event getID(String id) {
        return eventRepository.getById(Integer.parseInt(id));
    }

    @Override
    public Event getByIdintProducts(int pId) {
        return eventRepository.getReferenceById(pId);
    }

    @Override
    public void deleteById(Event event) {
        try {
            eventRepository.delete(event);
        }catch (Exception e){
            return;
        }
    }

    @Override
    public Iterable<Event> findAllByCategoryCategoryId(Integer categoryId) {
        return eventRepository.findAllByCategoryCategoryId(categoryId);
    }

    @Override
    public long countProduct() {
        return eventRepository.count();
    }
}
