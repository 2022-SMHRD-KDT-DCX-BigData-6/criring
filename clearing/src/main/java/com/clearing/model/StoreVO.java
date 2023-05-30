package com.clearing.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
@AllArgsConstructor
@Getter
@Setter
@RequiredArgsConstructor
@NoArgsConstructor
public class StoreVO {
	@NonNull private String store_email;
	private String store_pw;
	private String store_name;
	private String store_addr;
	private String store_tel;
	private int laundry_cnt;
	private int dryer_cnt;
	private double lat;
	private double lng;
	
	// 일단 위도 경도만 받음
	public StoreVO(double lat, double lng) {
		this.lat = lat;
		this.lng = lng;
	}
}
