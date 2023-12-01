package BTL.eventticket.Service;

import BTL.eventticket.Model.Category;

public interface CategoryService {
    public Iterable<Category> findAll();
    public Category saveCategory(Category category);
    public Category getById(String category);
}
