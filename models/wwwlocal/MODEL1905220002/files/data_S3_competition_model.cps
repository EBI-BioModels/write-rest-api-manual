<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.42 (Build 284) (http://www.copasi.org) at 2024-01-31T14:19:42Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="42" versionDevel="284" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Constant flux (irreversible)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-08-21T19:04:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="v" order="0" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="TwosubstratesMMs2constant_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_49">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NA_NamPT_compartment*ATP_NamPT_compartment*scaling/(Km+NA_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="ATP_NamPT_compartment" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="NA_NamPT_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Competitie inhibition two substrates s2 const scaling_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_50">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T_NMNAT*scaling*(kcat_A*NMN_NamPT_compartment/Km_A-kcat_PA*NAD_NamPT_compartment/Km_PA)/(1+NMN_NamPT_compartment/Km_A+NaMN_NamPT_compartment/Km_B+NAD_NamPT_compartment/Km_PA+NaAD_NamPT_compartment/Km_PB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="E_T_NMNAT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="Km_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="Km_B" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Km_PA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="Km_PB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="NAD_NamPT_compartment" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_357" name="NMN_NamPT_compartment" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="NaAD_NamPT_compartment" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="NaMN_NamPT_compartment" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="kcat_A" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="kcat_PA" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="scaling" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Competitie inhibition two substrates s2 const scaling_2" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_51">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T_NMNAT*scaling*(kcat_A*NaMN_NamPT_compartment/Km_A-kcat_PA*NaAD_NamPT_compartment/Km_PA)/(1+NaMN_NamPT_compartment/Km_A+NMN_NamPT_compartment/Km_B+NaAD_NamPT_compartment/Km_PA+NAD_NamPT_compartment/Km_PB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_387" name="E_T_NMNAT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="Km_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="Km_B" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="Km_PA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="Km_PB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="NAD_NamPT_compartment" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_381" name="NMN_NamPT_compartment" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="NaAD_NamPT_compartment" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_379" name="NaMN_NamPT_compartment" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="kcat_A" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="kcat_PA" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="scaling" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="TwosubstratesMMs2constant_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_52">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NaAD_NamPT_compartment*ATP_NamPT_compartment*scaling/(Km+NaAD_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="ATP_NamPT_compartment" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="NaAD_NamPT_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="MM with ET and scaling_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_53">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NMN_NamPT_compartment/(Km+NMN_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="NMN_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="TwosubstratesMMs2constant_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_54">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NR_NamPT_compartment*Pi_NamPT_compartment*scaling/(Km+NR_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="NR_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="Pi_NamPT_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Two substrate product inhibiton scaling_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_55">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*SAM_NamPT_compartment*NAM_NamPT_compartment/(Kma*(Kmb+NAM_NamPT_compartment)*(1+_1_methyl_NAM_NamPT_compartment/Ki)+SAM_NamPT_compartment*Kmb+SAM_NamPT_compartment*NAM_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="Ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="Kma" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="Kmb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="NAM_NamPT_compartment" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="SAM_NamPT_compartment" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_432" name="_1_methyl_NAM_NamPT_compartment" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_431" name="scaling" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="MM with ET and scaling_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_56">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NaMN_NamPT_compartment/(Km+NaMN_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="NaMN_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_330" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Product inhibition two susbtrates s2 const scaling_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_57">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*NAD_NamPT_compartment*H3_ac_NamPT_compartment/((Km+NAD_NamPT_compartment)*(1+NAM_NamPT_compartment/Ki))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_467" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_466" name="H3_ac_NamPT_compartment" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_465" name="Kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="Ki" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="NAD_NamPT_compartment" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="NAM_NamPT_compartment" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_460" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="MM with ET and scaling_3" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_58">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NAD_NamPT_compartment/(Km+NAD_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_477" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="NAD_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Product inhibition scaling_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_59">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*NAM_NamPT_compartment/(Km+NAM_NamPT_compartment+Km*NA_NamPT_compartment/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="Ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_487" name="NAM_NamPT_compartment" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_486" name="NA_NamPT_compartment" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_485" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for NAM import[0]" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_60">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        NamPT_compartment*(Nam_transporter*Nam_ex-Nam_transporter*NAM_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_499" name="NAM_NamPT_compartment" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_458" name="NamPT_compartment" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_457" name="Nam_ex" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_484" name="Nam_transporter" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Competitive inhibition scaling_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_61">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat_NamPRT*NAM_NamPT_compartment/(Km_NamPRT+NAM_NamPT_compartment+Km_NamPRT*NAD_NamPT_compartment/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_513" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="Kcat_NamPRT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="Ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="Km_NamPRT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="NAD_NamPT_compartment" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_508" name="NAM_NamPT_compartment" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_507" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="MM with ET and scaling_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_62">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NAR_NamPT_compartment/(Km+NAR_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_531" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="NAR_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_528" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="TwosubstratesMMs2constant_4" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_63">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NAR_NamPT_compartment*Pi_NamPT_compartment*scaling/(Km+NAR_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_543" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="NAR_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_540" name="Pi_NamPT_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_539" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="MM with ET and scaling_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_64">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NR_NamPT_compartment/(Km+NR_NamPT_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_555" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_554" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="NR_NamPT_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="TwosubstratesMMs2constant_5" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_65">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NA_NADA_compartment*ATP_NADA_compartment*scaling/(Km+NA_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="ATP_NADA_compartment" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="NA_NADA_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_565" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Competitie inhibition two substrates s2 const scaling_3" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_66">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T_NMNAT*scaling*(kcat_A*NMN_NADA_compartment/Km_A-kcat_PA*NAD_NADA_compartment/Km_PA)/(1+NMN_NADA_compartment/Km_A+NaMN_NADA_compartment/Km_B+NAD_NADA_compartment/Km_PA+NaAD_NADA_compartment/Km_PB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_593" name="E_T_NMNAT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="Km_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_591" name="Km_B" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="Km_PA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="Km_PB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="NAD_NADA_compartment" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_587" name="NMN_NADA_compartment" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_586" name="NaAD_NADA_compartment" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_585" name="NaMN_NADA_compartment" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_584" name="kcat_A" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="kcat_PA" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_582" name="scaling" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Competitie inhibition two substrates s2 const scaling_4" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_67">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T_NMNAT*scaling*(kcat_A*NaMN_NADA_compartment/Km_A-kcat_PA*NaAD_NADA_compartment/Km_PA)/(1+NaMN_NADA_compartment/Km_A+NMN_NADA_compartment/Km_B+NaAD_NADA_compartment/Km_PA+NAD_NADA_compartment/Km_PB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_617" name="E_T_NMNAT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="Km_A" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="Km_B" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="Km_PA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="Km_PB" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="NAD_NADA_compartment" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_611" name="NMN_NADA_compartment" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_610" name="NaAD_NADA_compartment" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_609" name="NaMN_NADA_compartment" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="kcat_A" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="kcat_PA" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="scaling" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="TwosubstratesMMs2constant_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_68">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NaAD_NADA_compartment*ATP_NADA_compartment*scaling/(Km+NaAD_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_562" name="ATP_NADA_compartment" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_580" name="E_T" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="Km" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="NaAD_NADA_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_550" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="MM with ET and scaling_6" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_69">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NMN_NADA_compartment/(Km+NMN_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_639" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_638" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_637" name="NMN_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_636" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="TwosubstratesMMs2constant_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_70">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NR_NADA_compartment*Pi_NADA_compartment*scaling/(Km+NR_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_651" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="NR_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_648" name="Pi_NADA_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_647" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="MM with ET and scaling_7" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_71">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NaMN_NADA_compartment/(Km+NaMN_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_663" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="NaMN_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_660" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_659" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Product inhibition two susbtrates s2 const scaling_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_72">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*NAD_NADA_compartment*H3_ac_NADA_compartment/((Km+NAD_NADA_compartment)*(1+NAM_NADA_compartment/Ki))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_679" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="H3_ac_NADA_compartment" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_677" name="Kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="Ki" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="NAD_NADA_compartment" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_673" name="NAM_NADA_compartment" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_672" name="scaling" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="MM with ET and scaling_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_73">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NAD_NADA_compartment/(Km+NAD_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_688" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="NAD_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_561" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Product inhibition scaling_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_74">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*NAM_NADA_compartment/(Km+NAM_NADA_compartment+Km*NA_NADA_compartment/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_703" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="Kcat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="Ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_700" name="Km" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_699" name="NAM_NADA_compartment" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_698" name="NA_NADA_compartment" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_697" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for NAM import[1]" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_75">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        NADA_compartment*(Nam_transporter*Nam_ex-Nam_transporter*NAM_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_711" name="NADA_compartment" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_670" name="NAM_NADA_compartment" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_669" name="Nam_ex" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_696" name="Nam_transporter" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Competitive inhibition scaling_2" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_76">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat_NamPRT*NAM_NADA_compartment/(Km_NamPRT+NAM_NADA_compartment+Km_NamPRT*NAD_NADA_compartment/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_725" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_724" name="Kcat_NamPRT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_723" name="Ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="Km_NamPRT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_721" name="NAD_NADA_compartment" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_720" name="NAM_NADA_compartment" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_719" name="scaling" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="MM with ET and scaling_9" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_77">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NAR_NADA_compartment/(Km+NAR_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_743" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_742" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_741" name="NAR_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_740" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_739" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="TwosubstratesMMs2constant_8" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_78">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*NAR_NADA_compartment*Pi_NADA_compartment*scaling/(Km+NAR_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_755" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_754" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_753" name="NAR_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_752" name="Pi_NADA_compartment" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_751" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="turnover" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="MM with ET and scaling_10" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_79">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*NR_NADA_compartment/(Km+NR_NADA_compartment)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_767" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_766" name="Km" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_765" name="NR_NADA_compartment" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_764" name="kcat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="scaling" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for Nam uptake" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Function_80">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        NADA_compartment*"Constant flux (irreversible)_1"(v)/Cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_777" name="Cytosol" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_776" name="NADA_compartment" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_775" name="v" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:29:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>ines.heiland@uit.no</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Heiland</vCard:Family>
                <vCard:Given>Ines</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>UiT Arctic University of Norway</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:29:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>The model is based on MODEL1905220001 but has two compartments that have different composition of the biosynthetic enzymes NADA and NamPT. One compartment contains in addition NNMT, the other one does not. Both compartments are competing for a common Nam source.</p>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="Cytosol" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T15:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="NamPT_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T15:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_5" name="NADA_compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T15:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_48" name="Gln" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="DNA_damage" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="DNA_ADPR" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="NADbound" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:14:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="H3_ac" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="H3_deac" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Glu" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="NR" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Pi" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:36:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="NaAD" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="1-methyl-NAM" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="H2O" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="PPi" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="AMP" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="NMN" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="NA" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="NaMN" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="ADP" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="SAM" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="SAH" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="NAM" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="NAD" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="NAR" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="PRPP" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="ATP" simulationType="fixed" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="Gln" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="DNA_damage" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="DNA_ADPR" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="NADbound" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:14:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="H3_ac" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="H3_deac" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="Glu" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="NR" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="Pi" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:36:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_82" name="NaAD" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="H2O" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="PPi" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="AMP" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="NMN" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="NA" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="NaMN" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="ADP" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="NAM" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="NAD" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="NAR" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="PRPP" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_94" name="ATP" simulationType="fixed" compartment="Compartment_5" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="Nam_ex" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:23:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_7" name="celldivision_rate_NamPT_compartment" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-14T13:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[cell devision all],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="celldivision_rate_NADA_compartment" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-14T13:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[cell devision all],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Nam transporter" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T16:06:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Km NamPRT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T18:44:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Kcat NamPRT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T18:44:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="cell devision all" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-14T14:31:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="E_T NMNAT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-05-10T08:39:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_46" name="NMN-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_374" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="NAPRT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.11"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/18823127"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_373" name="E_T" value="10"/>
          <Constant key="Parameter_375" name="turnover" value="3.3"/>
          <Constant key="Parameter_382" name="scaling" value="0.001"/>
          <Constant key="Parameter_378" name="Km" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Parameter_373"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Parameter_378"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_382"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_375"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="NMNAT1-NMN[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.18"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/17402747"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/16118205"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_380" name="scaling" value="0.001"/>
          <Constant key="Parameter_369" name="kcat_A" value="53.8"/>
          <Constant key="Parameter_379" name="Km_A" value="0.0223"/>
          <Constant key="Parameter_372" name="kcat_PA" value="129.1"/>
          <Constant key="Parameter_370" name="Km_PA" value="0.059"/>
          <Constant key="Parameter_376" name="Km_B" value="0.0677"/>
          <Constant key="Parameter_381" name="Km_PB" value="0.502"/>
          <Constant key="Parameter_377" name="E_T_NMNAT" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_379"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_376"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_370"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_381"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Parameter_369"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_372"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_380"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="NMNAT1-NaMN[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.18"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/16118205"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/17402747"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_371" name="scaling" value="0.001"/>
          <Constant key="Parameter_368" name="kcat_A" value="42.9"/>
          <Constant key="Parameter_367" name="Km_A" value="0.0677"/>
          <Constant key="Parameter_358" name="kcat_PA" value="103.8"/>
          <Constant key="Parameter_360" name="Km_PA" value="0.502"/>
          <Constant key="Parameter_361" name="Km_B" value="22.3"/>
          <Constant key="Parameter_357" name="Km_PB" value="0.059"/>
          <Constant key="Parameter_359" name="E_T_NMNAT" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Parameter_367"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Parameter_361"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Parameter_360"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_357"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_368"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_358"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_371"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="NADS[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/6.3.5.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/4340699"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_363" name="E_T" value="10"/>
          <Constant key="Parameter_365" name="turnover" value="21"/>
          <Constant key="Parameter_366" name="scaling" value="0.001"/>
          <Constant key="Parameter_362" name="Km" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_363"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Parameter_362"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Parameter_366"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_365"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="NT5-NMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.1.3.5"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/26385918"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM and Kcat for CN-III</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_364" name="ET" value="10"/>
          <Constant key="Parameter_343" name="scaling" value="0.001"/>
          <Constant key="Parameter_342" name="kcat" value="0.5"/>
          <Constant key="Parameter_355" name="Km" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Parameter_364"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Parameter_355"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_342"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_343"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="PNP-NR[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/9030766"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/10.1016/S0163-7258(00)00097-8"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_319" name="E_T" value="10"/>
          <Constant key="Parameter_352" name="turnover" value="40"/>
          <Constant key="Parameter_325" name="scaling" value="0.001"/>
          <Constant key="Parameter_324" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_319"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_324"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Parameter_325"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Parameter_352"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="NNMT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.1.1.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/brenda/441255"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/8182091"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/2963591"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_341" name="ET" value="10"/>
          <Constant key="Parameter_356" name="scaling" value="0.001"/>
          <Constant key="Parameter_348" name="Kcat" value="8.1"/>
          <Constant key="Parameter_339" name="Ki" value="0.06"/>
          <Constant key="Parameter_354" name="Kma" value="0.0018"/>
          <Constant key="Parameter_340" name="Kmb" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_341"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_348"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_339"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Parameter_354"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_340"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Parameter_356"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Nam-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_349" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="NT5-NaMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/26385918"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and Kcat from CN-II</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_345" name="ET" value="10"/>
          <Constant key="Parameter_350" name="scaling" value="0.001"/>
          <Constant key="Parameter_346" name="kcat" value="2.8"/>
          <Constant key="Parameter_347" name="Km" value="3.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Parameter_345"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_347"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_346"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_350"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="SIRT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.5.1.-"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/10.1021/bi049592e"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_344" name="ET" value="10"/>
          <Constant key="Parameter_322" name="scaling" value="0.001"/>
          <Constant key="Parameter_353" name="Kcat" value="0.67"/>
          <Constant key="Parameter_351" name="Km" value="0.029"/>
          <Constant key="Parameter_326" name="Ki" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Parameter_344"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Parameter_353"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Parameter_326"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Parameter_351"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Parameter_322"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="NAD-consumption without Nam inhibition[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T14:33:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_320" name="ET" value="10"/>
          <Constant key="Parameter_321" name="scaling" value="0.001"/>
          <Constant key="Parameter_333" name="kcat" value="1"/>
          <Constant key="Parameter_329" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Parameter_320"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_329"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_333"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_321"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="NADA[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/22229411"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.5.1.19"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_332" name="ET" value="0"/>
          <Constant key="Parameter_327" name="scaling" value="0.001"/>
          <Constant key="Parameter_323" name="Kcat" value="0.69"/>
          <Constant key="Parameter_331" name="Km" value="0.009"/>
          <Constant key="Parameter_328" name="Ki" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Parameter_332"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Parameter_323"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Parameter_328"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Parameter_331"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Parameter_327"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="NAM import[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_330" name="Nam_transporter" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="NAMPT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.12"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/18823127"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_335" name="ET" value="400"/>
          <Constant key="Parameter_337" name="scaling" value="0.001"/>
          <Constant key="Parameter_338" name="Ki" value="0.0021"/>
          <Constant key="Parameter_334" name="Kcat_NamPRT" value="0.0077"/>
          <Constant key="Parameter_336" name="Km_NamPRT" value="5e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Parameter_335"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_338"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Parameter_337"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="NAR-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_317" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="NA-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_315" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="NAD-binding[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T15:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_314" name="k1" value="100"/>
          <Constant key="Parameter_318" name="k2" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_314"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_318"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="NRK1-NaMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.173"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/19027704"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol for NMN</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_316" name="ET" value="10"/>
          <Constant key="Parameter_311" name="scaling" value="0.001"/>
          <Constant key="Parameter_310" name="kcat" value="0.23"/>
          <Constant key="Parameter_309" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Parameter_316"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Parameter_309"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_310"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_311"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="PNP-NAR[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/9030766"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Parameter have to be adjusted for NAR...currently NR affinities are used</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_313" name="E_T" value="10"/>
          <Constant key="Parameter_312" name="turnover" value="40"/>
          <Constant key="Parameter_308" name="scaling" value="0.001"/>
          <Constant key="Parameter_306" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_313"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_306"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_308"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Parameter_312"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="NR-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_307" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="NRK1-NMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/19027704"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_305" name="ET" value="10"/>
          <Constant key="Parameter_304" name="scaling" value="0.001"/>
          <Constant key="Parameter_303" name="kcat" value="0.23"/>
          <Constant key="Parameter_302" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Parameter_305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_302"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_303"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_304"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="NMN-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_301" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="NAPRT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.11"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/18823127"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_300" name="E_T" value="10"/>
          <Constant key="Parameter_299" name="turnover" value="3.3"/>
          <Constant key="Parameter_298" name="scaling" value="0.001"/>
          <Constant key="Parameter_297" name="Km" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Parameter_300"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Parameter_298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Parameter_299"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="NMNAT1-NMN[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.18"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/16118205"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/17402747"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_296" name="scaling" value="0.001"/>
          <Constant key="Parameter_294" name="kcat_A" value="53.8"/>
          <Constant key="Parameter_295" name="Km_A" value="0.0223"/>
          <Constant key="Parameter_292" name="kcat_PA" value="129.1"/>
          <Constant key="Parameter_293" name="Km_PA" value="0.059"/>
          <Constant key="Parameter_286" name="Km_B" value="0.0677"/>
          <Constant key="Parameter_287" name="Km_PB" value="0.502"/>
          <Constant key="Parameter_289" name="E_T_NMNAT" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Parameter_295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Parameter_286"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Parameter_293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Parameter_287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Parameter_294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Parameter_292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Parameter_296"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="NMNAT1-NaMN[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.7.18"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/16118205"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/17402747"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/isbn/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_82" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_288" name="scaling" value="0.001"/>
          <Constant key="Parameter_291" name="kcat_A" value="42.9"/>
          <Constant key="Parameter_290" name="Km_A" value="0.0677"/>
          <Constant key="Parameter_285" name="kcat_PA" value="103.8"/>
          <Constant key="Parameter_284" name="Km_PA" value="0.502"/>
          <Constant key="Parameter_283" name="Km_B" value="22.3"/>
          <Constant key="Parameter_282" name="Km_PB" value="0.059"/>
          <Constant key="Parameter_277" name="E_T_NMNAT" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Parameter_290"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Parameter_283"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Parameter_284"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Parameter_282"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Parameter_291"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Parameter_285"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Parameter_288"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="NADS[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/6.3.5.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/4340699"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_82" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_94" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_280" name="E_T" value="10"/>
          <Constant key="Parameter_278" name="turnover" value="21"/>
          <Constant key="Parameter_279" name="scaling" value="0.001"/>
          <Constant key="Parameter_281" name="Km" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Parameter_280"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_281"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Parameter_279"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Parameter_278"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="NT5-NMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.1.3.5"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/26385918"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>KM and Kcat for CN-III</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_86" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_402" name="ET" value="10"/>
          <Constant key="Parameter_403" name="scaling" value="0.001"/>
          <Constant key="Parameter_404" name="kcat" value="0.5"/>
          <Constant key="Parameter_409" name="Km" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Parameter_402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Parameter_409"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Parameter_404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Parameter_403"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="PNP-NR[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/10.1016/S0163-7258(00)00097-8"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/9030766"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_400" name="E_T" value="10"/>
          <Constant key="Parameter_407" name="turnover" value="40"/>
          <Constant key="Parameter_408" name="scaling" value="0.001"/>
          <Constant key="Parameter_406" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Parameter_400"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Parameter_406"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Parameter_408"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Parameter_407"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="Nam-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_401" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="NT5-NaMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/26385918"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Km and Kcat from CN-II</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_88" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_405" name="ET" value="10"/>
          <Constant key="Parameter_421" name="scaling" value="0.001"/>
          <Constant key="Parameter_423" name="kcat" value="2.8"/>
          <Constant key="Parameter_424" name="Km" value="3.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Parameter_405"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Parameter_424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Parameter_423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Parameter_421"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="SIRT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.5.1.-"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/10.1021/bi049592e"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_420" name="ET" value="10"/>
          <Constant key="Parameter_422" name="scaling" value="0.001"/>
          <Constant key="Parameter_419" name="Kcat" value="0.67"/>
          <Constant key="Parameter_418" name="Km" value="0.029"/>
          <Constant key="Parameter_414" name="Ki" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Parameter_419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Parameter_414"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Parameter_418"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Parameter_422"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="NAD-consumption without Nam inhibition[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T14:33:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_412" name="ET" value="10"/>
          <Constant key="Parameter_411" name="scaling" value="0.001"/>
          <Constant key="Parameter_417" name="kcat" value="1"/>
          <Constant key="Parameter_415" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Parameter_412"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Parameter_415"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Parameter_417"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Parameter_411"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="NADA[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/doi/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/22229411"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isPartOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/3.5.1.19"/>
      </rdf:Bag>
    </CopasiMT:isPartOf>
    <CopasiMT:unknown rdf:resource="http://identifiers.org/pubmed/22229411"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_416" name="ET" value="400"/>
          <Constant key="Parameter_413" name="scaling" value="0.001"/>
          <Constant key="Parameter_410" name="Kcat" value="0.69"/>
          <Constant key="Parameter_399" name="Km" value="0.009"/>
          <Constant key="Parameter_398" name="Ki" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Parameter_416"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Parameter_410"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Parameter_398"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Parameter_399"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Parameter_413"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="NAM import[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_273" name="Nam_transporter" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="NAMPT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.12"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/18823127"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_90" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_274" name="ET" value="0"/>
          <Constant key="Parameter_276" name="scaling" value="0.001"/>
          <Constant key="Parameter_275" name="Ki" value="0.0021"/>
          <Constant key="Parameter_269" name="Kcat_NamPRT" value="0.0077"/>
          <Constant key="Parameter_271" name="Km_NamPRT" value="5e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Parameter_274"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Parameter_275"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Parameter_276"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="NAR-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_272" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="NA-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_268" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="NAD-binding[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T15:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_270" name="k1" value="100"/>
          <Constant key="Parameter_267" name="k2" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_270"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_267"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="NRK1-NaMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.7.1.173"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/19027704"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol for NMN</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_266" name="ET" value="10"/>
          <Constant key="Parameter_262" name="scaling" value="0.001"/>
          <Constant key="Parameter_260" name="kcat" value="0.23"/>
          <Constant key="Parameter_259" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Parameter_266"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Parameter_259"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Parameter_260"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="Parameter_262"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="PNP-NAR[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ec-code/2.4.2.1"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/9030766"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/isbn/"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Parameter have to be adjusted for NAR...currently NR affinities are used</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_92" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_265" name="E_T" value="10"/>
          <Constant key="Parameter_263" name="turnover" value="40"/>
          <Constant key="Parameter_264" name="scaling" value="0.001"/>
          <Constant key="Parameter_261" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Parameter_265"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Parameter_261"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Parameter_264"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Parameter_263"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="NR-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_258" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="NRK1-NMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <CopasiMT:isDescribedBy>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/19027704"/>
      </rdf:Bag>
    </CopasiMT:isDescribedBy>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol</pre>
  </body>

        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_250" name="ET" value="10"/>
          <Constant key="Parameter_251" name="scaling" value="0.001"/>
          <Constant key="Parameter_252" name="kcat" value="0.23"/>
          <Constant key="Parameter_257" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Parameter_250"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="Parameter_257"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="Parameter_252"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Parameter_251"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="NAD-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_248" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="NAD-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_255" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="Nam uptake" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls</pre>
  </body>

        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_256" name="v" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[Cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="Parameter_256"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[Cytosol]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment]" value="0.001" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment]" value="0.001" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[Gln]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[DNA_damage]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[DNA_ADPR]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NADbound]" value="6.0221417900000013e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[H3_ac]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[H3_deac]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[Glu]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NR]" value="6.0221417900000013e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[Pi]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NaAD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[1-methyl-NAM]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[H2O]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[PPi]" value="7226570148000062" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[AMP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NMN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NaMN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[ADP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[SAM]" value="48177134320000008" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[SAH]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NAM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NAD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[NAR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[PRPP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NamPT_compartment],Vector=Metabolites[ATP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[Gln]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[DNA_damage]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[DNA_ADPR]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NADbound]" value="6.0221417900000013e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[H3_ac]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[H3_deac]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[Glu]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NR]" value="6.0221417900000013e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[Pi]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NaAD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[H2O]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[PPi]" value="7226570148000001" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[AMP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NMN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NaMN]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[ADP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NAM]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NAD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[NAR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[PRPP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[NADA_compartment],Vector=Metabolites[ATP]" value="6.0221417900000013e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Compartments[Cytosol],Vector=Metabolites[Nam_ex]" value="6.0221417900000005e+20" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment]" value="2.8e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment]" value="2.8e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Nam transporter]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Km NamPRT]" value="5.0000000000000004e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Kcat NamPRT]" value="0.0077000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[cell devision all]" value="2.8e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[E_T NMNAT]" value="10" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMN-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMN-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="3.2999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_A" value="53.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.0223" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="129.09999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_B" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=E_T_NMNAT" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[E_T NMNAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_A" value="42.899999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="103.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_B" value="22.300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=E_T_NMNAT" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[E_T NMNAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="8.0999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Kma" value="0.0018" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Kmb" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="2.7999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="3.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.67000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.029000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.68999999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAM import\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAM import\[0\]],ParameterGroup=Parameters,Parameter=Nam_transporter" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="400" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.0020999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Kcat_NamPRT" value="0.0077000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Kcat NamPRT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Km_NamPRT" value="5.0000000000000004e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Km NamPRT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAR-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAR-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NA-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NA-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[0\]],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[0\]],ParameterGroup=Parameters,Parameter=k2" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NR-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NR-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMN-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMN-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="3.2999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_A" value="53.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.0223" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="129.09999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_B" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=E_T_NMNAT" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[E_T NMNAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_A" value="42.899999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="103.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_B" value="22.300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=E_T_NMNAT" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[E_T NMNAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="2.7999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="3.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.67000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.029000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=ET" value="400" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.68999999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAM import\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAM import\[1\]],ParameterGroup=Parameters,Parameter=Nam_transporter" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.0020999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Kcat_NamPRT" value="0.0077000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Kcat NamPRT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Km_NamPRT" value="5.0000000000000004e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[Km NamPRT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAR-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAR-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NA-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NA-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[1\]],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-binding\[1\]],ParameterGroup=Parameters,Parameter=k2" value="10" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NR-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NR-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NamPT_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[NAD-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Values[celldivision_rate_NADA_compartment],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam uptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Heiland2019 - Two compartment model of NAD biosynthesis and consumption_1,Vector=Reactions[Nam uptake],ParameterGroup=Parameters,Parameter=v" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_82"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_94"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000005e+20 0 0 0 0 6.0221417900000013e+17 6.0221417900000013e+17 2.8e-05 2.8e-05 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 0 6.0221417900000013e+17 7226570148000062 6.0221417900000013e+17 6.0221417900000013e+17 48177134320000008 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 7226570148000001 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 6.0221417900000013e+17 1 0.001 0.001 100 5.0000000000000004e-06 0.0077000000000000002 2.8e-05 10 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_30" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_28" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_27" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_26" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_33" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_32" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_21" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_30"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_19" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_21" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="data_S3_competition_model.xml">
    <SBMLMap SBMLid="ADP_NADA_compartment" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="ADP_NamPT_compartment" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="AMP_NADA_compartment" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="AMP_NamPT_compartment" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="ATP_NADA_compartment" COPASIkey="Metabolite_94"/>
    <SBMLMap SBMLid="ATP_NamPT_compartment" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="Cytosol" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="DNA_ADPR_NADA_compartment" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="DNA_ADPR_NamPT_compartment" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="DNA_damage_NADA_compartment" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="DNA_damage_NamPT_compartment" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="E_T_NMNAT" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Gln_NADA_compartment" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="Gln_NamPT_compartment" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="Glu_NADA_compartment" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="Glu_NamPT_compartment" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="H2O_NADA_compartment" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="H2O_NamPT_compartment" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="H3_ac_NADA_compartment" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="H3_ac_NamPT_compartment" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="H3_deac_NADA_compartment" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="H3_deac_NamPT_compartment" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Kcat_NamPRT" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Km_NamPRT" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="NADA_0" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="NADA_1" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="NADA_compartment" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="NADS_0" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="NADS_1" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="NAD_NADA_compartment" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="NAD_NamPT_compartment" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="NAD_binding_0" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="NAD_binding_1" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="NAD_consumption_without_Nam_inhibition_0" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="NAD_consumption_without_Nam_inhibition_1" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="NAD_efflux_0" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="NAD_efflux_1" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="NADbound_NADA_compartment" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="NADbound_NamPT_compartment" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="NAMPT_0" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="NAMPT_1" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="NAM_NADA_compartment" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="NAM_NamPT_compartment" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="NAM_import_0" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="NAM_import_1" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="NAPRT_0" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="NAPRT_1" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="NAR_NADA_compartment" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="NAR_NamPT_compartment" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="NAR_efflux_0" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="NAR_efflux_1" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="NA_NADA_compartment" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="NA_NamPT_compartment" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="NA_efflux_0" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="NA_efflux_1" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="NMNAT1_NMN_0" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="NMNAT1_NMN_1" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="NMNAT1_NaMN_0" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="NMNAT1_NaMN_1" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="NMN_NADA_compartment" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="NMN_NamPT_compartment" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="NMN_efflux_0" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="NMN_efflux_1" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="NNMT_0" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="NRK1_NMN_0" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="NRK1_NMN_1" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="NRK1_NaMN_0" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="NRK1_NaMN_1" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="NR_NADA_compartment" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="NR_NamPT_compartment" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="NR_efflux_0" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="NR_efflux_1" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="NT5_NMN_0" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="NT5_NMN_1" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="NT5_NaMN_0" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="NT5_NaMN_1" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="NaAD_NADA_compartment" COPASIkey="Metabolite_82"/>
    <SBMLMap SBMLid="NaAD_NamPT_compartment" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="NaMN_NADA_compartment" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="NaMN_NamPT_compartment" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="NamPT_compartment" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="Nam_efflux_0" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="Nam_efflux_1" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="Nam_ex" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="Nam_transporter" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Nam_uptake" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="PNP_NAR_0" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="PNP_NAR_1" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="PNP_NR_0" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="PNP_NR_1" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="PPi_NADA_compartment" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="PPi_NamPT_compartment" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="PRPP_NADA_compartment" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="PRPP_NamPT_compartment" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="Pi_NADA_compartment" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="Pi_NamPT_compartment" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="SAH_NamPT_compartment" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="SAM_NamPT_compartment" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="SIRT_0" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="SIRT_1" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="_1_methyl_NAM_NamPT_compartment" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="cell_devision_all" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="cell_division_rate" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="celldivision_pathogen" COPASIkey="ModelValue_8"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
