# Glam E-Commerce Database

# GROUP MEMBERS
## 1. ERIC MAWIRA - ericjazmawira@gmail.com
## 2. JOSEPH ADDAE - jkaddae123@gmail.com

This project defines the **relational database schema** for a African-centric e-commerce platform, designed to support diverse products, variations, and localized branding.

## Overview

The database supports the following key features:
- Products with categories, brands, and multiple variations
- Custom attributes per product (e.g., material, weight)
- Product color and size options
- Inventory management via `product_item` table
- Structured for scalability and compatibility with platforms like Laravel, Django, etc.

---

## Schema Structure

### `product`
Stores base product details like name, brand, and category.

### `product_item`
Represents individual, purchasable product SKUs (stock-keeping units), including variation details like color and size.

### `product_image`
Handles images related to each product.

###  `brand`
Captures brands available in the platform (both local and international).

### `product_category`
Classifies products into broad categories (e.g., Electronics, Fashion).

### `color`
Defines available product colors, with support for UI hex codes.

### `size_category` &  `size_option`
Groups and defines size options. For instance, clothing may use "S, M, L" while shoes may use numeric sizes.

### `product_variation`
Links a product to its variation options (e.g., specific color and size combinations).

### `product_attribute`
Stores additional, flexible attributes per product, such as material, weight, or processor type.

### `attribute_category` &  `attribute_type`
Organizes product attributes into categories and defines the type (text, number, boolean).

---

## Entity Relationships

- Each `product` belongs to a `brand` and `product_category`
- Each `product_item` represents a specific SKU with optional color and size
- A `product` can have multiple images, attributes, and variations
- Attributes are categorized and typed for flexibility and validation
- Sizes are grouped by category for different product types (e.g., apparel vs. electronics)

---

## Sample Categories & Brands

Examples include:

- **Brands:** Safaricom, Jua Kali Crafts, AfriTech Electronics
- **Categories:** Electronics, Fashion, Agricultural Tools
- **Sizes:** S, M, L, XL (for clothing)

---

## Usage

This database can be used in any backend system requiring robust product management with Kenyan and african  market relevance. Import the schema into platforms like:

- MySQL or MariaDB
- PostgreSQL (with slight syntax tweaks)

---

## Future Enhancements

- Customer and order tables
- Reviews and ratings
- Vendor and inventory management
- Delivery and logistics integration

---

## Created

**April 2025**  
Designed with for the Kenyan African digital marketplace.


