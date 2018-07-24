storeComps.LandingPage = {
  name: "landing-page",
  data() { return { products: [] }; },
  beforeCreate() {
    ProductService.getFeaturedProducts().then(function (response) {
      this.products = response;
    }.bind(this));
  },
  components: { "category-product": storeComps.CategoryProductTemplate, starRating: storeComps.StarRatingTemplate, navbar: storeComps.NavbarTemplate,
    "footer-page": storeComps.FooterPageTemplate, carousel: VueCarousel.Carousel, slide: VueCarousel.Slide }
};
storeComps.LandingPageTemplate = getPlaceholderRoute("homeTemplate", "LandingPage");
