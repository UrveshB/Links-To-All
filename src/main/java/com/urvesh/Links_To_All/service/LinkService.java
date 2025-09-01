package com.urvesh.Links_To_All.service;

import com.urvesh.Links_To_All.dto.LinkDto;
import java.util.List;

public interface LinkService {

    List<LinkDto> getAllLinks();

    LinkDto getLinkById(Long id);

    LinkDto createLink(LinkDto linkDto);

    LinkDto updateLink(Long id, LinkDto linkDto);

    void deleteLink(Long id);

    List<LinkDto> getLinksByCategory(String categoryName);
}
