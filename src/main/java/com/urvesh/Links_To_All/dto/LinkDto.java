package com.urvesh.Links_To_All.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LinkDto {

    private Long id;
    private String title;
    private String description;
    private String url;

    private String categoryName;
}
