using my.bookshop as my from '../db/data-model';
using {ConfigProd as external} from './external/ConfigProd.csn';

service CatalogService @(impl: './cat-service.js') {
    // @readonly entity Books as projection on my.Books;

    entity getLocProdCharAPI      as projection on external.getLocProdCharAPI {
        key LOCATION_ID,
        key PRODUCT_ID,
        key CUSTOMER_GROUP,
        key IBP_CUSTOMER,
        key CLASS_NUM,
        key CLASS_NAME,
        key CHAR_NUM,
        key CHAR_NAME,
        key CHARVAL_NUM,
        key CHAR_VALUE,
        key IBPCHAR_CHK
    };


    entity getLocProdActDemandAPI as projection on external.getLocProdActDemandAPI {
        key LOCATION_ID,
        key PRODUCT_ID,
        key REF_PRODID,
        key IBP_CUSTOMER,
        key WEEK_DATE,
        key CLASS_NUM,
        key CHAR_NUM,
        key CHARVAL_NUM,
        key IBPCHAR_CHK,
        key ORD_QTY,
        key ADJ_QTY
    };
}
