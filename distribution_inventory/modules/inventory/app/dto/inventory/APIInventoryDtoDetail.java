package dto.inventory;

/**
 * 微仓变更时，通知云仓进行变更的格式实体的明细
 * 
 * @author Alvin Du
 *
 */
public class APIInventoryDtoDetail {

	/**
	 * 商品SKU
	 */
	private String sku;

	/**
	 * 产品标题
	 */
	private String productTitle;

	/**
	 * 产品真实一级分类数字id
	 */
	private String productCategoryId;

	/**
	 * 产品真实一级分类中文名称
	 */
	private String productCategoryName;
	
	/**
	 * 商品采购价格
	 */
	private Double purchasePrice;

	/**
	 * 平台采购成本价
	 */
	private Double costprice;

	/**
	 * 仓库ID
	 */
	private Integer warehouseId;

	/**
	 * 仓库名称
	 */
	private String warehouseName;

	/**
	 * 采购数量
	 */
	private Integer num;
	
	
	/********************** 为获取出入库的采购价格，记录出入库明细的分销价格体系 **********************/

	private Double disProfitRate;// 分销利润率

	private Double disProfit;// 分销毛利润

	private Double disVat;// 分销增值税

	private Double disStockFee;// 分销操作费

	private String disShippingType;// 分销物流方式

	private Double disOtherCost;// 分销其他费用

	private Double disTotalCost;// 分销总成本

	private Double disTransferFee;// 分销转仓费

	private Double disListFee;// 分销登录费

	private Double disTradeFee;// 分销平台 交易费

	private Double disPayFee;// 分销支付费

	private Double disPostalFee;// 分销行邮税

	private Double disImportTar;// 分销进口关税

	private Double disGst;// 分销消费税

	private Double disInsurance;// 分销保险费

	private Double disTotalVat;// 分销增值税

	private Double cost;// 裸采购价

	private Double disFreight;// 分销物流费

	private Double disPrice;// 分销价

	private Double disCifPrice;// CIF价格
	
	private Boolean isgift;//是否包含赠品
	
	private Integer giftNum;//赠品数量
	
	private Double capFee;//均摊价格
	
	private Double arriveWarePrice;// 到仓价
	
	public Double getArriveWarePrice() {
		return arriveWarePrice;
	}

	public void setArriveWarePrice(Double arriveWarePrice) {
		this.arriveWarePrice = arriveWarePrice;
	}

	public Double getCapFee() {
		return capFee;
	}

	public void setCapFee(Double capFee) {
		this.capFee = capFee;
	}

	public Integer getGiftNum() {
		return giftNum;
	}

	public void setGiftNum(Integer giftNum) {
		this.giftNum = giftNum;
	}

	public Boolean getIsgift() {
		return isgift;
	}

	public void setIsgift(Boolean isgift) {
		this.isgift = isgift;
	}

	public Double getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(Double purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getProductTitle() {
		return productTitle;
	}

	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}

	public String getProductCategoryId() {
		return productCategoryId;
	}

	public void setProductCategoryId(String productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public String getProductCategoryName() {
		return productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}

	public Double getCostprice() {
		return costprice;
	}

	public void setCostprice(Double costprice) {
		this.costprice = costprice;
	}

	public Integer getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(Integer warehouseId) {
		this.warehouseId = warehouseId;
	}

	public String getWarehouseName() {
		return warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Double getDisProfitRate() {
		return disProfitRate;
	}

	public void setDisProfitRate(Double disProfitRate) {
		this.disProfitRate = disProfitRate;
	}

	public Double getDisProfit() {
		return disProfit;
	}

	public void setDisProfit(Double disProfit) {
		this.disProfit = disProfit;
	}

	public Double getDisVat() {
		return disVat;
	}

	public void setDisVat(Double disVat) {
		this.disVat = disVat;
	}

	public Double getDisStockFee() {
		return disStockFee;
	}

	public void setDisStockFee(Double disStockFee) {
		this.disStockFee = disStockFee;
	}

	public String getDisShippingType() {
		return disShippingType;
	}

	public void setDisShippingType(String disShippingType) {
		this.disShippingType = disShippingType;
	}

	public Double getDisOtherCost() {
		return disOtherCost;
	}

	public void setDisOtherCost(Double disOtherCost) {
		this.disOtherCost = disOtherCost;
	}

	public Double getDisTotalCost() {
		return disTotalCost;
	}

	public void setDisTotalCost(Double disTotalCost) {
		this.disTotalCost = disTotalCost;
	}

	public Double getDisTransferFee() {
		return disTransferFee;
	}

	public void setDisTransferFee(Double disTransferFee) {
		this.disTransferFee = disTransferFee;
	}

	public Double getDisListFee() {
		return disListFee;
	}

	public void setDisListFee(Double disListFee) {
		this.disListFee = disListFee;
	}

	public Double getDisTradeFee() {
		return disTradeFee;
	}

	public void setDisTradeFee(Double disTradeFee) {
		this.disTradeFee = disTradeFee;
	}

	public Double getDisPayFee() {
		return disPayFee;
	}

	public void setDisPayFee(Double disPayFee) {
		this.disPayFee = disPayFee;
	}

	public Double getDisPostalFee() {
		return disPostalFee;
	}

	public void setDisPostalFee(Double disPostalFee) {
		this.disPostalFee = disPostalFee;
	}

	public Double getDisImportTar() {
		return disImportTar;
	}

	public void setDisImportTar(Double disImportTar) {
		this.disImportTar = disImportTar;
	}

	public Double getDisGst() {
		return disGst;
	}

	public void setDisGst(Double disGst) {
		this.disGst = disGst;
	}

	public Double getDisInsurance() {
		return disInsurance;
	}

	public void setDisInsurance(Double disInsurance) {
		this.disInsurance = disInsurance;
	}

	public Double getDisTotalVat() {
		return disTotalVat;
	}

	public void setDisTotalVat(Double disTotalVat) {
		this.disTotalVat = disTotalVat;
	}

	public Double getCost() {
		return cost;
	}

	public void setCost(Double cost) {
		this.cost = cost;
	}

	public Double getDisFreight() {
		return disFreight;
	}

	public void setDisFreight(Double disFreight) {
		this.disFreight = disFreight;
	}

	public Double getDisPrice() {
		return disPrice;
	}

	public void setDisPrice(Double disPrice) {
		this.disPrice = disPrice;
	}

	public Double getDisCifPrice() {
		return disCifPrice;
	}

	public void setDisCifPrice(Double disCifPrice) {
		this.disCifPrice = disCifPrice;
	}
	
}
