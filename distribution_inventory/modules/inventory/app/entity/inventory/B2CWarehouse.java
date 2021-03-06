package entity.inventory;

import java.util.Date;

public class B2CWarehouse implements java.io.Serializable{

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String warehouseId;//仓库编码

    private String warehouseName;//仓库名

    private Date created;//创建时间

    private Integer status;//0：禁用，1：启用

    private Date lastUpdated;//最近更新时间

    private String province;//省

    private String city;//市

    private String area;//区

    private String street;//街道

    private String remarks;//备注

    private String batchNo;//批次号
    
    
    private String type;// 仓库类型，目前假定为1：保税仓，2：完税仓，3：海外直邮，4：外部保税

	private Double dealFee;// 仓储处理购费

	private Double dealSkuFee;// 仓储处理SKU费

	private Double dealItemFee;// 仓储处理ITEM费

	private Double otherFee;// 其他费用

	private Boolean isOptFeeActived;// 本仓库的操作费是否启用
	
    public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Double getDealFee() {
		return dealFee;
	}

	public void setDealFee(Double dealFee) {
		this.dealFee = dealFee;
	}

	public Double getDealSkuFee() {
		return dealSkuFee;
	}

	public void setDealSkuFee(Double dealSkuFee) {
		this.dealSkuFee = dealSkuFee;
	}

	public Double getDealItemFee() {
		return dealItemFee;
	}

	public void setDealItemFee(Double dealItemFee) {
		this.dealItemFee = dealItemFee;
	}

	public Double getOtherFee() {
		return otherFee;
	}

	public void setOtherFee(Double otherFee) {
		this.otherFee = otherFee;
	}

	public Boolean getIsOptFeeActived() {
		return isOptFeeActived;
	}

	public void setIsOptFeeActived(Boolean isOptFeeActived) {
		this.isOptFeeActived = isOptFeeActived;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(String warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getBatchNo() {
        return batchNo;
    }

    public void setBatchNo(String batchNo) {
        this.batchNo = batchNo;
    }
}
