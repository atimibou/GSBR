<?php

namespace CR\GSBRBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use CR\GSBRBundle\Entity\RapportVisite;
use CR\GSBRBundle\Entity\Medicament;
use CR\GSBRBundle\Entity\Praticien;

class GSBRController extends Controller {

//    MEDICAMENT

    public function listeMedicamentAction() {
        $listeMedicaments = $this->getDoctrine()
                ->getManager()
                ->getRepository('CRGSBRBundle:Medicament')
                ->findAll();

        return $this->render('CRGSBRBundle:GSBR:listeMedicament.html.twig', array('lesMedicaments' => $listeMedicaments));
    }

    public function rechercheMedicamentAction(Request $request) {
        $lesFamilles = $this->getDoctrine()->getRepository('CRGSBRBundle:Famille')->findAll();
        $resultat = null;
        if ($request->isMethod('POST')) {
            $famille = $request->request->get('idFamille');
            $resultat = $this->getDoctrine()->getRepository('CRGSBRBundle:Medicament')->findByFamille($famille);
        }
        return $this->render('CRGSBRBundle:GSBR:rechercheMedicament.html.twig', array('lesFamilles' => $lesFamilles, 'resultats' => $resultat));
    }
    
    public function ajouterMedicamentAction(Request $request){
        $medicament = new medicament();
        $form = $this->get('form.factory')
                ->createBuilder('form', $medicament)
                ->add('depotLegal', 'text')
                ->add('nomCommercial', 'text')
                ->add('famille', 'entity', array(
                      'class'=> 'CRGSBRBundle:Famille',
                      'property' => 'LibelleFamille',
                      'expanded' => false,
                      'multiple' => false,
                      'empty_value' => false))
                ->add('composition', 'text')
                ->add('effets', 'text')
                ->add('contreIndication', 'text')
                ->add('prixEchantillon', 'text')
                ->add('Enregistrer', 'submit')
                ->getForm();
        $form->handleRequest($request);
        if($form->isValid()){
            $em = $this->getDoctrine()
                       ->getManager();
            $em->persist($medicament);
            $em->flush();
            $request->getSession()->getFlashBag()->add('success', 'Le médicament a été ajouté');
        }
        return $this->render('CRGSBRBundle:GSBR:ajouterMedicament.html.twig', array(
           'form' => $form->createView() 
        ));
    }
    

//    PRATICIEN

    public function listePraticienAction() {
        $listePraticien = $this->getDoctrine()
                ->getManager()
                ->getRepository('CRGSBRBundle:Praticien')
                ->findAll();

        return $this->render('CRGSBRBundle:GSBR:listePraticien.html.twig', array('lesPraticiens' => $listePraticien));
    }

    public function recherchePraticienAction(Request $request) {
        $lesTypes = $this->getDoctrine()->getRepository('CRGSBRBundle:TypePraticien')->findAll();
        $resultat = null;
        if ($request->isMethod('POST')) {
            if (!empty($request->request->get('idTypeMedecin'))) {
                $type = $request->request->get('idTypeMedecin');
                $resultat = $this->getDoctrine()->getRepository('CRGSBRBundle:Praticien')->findByTypeMedecin($type);
            } else {
                $nom = $request->request->get('nom');
                $ville = $request->request->get('ville');
                if (!empty($nom) && !empty($ville)) {
                    $resultat = $this->getDoctrine()->getRepository('CRGSBRBundle:Praticien')->findBy(array('nomMedecin' => $nom, 'villeMedecin' => $ville));
                } else {
                    if (!empty($nom) && empty($ville)) {
                        $resultat = $this->getDoctrine()->getRepository('CRGSBRBundle:Praticien')->findByNomMedecin($nom);
                    } else {
                        if (empty($nom) && !empty($ville)) {
                            $resultat = $this->getDoctrine()->getRepository('CRGSBRBundle:Praticien')->findByVilleMedecin($ville);
                        } else {
                            $request->getSession()->getFlashBag()->add('danger', 'Veuillez renseigner le nom ou la ville pour la recherche avancée');
                        }
                    }
                }
            }
        }
        return $this->render('CRGSBRBundle:GSBR:recherchePraticien.html.twig', array('lesTypes' => $lesTypes, 'resultat' => $resultat));
    }
    
     public function ajouterPraticienAction(Request $request)
    {
        $praticien = new praticien();
        $form = $this->get('form.factory')
                ->createBuilder('form', $praticien)
                ->add('nomMedecin', 'text')
                ->add('prenomMedecin', 'text')
                ->add('adresseMedecin', 'text')
                ->add('cpMedecin', 'text')
                ->add('villeMedecin', 'text')
                ->add('coefNotoriete', 'text')
                ->add('typeMedecin', 'entity', array(
                      'class'=> 'CRGSBRBundle:TypePraticien',
                      'property' => 'LibelleType',
                      'expanded' => false,
                      'multiple' => false,
                      'empty_value' => false))
                ->add('Enregistrer', 'submit')
                ->getForm();
        $form->handleRequest($request);
        if($form->isValid()){
            $em = $this->getDoctrine()
                       ->getManager();
            $em->persist($praticien);
            $em->flush();
            $request->getSession()->getFlashBag()->add('success', 'Le médicament a été ajouté');
        }
        return $this->render('CRGSBRBundle:GSBR:ajouterPraticien.html.twig', array(
           'form' => $form->createView() 
        ));
    }

//    VISITE  

    public function consulterVisiteAction() {

        $user = $this->getUser();
        $lesRapports = $this->getDoctrine()
                ->getRepository('CRGSBRBundle:RapportVisite')
                ->findByVisiteur($user->getId());

        return $this->render('CRGSBRBundle:GSBR:consulterVisite.html.twig', array('lesRapports' => $lesRapports));
    }

    public function ajouterVisiteAction(Request $request) {

        // On crée un objet
        $rapportVisite = new RapportVisite();

        // On crée le FormBuilder grâce au service form factory
        $formBuilder = $this->createFormBuilder($rapportVisite);

        // On ajoute les champs de l'entité que l'on veut à notre formulaire
        $formBuilder
                ->add('medecin', 'entity', array(
                      'class' => 'CRGSBRBundle:Praticien',
                      'property' => 'NomPrenomMedecin',
                      'multiple' => false
                ))
                ->add('dateRapport', 'date', array('widget' => 'single_text'))
                ->add('motif', 'textarea')
                ->add('bilan', 'textarea')
                ->add('Ajouter', 'submit');
        // Pour l'instant, pas de candidatures, catégories, etc., on les gérera plus tard
        // À partir du formBuilder, on génère le formulaire
        $form = $formBuilder->getForm();

        if ($form->handleRequest($request)->isValid()) {
            $user = $this->getUser();
            $em = $this->getDoctrine()->getManager();
            $rapportVisite->setVisiteur($user);
            $em->persist($rapportVisite);
            $em->flush();
            $request->getSession()->getFlashBag()->add('success', 'Le rapport de visite a été ajouté');
        }
        return $this->render('CRGSBRBundle:GSBR:ajouterVisite.html.twig', array('form' => $form->createView()));
    }
    
    
    //STATISTIQUES
    public function statistiquesAction()
    {
         $nbMedic = $this->getDoctrine()
                ->getRepository('CRGSBRBundle:Medicament')
                ->getNbMedicament();
         $nbFamille = $this->getDoctrine()
                ->getRepository('CRGSBRBundle:Famille')
                ->getNbFamille();
         $nbPraticien = $this->getDoctrine()
                ->getRepository('CRGSBRBundle:Praticien')
                ->getNbPraticien();
        return $this->render('CRGSBRBundle:GSBR:statistiques.html.twig', array(
            'nbMedic' => $nbMedic,
            'nbFamille' => $nbFamille,
            'nbPraticien' => $nbPraticien
        ));
    }
    
    
   

}
