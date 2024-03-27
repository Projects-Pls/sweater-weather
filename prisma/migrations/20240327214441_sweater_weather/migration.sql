/*
  Warnings:

  - Added the required column `brand` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `category` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `color` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cost` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `description` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `occasion` to the `clothingItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `warmth` to the `clothingItem` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "CategoryENUM" AS ENUM ('Outerwear', 'Tops', 'Bottoms', 'Innerwear', 'Footwear', 'Accessory');

-- CreateEnum
CREATE TYPE "ColorENUM" AS ENUM ('Lights', 'Darks', 'Neutrals', 'Statements');

-- CreateEnum
CREATE TYPE "OccasionENUM" AS ENUM ('Casual', 'Smart_Casual', 'Business_Casual', 'Professional', 'Formal', 'Party');

-- AlterTable
ALTER TABLE "clothingItem" ADD COLUMN     "brand" CHAR(255) NOT NULL,
ADD COLUMN     "category" "CategoryENUM" NOT NULL,
ADD COLUMN     "color" "ColorENUM" NOT NULL,
ADD COLUMN     "cost" MONEY NOT NULL,
ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "occasion" "OccasionENUM" NOT NULL,
ADD COLUMN     "warmth" INTEGER NOT NULL,
ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE "clothingItem_id_seq";
