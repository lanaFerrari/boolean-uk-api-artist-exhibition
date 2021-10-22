/*
  Warnings:

  - You are about to drop the `_ArtistToExhibition` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_ArtistToExhibition" DROP CONSTRAINT "_ArtistToExhibition_A_fkey";

-- DropForeignKey
ALTER TABLE "_ArtistToExhibition" DROP CONSTRAINT "_ArtistToExhibition_B_fkey";

-- DropTable
DROP TABLE "_ArtistToExhibition";

-- CreateTable
CREATE TABLE "ArtistOnExhibitions" (
    "artistId" INTEGER NOT NULL,
    "exhibitionId" INTEGER NOT NULL,

    CONSTRAINT "ArtistOnExhibitions_pkey" PRIMARY KEY ("artistId","exhibitionId")
);

-- AddForeignKey
ALTER TABLE "ArtistOnExhibitions" ADD CONSTRAINT "ArtistOnExhibitions_artistId_fkey" FOREIGN KEY ("artistId") REFERENCES "Artist"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ArtistOnExhibitions" ADD CONSTRAINT "ArtistOnExhibitions_exhibitionId_fkey" FOREIGN KEY ("exhibitionId") REFERENCES "Exhibition"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
