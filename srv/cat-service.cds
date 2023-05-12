using my.bookshop as my from '../db/data-model';
using {ConfigProd as external} from './external/ConfigProd.csn';

service CatalogService @(impl: './cat-service.js'){
    // @readonly entity Books as projection on my.Books;
    @readonly entity getLocProdCharAPI as projection on external.getLocProdCharAPI;
    
    @readonly entity getLocProdActDemandAPI as projection on external.getLocProdActDemandAPI;
}