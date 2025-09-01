package com.urvesh.Links_To_All.service.impl;

import com.urvesh.Links_To_All.dto.CategoryDto;
import com.urvesh.Links_To_All.model.Category;
import com.urvesh.Links_To_All.repository.CategoryRepository;
import com.urvesh.Links_To_All.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public List<CategoryDto> getAllCategories() {
        return categoryRepository.findAll()
                .stream()
                .map(c -> new CategoryDto(c.getId(), c.getName()))
                .collect(Collectors.toList());
    }

    @Override
    public CategoryDto getCategoryById(Long id) {
        return categoryRepository.findById(id)
                .map(c -> new CategoryDto(c.getId(), c.getName()))
                .orElse(null);
    }

    @Override
    public CategoryDto createCategory(CategoryDto categoryDto) {
        Category category = Category.builder()
                .name(categoryDto.getName())
                .build();
        Category saved = categoryRepository.save(category);
        return new CategoryDto(saved.getId(), saved.getName());
    }

    @Override
    public CategoryDto updateCategory(Long id, CategoryDto categoryDto) {
        return categoryRepository.findById(id)
                .map(existing -> {
                    existing.setName(categoryDto.getName());
                    Category updated = categoryRepository.save(existing);
                    return new CategoryDto(updated.getId(), updated.getName());
                })
                .orElse(null);
    }

    @Override
    public void deleteCategory(Long id) {
        if (categoryRepository.existsById(id)) {
            categoryRepository.deleteById(id);
        }
    }
}
