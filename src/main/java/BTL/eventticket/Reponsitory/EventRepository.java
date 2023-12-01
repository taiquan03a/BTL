package BTL.eventticket.Reponsitory;

import BTL.eventticket.Model.Event;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventRepository extends JpaRepository<Event,Integer> {
    Iterable<Event> findAllByCategoryCategoryId(Integer categoryId);
}
