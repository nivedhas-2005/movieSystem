package com.infosys.movieSystem.bean;


public class MovieShowDTO {
	
	private String showTimeName;
	private String movieId;
	private Integer royalSeat;
	private Integer premierSeat;
	private Integer royalBooked;
	private Integer premierBooked;
	public MovieShowDTO() {
		super();
		this.royalBooked = 0;
		this.premierBooked = 0;
		
	}
	
	public MovieShowDTO(String showTimeName, String movieId, Integer royalSeat, Integer premierSeat,
			Integer royalBooked, Integer premierBooked) {
		super();
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeat = royalSeat;
		this.premierSeat = premierSeat;
		this.royalBooked = royalBooked;
		this.premierBooked = premierBooked;
	}

	public MovieShowDTO(String showTimeName, String movieId,Integer royalSeat, Integer premierSeat) {
		super();
		this.showTimeName = showTimeName;
		this.movieId = movieId;
		this.royalSeat = royalSeat;
		this.premierSeat = premierSeat;
		this.royalBooked = 0;
		this.premierBooked = 0;
	}

	public Integer getRoyalSeat() {
		return royalSeat;
	}

	public void setRoyalSeat(Integer royalSeat) {
		this.royalSeat = royalSeat;
	}

	public Integer getPremierSeat() {
		return premierSeat;
	}

	public void setPremierSeat(Integer premierSeat) {
		this.premierSeat = premierSeat;
	}

	public Integer getRoyalBooked() {
		return royalBooked;
	}

	public void setRoyalBooked(Integer royalBooked) {
		this.royalBooked = royalBooked;
	}

	public Integer getPremierBooked() {
		return premierBooked;
	}

	public void setPremierBooked(Integer premierBooked) {
		this.premierBooked = premierBooked;
	}

	public String getShowTimeName() {
		return showTimeName;
	}

	public void setShowTimeName(String showTimeName) {
		this.showTimeName = showTimeName;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}
	
	@Override
	public String toString() {
		return "MovieShowDTO [showTimeName=" + showTimeName + ", movieId=" + movieId + ", royalSeat="
				+ royalSeat + ", premierSeat=" + premierSeat + ", royalBooked=" + royalBooked
				+ ", premierBooked=" + premierBooked + "]";
	}
	
}
