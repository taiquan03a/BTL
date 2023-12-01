package BTL.eventticket.ServiceImpl;

import BTL.eventticket.Model.Category;
import BTL.eventticket.Reponsitory.CategoryRepository;
import BTL.eventticket.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Iterable<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public Category saveCategory(Category category) {
        return categoryRepository.save(category);
    }

    @Deprecated
    public Category getById(String category) {
        return categoryRepository.getById(Integer.parseInt(category));
    }
}
