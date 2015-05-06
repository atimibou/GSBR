<?php

namespace CR\GSBRBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Type_praticien
 *
 * @ORM\Table(name="type_praticien")
 * @ORM\Entity(repositoryClass="CR\GSBRBundle\Entity\TypePraticienRepository")
 */
class TypePraticien
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="libelleType", type="string", length=30)
     */
    private $libelleType;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set libelleType
     *
     * @param string $libelleType
     * @return TypePraticien
     */
    public function setLibelleType($libelleType)
    {
        $this->libelleType = $libelleType;
    
        return $this;
    }

    /**
     * Get libelleType
     *
     * @return string 
     */
    public function getLibelleType()
    {
        return $this->libelleType;
    }
}