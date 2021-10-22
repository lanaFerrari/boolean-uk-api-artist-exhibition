-- CreateTable
CREATE TABLE "_ArtistToExhibition" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_ArtistToExhibition_AB_unique" ON "_ArtistToExhibition"("A", "B");

-- CreateIndex
CREATE INDEX "_ArtistToExhibition_B_index" ON "_ArtistToExhibition"("B");

-- AddForeignKey
ALTER TABLE "_ArtistToExhibition" ADD FOREIGN KEY ("A") REFERENCES "Artist"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ArtistToExhibition" ADD FOREIGN KEY ("B") REFERENCES "Exhibition"("id") ON DELETE CASCADE ON UPDATE CASCADE;
