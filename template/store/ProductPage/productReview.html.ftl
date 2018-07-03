<div class="container mb-5">
	<span class="modal-text">Customer Reviews</span>
	<#list reviewsList.productReviewList as review>
  	<div class="review">
    	<span class="modal-text">"${review.productReview}"</span>
    	<br>
      <span class="star-rating review-text-size">
    		<#list 1..5 as x>
    			<#if (review.productRating >= x)>
					<i class="fas fa-star"></i>
					<#else>
					<i class="far fa-star"></i>
    			</#if>
        </#list>
      </span>
    	<span class="review-date review-text-size">
    		Reviewed by 
    		<#if review.postedAnonymous == "Y">
    			Anonymous
             	<#else>
             	${review.userId}
    		</#if> 
    		on ${review.postedDateTime}
    	</span>
    	<br>
		<span class="review-text review-text-size">
			${review.productReview}
		</span>
  	</div>
  	</#list>
    <br>
  	<button data-toggle="modal" data-target="#modal1" class="btn btn-continue review-btn">Write a Review</button>
</div>
<div class="modal fade" id="modal1">
    <div class="modal-dialog" role="document">
        <form class="modal-content" id="product-review-form">
          	<div class="modal-header">
            	<h5 class="modal-title">Add an Review</h5>
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span>
            	</button>
          	</div>
          	<div class="modal-body">
          		<input type="hidden" value="${ec.web.sessionToken}" name="moquiSessionToken" id="moquiSessionToken">
          		<input type="hidden" value="${productId}" name="productId" id="productId">
              <input type="hidden" value="1" name="productRating" id="productRating">
              <label>Rating</label>
              <div class='rating-stars text-center'>
                <ul id='stars'>
                  <li class='star' data-value='1'>
                    <i class='fa fa-star fa-fw'></i>
                  </li>
                  <li class='star' data-value='2'>
                    <i class='fa fa-star fa-fw'></i>
                  </li>
                  <li class='star' data-value='3'>
                    <i class='fa fa-star fa-fw'></i>
                  </li>
                  <li class='star' data-value='4'>
                    <i class='fa fa-star fa-fw'></i>
                  </li>
                  <li class='star' data-value='5'>
                    <i class='fa fa-star fa-fw'></i>
                  </li>
                </ul>
              </div>
            	<br>
              <label>Comments</label>
            	<textarea class="form-control text-area-review" rows="5" name="productReview" id="productReview"></textarea>
            </div>
            <div class="row justify-content-center">
              	<button class="btn btn-continue col col-sm-6 offset-sm-1" id="addReview">Add Review</button>
              	<a data-dismiss="modal" class="btn btn-link text-add col col-sm-9 offset-sm-1">Or Cancel</a>
            </div>
        </form>
	</div>
</div>
