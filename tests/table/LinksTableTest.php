<?php

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../../src/table/LinksTable.php';
require_once __DIR__ . '/../../src/entity/Link.php';
require_once __DIR__ . '/../../src/exceptions/FfbTableException.php';

class LinksTableTest extends TestCase
{
    private LinksTable $linksTable;

    /**
     * Set up the LinksTable instance before each test.
     * This method initializes the LinksTable object with test parameters.
     */
    protected function setUp(): void
    {
        $this->linksTable = new LinksTable("tests", "user");
    }

    /**
     * Test getting a link by its ID.
     * This method verifies that a link can be retrieved by its ID and checks its properties.
     */
    public function testGetLinkById()
    {
        $link = $this->linksTable->get(1);

        // Assert that the retrieved link has the expected ID and URL.
        $this->assertEquals(1, $link->getId());
        $this->assertEquals("https://archiveofourown.org/works/7746940/chapters/17662930", $link->getUrl());

        // Assert that the retrieved object is an instance of the Link class.
        $this->assertInstanceOf(Link::class, $link);

        // Assert that the creation date is not null and the delete date is null.
        $this->assertNotNull($link->getCreationDate());
        $this->assertNull($link->getDeleteDate());
    }

    /**
     * Test getting a link by an ID that does not exist.
     * This method ensures that an exception is thrown when trying to retrieve a non-existent link.
     */
    public function testGetLinkByIdNotFound()
    {
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");

        // Attempt to retrieve a link with an invalid ID.
        $this->linksTable->get(0);
    }

    /**
     * Test finding links by exact match.
     * This method verifies that links can be searched by exact match criteria.
     */
    public function testFindSearchedByEquality()
    {
        $links = $this->linksTable->findSearchedBy([
            "url" => "https://archiveofourown.org/works/7746940/chapters/17662930"
        ]);

        // Assert that one link is found and its properties match the expected values.
        $this->assertCount(1, $links);
        $this->assertEquals(1, $links[0]->getId());
        $this->assertEquals("https://archiveofourown.org/works/7746940/chapters/17662930", $links[0]->getUrl());
        $this->assertInstanceOf(Link::class, $links[0]);
        $this->assertNotNull($links[0]->getCreationDate());
    }

    /**
     * Test finding links using a LIKE query.
     * This method ensures that links can be searched using a pattern match.
     */
    public function testFindSearchedByLike()
    {
        $links = $this->linksTable->findSearchedBy([
            "url" => "LIKE 'http%'"
        ]);

        // Assert that the expected number of links is found and their properties are valid.
        $this->assertCount(1069, $links);
        $this->assertEquals(1, $links[0]->getId());
        $this->assertEquals("https://archiveofourown.org/works/7746940/chapters/17662930", $links[0]->getUrl());
        $this->assertInstanceOf(Link::class, $links[0]);
        $this->assertNotNull($links[0]->getCreationDate());
    }

    /**
     * Test finding links ordered by URL in ascending order.
     * This method verifies that links can be retrieved in a specific order.
     */
    public function testFindOrderedByAsc()
    {
        $links = $this->linksTable->findOrderedBy([
            "url" => "ASC"
        ]);

        // Assert that the expected number of links is found and the first link has the expected URL.
        $this->assertCount(1069, $links);
        $this->assertEquals("http://archiveofourown.org/works/133672", $links[0]->getUrl());

        // Assert that all links are valid instances of the Link class and have a creation date.
        foreach ($links as $link) {
            $this->assertInstanceOf(Link::class, $link);
            $this->assertNotNull($link->getCreationDate());
        }
    }

    /**
     * Test finding links with a limit of 2.
     * This method ensures that the number of retrieved links can be limited.
     */
    public function testFindLimitedBy02()
    {
        $links = $this->linksTable->findLimitedBy([
            "limit" => 2
        ]);

        // Assert that only two links are retrieved and their properties are valid.
        $this->assertCount(2, $links);
        $this->assertEquals("https://archiveofourown.org/works/7746940/chapters/17662930", $links[0]->getUrl());
        foreach ($links as $link) {
            $this->assertInstanceOf(Link::class, $link);
            $this->assertNotNull($link->getCreationDate());
        }
    }

    /**
     * Test creating a new link.
     * This method verifies that a new link can be created and its properties are correctly set.
     */
    public function testCreateLink()
    {
        $link = new Link();
        $link->setUrl("http://newlink.com");
        $link->setFanfictionId(1);
        $link->setCreationDate(new DateTime("2023-01-01"));
        $link->setUpdateDate(new DateTime("2023-01-01"));
        $link->setDeleteDate(null);

        // Create the link and assert that its properties are correctly set.
        $createdLink = $this->linksTable->create($link);
        $this->assertNotNull($createdLink->getId());
        $this->assertEquals("http://newlink.com", $createdLink->getUrl());
        $this->assertInstanceOf(Link::class, $createdLink);
        $this->assertNotNull($createdLink->getCreationDate());
    }

    /**
     * Test updating an existing link.
     * This method ensures that an existing link can be updated and its properties are modified.
     */
    public function testUpdateLink()
    {
        $link = $this->linksTable->get($this->linksTable->getLastInsertId());
        $link->setUrl("http://updatedlink.com");

        // Update the link and assert that its URL is updated.
        $updatedLink = $this->linksTable->update($link);
        $this->assertEquals("http://updatedlink.com", $updatedLink->getUrl());
        $this->assertInstanceOf(Link::class, $updatedLink);
        $this->assertNotNull($updatedLink->getUpdateDate());
    }

    /**
     * Test soft deleting a link.
     * This method verifies that a link can be soft deleted and its delete date is set.
     */
    public function testDeleteLink()
    {
        $links = $this->linksTable->findSearchedBy([
            "url" => "http://updatedlink.com"
        ]);

        // Soft delete the link and assert that the operation is successful.
        $result = $this->linksTable->delete($links[0]->getId());
        $this->assertTrue($result);

        // Fetch the link again to verify the delete date is set.
        $deletedLink = $this->linksTable->get($links[0]->getId());
        $this->assertNotNull($deletedLink->getDeleteDate());
    }

    /**
     * Test restoring a soft-deleted link.
     * This method ensures that a soft-deleted link can be restored and its delete date is cleared.
     */
    public function testRestoreLink()
    {
        $links = $this->linksTable->findSearchedBy([
            "url" => "http://updatedlink.com"
        ]);

        // Assert that the link exists and has the expected URL.
        $this->assertNotEmpty($links);
        $this->assertEquals("http://updatedlink.com", $links[0]->getUrl());

        // Restore the link and assert that the operation is successful.
        $result = $this->linksTable->restore($links[0]->getId());
        $this->assertTrue($result);

        // Fetch the restored link and verify its properties.
        $restoredLink = $this->linksTable->get($links[0]->getId());
        $this->assertNotNull($restoredLink);
        $this->assertEquals("http://updatedlink.com", $restoredLink->getUrl());
        $this->assertNull($restoredLink->getDeleteDate());
    }

    /**
     * Test hard deleting a link.
     * This method verifies that a link can be permanently deleted and is no longer retrievable.
     */
    public function testRemoveLink()
    {
        $links = $this->linksTable->findSearchedBy([
            "url" => "http://updatedlink.com"
        ]);

        // Assert that the link exists and has the expected URL.
        $this->assertNotEmpty($links);
        $this->assertEquals("http://updatedlink.com", $links[0]->getUrl());

        // Permanently delete the link and assert that the operation is successful.
        $result = $this->linksTable->remove($links[0]->getId());
        $this->assertTrue($result);

        // Attempt to retrieve the deleted link and assert that an exception is thrown.
        $this->expectException(FfbTableException::class);
        $this->expectExceptionMessage("No data for arguments provided!");
        $this->linksTable->get($links[0]->getId());
    }
}