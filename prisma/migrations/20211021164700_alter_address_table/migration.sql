/*
  Warnings:

  - You are about to drop the column `email` on the `Address` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Address` table. All the data in the column will be lost.
  - You are about to alter the column `email` on the `Exhibition` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(50)`.
  - Added the required column `city` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `postCode` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `street` to the `Address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `addressId` to the `Exhibition` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Address_email_key";

-- DropIndex
DROP INDEX "Exhibition_email_key";

-- AlterTable
ALTER TABLE "Address" DROP COLUMN "email",
DROP COLUMN "name",
ADD COLUMN     "city" VARCHAR(50) NOT NULL,
ADD COLUMN     "postCode" VARCHAR(50) NOT NULL,
ADD COLUMN     "street" VARCHAR(50) NOT NULL;

-- AlterTable
ALTER TABLE "Exhibition" ADD COLUMN     "addressId" INTEGER NOT NULL,
ALTER COLUMN "email" SET DATA TYPE VARCHAR(50);

-- AddForeignKey
ALTER TABLE "Exhibition" ADD CONSTRAINT "Exhibition_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
