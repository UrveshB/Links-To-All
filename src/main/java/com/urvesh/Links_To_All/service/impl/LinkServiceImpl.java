package com.urvesh.Links_To_All.service.impl;

import com.urvesh.Links_To_All.dto.LinkDto;
import com.urvesh.Links_To_All.model.Category;
import com.urvesh.Links_To_All.model.Link;
import com.urvesh.Links_To_All.repository.CategoryRepository;
import com.urvesh.Links_To_All.repository.LinkRepository;
import com.urvesh.Links_To_All.service.LinkService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class LinkServiceImpl implements LinkService {

    private final LinkRepository linkRepository;
    private final CategoryRepository categoryRepository;

    @Override
    public List<LinkDto> getAllLinks() {
        return linkRepository.findAll()
                .stream()
                .map(this::mapToDto)
                .collect(Collectors.toList());
    }

    @Override
    public LinkDto getLinkById(Long id) {
        return linkRepository.findById(id)
                .map(this::mapToDto)
                .orElse(null);
    }

    @Override
    public LinkDto createLink(LinkDto linkDto) {
        Category category = null;
        if (linkDto.getCategoryName() != null) {
            category = categoryRepository.findByName(linkDto.getCategoryName()).orElse(null);
        }

        Link link = Link.builder()
                .title(linkDto.getTitle())
                .description(linkDto.getDescription())
                .url(linkDto.getUrl())
                .category(category)
                .build();

        Link saved = linkRepository.save(link);
        return mapToDto(saved);
    }

    @Override
    public LinkDto updateLink(Long id, LinkDto linkDto) {
        return linkRepository.findById(id)
                .map(existing -> {
                    existing.setTitle(linkDto.getTitle());
                    existing.setDescription(linkDto.getDescription());
                    existing.setUrl(linkDto.getUrl());

                    if (linkDto.getCategoryName() != null) {
                        Category category = categoryRepository.findByName(linkDto.getCategoryName())
                                .orElse(null);
                        existing.setCategory(category);
                    }

                    Link updated = linkRepository.save(existing);
                    return mapToDto(updated);
                })
                .orElse(null);
    }

    @Override
    public void deleteLink(Long id) {
        if (linkRepository.existsById(id)) {
            linkRepository.deleteById(id);
        }
    }

    @Override
    public List<LinkDto> getLinksByCategory(String categoryName) {
        return categoryRepository.findByName(categoryName)
                .map(Category::getLinks)
                .orElse(List.of())
                .stream()
                .map(this::mapToDto)
                .collect(Collectors.toList());
    }

    private LinkDto mapToDto(Link link) {
        return LinkDto.builder()
                .id(link.getId())
                .title(link.getTitle())
                .description(link.getDescription())
                .url(link.getUrl())
                .categoryName(link.getCategory() != null ? link.getCategory().getName() : null)
                .build();
    }
}
