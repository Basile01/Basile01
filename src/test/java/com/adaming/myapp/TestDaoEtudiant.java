package com.adaming.myapp;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.adaming.myapp.dao.EtudiantDao;
import com.adaming.myapp.entity.Etudiant;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src//test//resources//root-context.xml"})
public class TestDaoEtudiant {
	
	Etudiant etd = new Etudiant();
	@Autowired
	private EtudiantDao etdao;
//	@Autowired
//	private Etudiant etd;
	@Before
	public void setUp() {
		etd.setIdEtudiant(4L);
		etd.setNomEtudiant("nom6");
		etd.setPrenomEtudiant("prenom6");
	}
	
	
	@Test
	public void AjoutEtudiant() {
		
		etdao.AjoutEtudiant(this.etd);
		Etudiant etdfound = etdao.getByIdEtudiant(4L);
		assertEquals(etd, etdfound);
		
	}
	
	
	

}
