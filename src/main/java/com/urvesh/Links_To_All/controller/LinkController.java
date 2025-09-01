package com.urvesh.Links_To_All.controller;

import com.urvesh.Links_To_All.dto.LinkDto;
import com.urvesh.Links_To_All.model.Category;
import com.urvesh.Links_To_All.model.Link;
import com.urvesh.Links_To_All.service.LinkService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/links")
public class LinkController {

    private final LinkService linkService;

    // Get all links
    @GetMapping
    public List<LinkDto> getAllLinks(@RequestParam(required = false) String category) {
        if (category != null) {
            return linkService.getLinksByCategory(category); // updated
        }
        return linkService.getAllLinks(); // updated
    }

    // Get link by ID
    @GetMapping("/{id}")
    public ResponseEntity<LinkDto> getLinkById(@PathVariable Long id) {
        LinkDto link = linkService.getLinkById(id); // updated
        return link != null ? ResponseEntity.ok(link) : ResponseEntity.notFound().build();
    }

    // Add new link
    @PostMapping
    public ResponseEntity<LinkDto> createLink(@RequestBody LinkDto linkDto) {
        return ResponseEntity.ok(linkService.createLink(linkDto)); // updated
    }

    // Update link
    @PutMapping("/{id}")
    public ResponseEntity<LinkDto> updateLink(@PathVariable Long id,
                                              @RequestBody LinkDto linkDto) {
        LinkDto updated = linkService.updateLink(id, linkDto); // updated
        return updated != null ? ResponseEntity.ok(updated) : ResponseEntity.notFound().build();
    }

    // Delete link
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteLink(@PathVariable Long id) {
        linkService.deleteLink(id); // updated
        return ResponseEntity.noContent().build();
    }
}
