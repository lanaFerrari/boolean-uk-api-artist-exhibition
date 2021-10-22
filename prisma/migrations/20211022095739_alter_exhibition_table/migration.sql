/*
  Warnings:

  - You are about to drop the column `email` on the `Exhibition` table. All the data in the column will be lost.
  - Added the required column `name` to the `Exhibition` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Exhibition" DROP COLUMN "email",
ADD COLUMN     "name" VARCHAR(50) NOT NULL;
