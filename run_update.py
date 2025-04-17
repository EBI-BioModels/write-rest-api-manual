# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 16:14:37 2024

@authors:
    Lucian Smith
    Tung Nguyen
"""

import os, sys
import json
import requests
import uuid
import rdflib
import Bio.Entrez

# final_dir = "final/"
final_dir = r"C:\Users\Lucian\Desktop\temp-biomodels\final/"
masters_filename = "all_masters.json"
dev_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"
prod_biomodels = "https://www.ebi.ac.uk/biomodels/"

AUTH_FILE = "credentials/credentials.json"
# root_biomodels = "http://localhost:8080/biomodels/"

non_sbml2latex_pdfs = ["Text_S1.pdf", "journal.pcbi.1002815-1.pdf", "BMD586-7_annotations.pdf", "MAP_MEMOTE.pdf", ]

manual_descriptions = {"BIOMD0000000010.png": "Manually generated Reaction graph (PNG)",
                       "BIOMD0000000010.svg": "Manually generated Reaction graph (SVG)",
                       "PC_10.xml": "SBML variant of base model",
                       "PC_100.xml": "SBML variant of base model",
                       "PSC_1.xml": "SBML variant of base model",
                       "PSC_100.xml": "SBML variant of base model",
                       "README.txt": "Description of model variants and original SED-ML files.",
                       "journal.pcbi.1002815-1.pdf": "Original journal article.",
                       "Text_S1.pdf": "Supplemental information from journal article.",
                       "MAP_FROG.zip": "FROG analysis in json and tsv files.",
                       "MAP_MEMOTE.pdf": "PDF of MEMOTE report of SBML model.",
                       }

renamed_files = {"BIOMD0000000683.cps": "MODEL1006230062.cps",
                 "BIOMD0000000683.xml": "MODEL1006230062.cps",
                 "Weis2014-generate_plot.r": "Weis2014-generate_plot.R",
                 'BIOMD0000000582-Potterswheel.m': 'BIOMD0000000582-Potterswheel.txt',
                 'Fig3a.png': "Fig3a''.png",
                 'Fig.1B.png': "Fig.1'.png",
                 'Fig.1A.png': "Fig.1.png",
                 'Fig.3.png': "Fig.3'.png",
                 'Fig.2.png': "Fig.2'.png",
                 'reproduced figure.png': 'reproduced figure.PNG',
                 'Fig 3a - CAR-T cells.png': 'Fig 3a (CAR-T cells).png',
                 'Fig 3a - tumour cells.png': 'Fig 3a (tumour cells).png',
                 'Fig 3b - CAR-T cells.png': 'Fig 3b (CAR-T cells).png',
                 'Fig 3b - tumour cells.png': 'Fig 3b (tumour cells).png',
                 'Fig 4a - CAR-T cells.png': 'Fig 4a (CAR-T cells).png',
                 'Fig 4a - tumour cells.png': 'Fig 4a (tumour cells).png',
                 'Fig 4b - CAR-T cells.png': 'Fig 4b (CAR-T cells).png',
                 'Fig 4b - tumour cells.png': 'Fig 4b (tumour cells).png',
                 'Fig 4c - CAR-T cells.png': 'Fig 4c (CAR-T cells).png',
                 'Fig 4c - tumour cells.png': 'Fig 4c (tumour cells).png',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 1 - a and c.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 1 (a, c).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 1 - b and d.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 1 (b, d).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 3a.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 3(a).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 3b.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 3(b).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 4a.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 4(a).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 4b.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 4(b).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 4c.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 4(c).sedml',
                 'Leon-Triana2021 - eqs 1 and 2 - fig 5a.sedml': 'Leon-Triana2021 (eqs 1 and 2) - fig 5(a).sedml',
                 'Leon-Triana2021 - eqs 1 and 2.cps': 'Leon-Triana2021 (eqs 1 and 2).cps',
                 'Leon-Triana2021 - eqs 1 and 2.xml': 'Leon-Triana2021 (eqs 1 and 2).xml',
                 'Leon-Triana2021 Fig 5a - CAR T-cells.png': 'Leon-Triana2021 Fig 5a (CAR T-cells).png',
                 'Leon-Triana2021 Fig 5a - tumour cells.png': 'Leon-Triana2021 Fig 5a (tumour cells).png',
                 'Zake2021_Metformin_Mice_PO.cps': 'Zake2021_Metformin+Mice+PO.cps',
                 'Zake2021_Metformin_Mice_PO.sedml': 'Zake2021_Metformin+Mice+PO.sedml',
                 'Zake2021_Metformin_Mice_PO.xml': 'Zake2021_Metformin+Mice+PO.xml',
                 'Zake2021_Metformin_Human_single_PO_dose.cps': 'Zake2021_Metformin+Human+single+PO+dose.cps',
                 'Zake2021_Metformin_Human_single_PO_dose.sedml': 'Zake2021_Metformin+Human+single+PO+dose.sedml',
                 'Zake2021_Metformin_Human_single_PO_dose.xml': 'Zake2021_Metformin+Human+single+PO+dose.xml',
                 'Zake2021_Metformin_Human_multiple_PO_dose.cps': 'Zake2021_Metformin+Human+multiple+PO+dose.cps',
                 'Zake2021_Metformin_Human_multiple_PO_dose.sed.ml': 'Zake2021_Metformin+Human+multiple+PO+dose.sedml',
                 'Zake2021_Metformin_Human_multiple_PO_dose.xml': 'Zake2021_Metformin+Human+multiple+PO+dose.xml',
                 'Zake2021_Metformin_Mice_IV.cps': 'Zake2021_Metformin+Mice+IV.cps',
                 'Zake2021_Metformin_Mice_IV.sedml': 'Zake2021_Metformin+Mice+IV.sedml',
                 'Zake2021_Metformin_Mice_IV.xml': 'Zake2021_Metformin+Mice+IV.xml',
                 'Proctor2017_model1.cps': 'Proctoe2017_model1.cps',
                 "Baker2017_Fig14.xml": "Baker2017_Fig14..xml",
                 "Lio2012_Modelling osteomyelitis_Control Model.xml": "Liò2012_Modelling osteomyelitis_Control Model.xml",
                 "Lio2012_Modelling osteomyelitis_Control Model.cps": "Liò2012_Modelling osteomyelitis_Control Model.cps",
                 "Lio2012_Modelling osteomyelitis_Control Model.sedml": "Liò2012_Modelling osteomyelitis_Control Model.sedml",
                 "Phillips2007_Original.xml": "Phillips2007_Orignal.xml",
                 "BIOMD0000000005.sedml": "BIOMD0000000005_SED-ML.xml",
                 "BIOMD0000000459.sedml": "BIOMD0000000459-SEDML.xml",
                 "BIOMD0000000460.sedml": "BIOMD0000000460-SEDML.xml",
                 "BIOMD0000000461.sedml": "BIOMD0000000461-SEDML.xml",
                 "BIOMD0000000618.sedml": "BIOMD0000000618_SED-ML.xml",
                 "BIOMD0000000627.sedml": "BIOMD0000000627_SED-ML.xml",
                 }

other_abstracts = {
    "10.1016/j.jmaa.2008.05.060": "We perform a qualitative analysis of a differential equation that was originally introduced by Stortelder, Hemker and Hemker to model the formation of thrombin, and discuss issues of controllability and stabilizability. Results include a general proof of convergence to equilibrium, and of local exponential stabilizability.",
    "10.1089/ind.2013.0003": "Genome-scale kinetic models of metabolism are important for rational design of the metabolic engineering required for industrial biotechnology applications. They allow one to predict the alterations needed to optimize the flux or yield of the compounds of interest, while keeping the other functions of the host organism to a minimal, but essential, level. We define a pipeline for the generation of genome-scale kinetic models from reconstruction data. To build such a model, inputs of all concentrations, fluxes, rate laws, and kinetic parameters are required. However, we propose typical estimates for these numbers when experimental data are not available. While little data are required to produce the model, the pipeline ensures consistency with any known flux or concentration data, or any kinetic constants. We apply the method to create genome-scale models of Escherichia coli and Saccharomyces cerevisiae. We go on to show how these may be used to expand a detailed model of yeast glycolysis to the genome level.",
    "10.3182/20120829-3-hu-2029.00029": "The understanding of how influenza virus infection activates the immune system is crucial to designing prophylactic and therapeutic strategies against the infection. Nevertheless, the immune response to influenza virus infection is complex and remains largely unknown. In this paper we focus in the innate immune response to influenza virus using a mathematical model, based on interferon-induced resistance to infection of respiratory epithelial cells and the clearance of infected cells by natural killers. Simulation results show the importance of IFN-I to prevent new infections in epithelial cells and to stop the viral explosion during the first two days after infection. Nevertheless, natural killers response might be the most relevant for the first depletion in viral load due to the elimination of infected cells. Based on the reproductive number, the innate immune response is important to control the infection, although it would not be enough to clear completely the virus. The effective coordination between innate and adaptive immune response is essential for the virus eradication.",
    "10.1016/j.physa.2017.08.139": "A novel SEIS epidemic model with the impact of media is introduced. By analyzing the characteristic equation of equilibrium, the basic reproduction number is obtained and the stability of the steady states is proved. The occurrence of a forward, backward and Hopf bifurcation is derived. Numerical simulations and sensitivity analysis are performed. Our results manifest that media can regard as a good indicator in controlling the emergence and spread of the epidemic disease.",
    "10.1016/j.idm.2018.03.004": "Due to the outbreaks of Highly Pathogenic Avian Influenza A (HPAI) H5N6 in the Philippines (particularly in Pampanga and Nueva Ecija) in August 2017, there has been an increase in the need to cull the domestic birds to control the spread of the infection. However, this control method poses a negative impact on the poultry industry. In addition, the pathogenicity and transmissibility of the H5N6 in both the birds and the humans remain largely unknown which call for the necessity to develop more strategic control methods for the virus. In this study, we constructed a mathematical model for the bilinear and half-saturated incidence to compare their corresponding effect on transmission dynamics of H5N6. The simulations of half-saturated incidence model were similar to what occurred during the H5N6 outbreak (2017) in the Philippines. Instead of culling the birds, we implemented other control strategies such as non-medicinal (personal protection and poultry isolation) and medicinal (poultry vaccination) ways to prevent, reduce, and control the rate of the H5N6 virus transmission. Among the proposed control strategies, we have shown that the poultry isolation strategy is still the most effective in reducing the infected birds.",
    "10.3390/math8081285": "Changes in diet are heavily associated with high mortality rates in several types of cancer. In this paper, a new mathematical model of tumor cells growth is established to dynamically demonstrate the effects of abnormal cell progression on the cells affected by the tumor in terms of the immune system’s functionality and normal cells’ dynamic growth. This model is called the normal-tumor-immune-unhealthy diet model (NTIUNHDM) and governed by a system of ordinary differential equations. In the NTIUNHDM, there are three main populations normal cells, tumor cell and immune cells. The model is discussed analytically and numerically by utilizing a fourth-order Runge–Kutta method. The dynamic behavior of the NTIUNHDM is discussed by analyzing the stability of the system at various equilibrium points and the Mathematica software is used to simulate the model. From analysis and simulation of the NTIUNHDM, it can be deduced that instability of the response stage, due to a weak immune system, is classified as one of the main reasons for the coexistence of abnormal cells and normal cells. Additionally, it is obvious that the NTIUNHDM has only one stable case when abnormal cells begin progressing into early stages of tumor cells such that the immune cells are generated once. Thus, early boosting of the immune system might contribute to reducing the risk of cancer.",
    "10.1038/s41598-020-62526-6": "Biofilms are composed of microorganisms attached to a solid surface or floating on top of a liquid surface. They pose challenges in the field of medicine but can also have useful applications in industry. Regulation of biofilm growth is complex and still largely elusive. Oscillations are thought to be advantageous for biofilms to cope with nutrient starvation and chemical attacks. Recently, a minimal mathematical model has been employed to describe the oscillations in Bacillus subtilis biofilms. In this paper, we investigate four different modifications to that minimal model in order to better understand the oscillations in biofilms. Our first modification is towards making a gradient of metabolites from the center of the biofilm to the periphery. We find that it does not improve the model and is therefore, unnecessary. We then use realistic Michaelis-Menten kinetics to replace the highly simple mass-action kinetics for one of the reactions. Further, we use reversible reactions to mimic the diffusion in biofilms. As the final modification, we check the combined effect of using Michaelis-Menten kinetics and reversible reactions on the model behavior. We find that these two modifications alone or in combination improve the description of the biological scenario.",
    "10.1038/s41598-018-20348-7": "We have recently demonstrated that the rate-limiting enzymes in human glucose metabolism organize into cytoplasmic clusters to form a multienzyme complex, the glucosome, in at least three different sizes. Quantitative high-content imaging data support a hypothesis that the glucosome clusters regulate the direction of glucose flux between energy metabolism and building block biosynthesis in a cluster size-dependent manner. However, direct measurement of their functional contributions to cellular metabolism at subcellular levels has remained challenging. In this work, we develop a mathematical model using a system of ordinary differential equations, in which the association of the rate-limiting enzymes into multienzyme complexes is included as an essential element. We then demonstrate that our mathematical model provides a quantitative principle to simulate glucose flux at both subcellular and population levels in human cancer cells. Lastly, we use the model to simulate 2-deoxyglucose-mediated alteration of glucose flux in a population level based on subcellular high-content imaging data. Collectively, we introduce a new mathematical model for human glucose metabolism, which promotes our understanding of functional roles of differently sized multienzyme complexes in both single-cell and population levels.",
    "10.1016/j.jtbi.2021.110685": "Haematopoiesis is the process of generation of blood cells. Lymphopoiesis generates lymphocytes, the cells in charge of the adaptive immune response. Disruptions of this process are associated with diseases like leukaemia, which is especially incident in children. The characteristics of self-regulation of this process make them suitable for a mathematical study.<p></p><p></p>In this paper we develop mathematical models of lymphopoiesis using currently available data. We do this by drawing inspiration from existing structured models of cell lineage development and integrating them with paediatric bone marrow data, with special focus on regulatory mechanisms. A formal analysis of the models is carried out, giving steady states and their stability conditions. We use this analysis to obtain biologically relevant regions of the parameter space and to understand the dynamical behaviour of B-cell renovation. Finally, we use numerical simulations to obtain further insight into the influence of proliferation and maturation rates on the reconstitution of the cells in the B line. We conclude that a model including feedback regulation of cell proliferation represents a biologically plausible depiction for B-cell reconstitution in bone marrow. Research into haematological disorders could benefit from a precise dynamical description of B lymphopoiesis.",
    "10.1016/j.jtbi.2020.110252": "The objective of this study is to evaluate the role of cooperativity, captured by the Hill coefficient, in a minimal mathematical model describing the interactions between p53 and miR-34a. The model equations are analyzed for negative, none and normal cooperativity using a specific version of bifurcation theory and they are solved numerically. Special attention is paid to the sign of so-called first Lyapunov value. Interpretations of the results are given, both according to dynamic theory and in biological terms. In terms of cell signaling, we propose the hypothesis that when the outgoing signal of a system spends a physiologically significant amount of time outside of its equilibrium state, then the value of that signal can be sampled at any point along the trajectory towards that equilibrium and indeed, at multiple points. Coupled with non-linear behavior, such as that caused by cooperativity, this feature can account for a complex and varied response, which p53 is known for. From dynamical point of view, we found that when cooperativity is negative, the system has only one stable equilibrium point. In the absence of cooperativity, there is a single unstable equilibrium point with a critical boundary of stability. In the case with normal cooperativity, the system can have one, two, or three steady states with both, bi-stability and bi-instability occurring.",
    "10.1016/j.cub.2022.04.016": "In 1996, Kim Nasmyth1 proposed that the eukaryotic cell cycle is an alternating sequence of transitions from G1 to S-G2-M and back again. These two phases correlate to high activity of cyclin-dependent kinases (CDKs) that trigger S-G2-M events and CDK antagonists that stabilize G1 phase. We associated these “alternative phases” with the coexistence of two stable steady states of the biochemical reactions among CDKs and their antagonists. Transitions between these steady states (G1-to-S and M-to-G1) are driven by “helper” proteins. The fact that the transitions are irreversible is guaranteed by a “latching” property of the molecular switches, as we have argued in previous publications. Here, we show that if the latch is broken, then the biochemical reactions can swing back-and-forth across the transitions; either G1-S-G1-S … (periodic DNA replication without mitosis or cell division) or M-(G1)-M-(G1) … (periodic Cdc14 release, without fully exiting mitosis). Using mathematical modeling of the molecular control circuit in budding yeast, we provide a fresh account of aberrant cell cycles in mutant strains: endoreplication in the clb1-5Δ strain and periodic release and resequestration of Cdc14 (an “exit” phosphatase) in the CLB2kdΔ strain.7,8 In our opinion, these “endocycles” are not autonomous oscillatory modules that must be entrained by the CDK oscillator but rather inadvertent and deleterious oscillations that are normally suppressed by the CDK latching-gate mechanism.",
    "10.1016/j.jtbi.2004.11.011": "Caspases are thought to be important players in the execution process of apoptosis. Inhibitors of apoptosis (IAPs) are able to block caspases and therefore apoptosis. The fact that a subgroup of the IAP family inhibits active caspases implies that not each caspase activation necessarily leads to apoptosis. In such a scenario, however, processed and enzymically active caspases should somehow be removed. Indeed, IAP–caspase complexes covalently bind ubiquitin, resulting in degradation by the 26S proteasome. Following release from mitochondria, IAP antagonists (e.g. second mitochondrial activator of caspases (Smac)) inactivate IAPs. Moreover, although pro-apoptotic factors such as irradiation or anti-cancer drugs may release Smac from mitochondria in tumor cells, high cytoplasmic survivin and ML-IAP levels might be able to neutralize it and, consequently, IAPs would further be able to bind activated caspases. Here, we propose a simple mathematical model, describing the molecular interactions between Smac deactivators, Smac, IAPs, and caspase-3, including the requirements for both induction and prevention of apoptosis, respectively. In addition, we predict a novel mechanism of caspase-3 degradation that might be particularly relevant in long-living cells.",
    }

approach_to_name = {
    "ODE": "ordinary differential equation model",
    "DAE": 'differential algebraic equation model',
    "qual": 'logical model',
    "FBC": 'constraint-based model',
    "delay": 'delayed differential equation model',
    "MAMO_0000046": "ordinary differential equation model",
    "MAMO_0000090": "differential algebraic equation model",
    "MAMO_0000030": "logical model",
    "MAMO_0000009": "constraint-based model",
    "MAMO_0000089": "delayed differential equation model",
    "MAMO_0000203": "physiologically based pharmacokinetic model",
    "MAMO_0000003": "mathematical model",
    "MAMO_0000020": "pharmacodynamic model",
    "MAMO_0000038": "signalling network",
    "MAMO_0000028": "population model",
}

#Pull in the official list of 'template' SED-ML entries.
nosed_file = r"C:\Users\Lucian\Desktop\temp-biomodels\biosimulations_pipeline\noSED.txt"
nosed = []
f = open(nosed_file, "r")
for line in f:
    nosed.append(line.strip())
f.close()


def get_entrez_abstract(db, id):
    """ Get a record from an Entrez database

    Args:
        db (:obj:`str`): database such as `pmc` for PubMed Central
        id (:obj:`str`): id of the record
    """
    if not isinstance(id, str):
        raise TypeError('Id must be a string')
    handle = Bio.Entrez.efetch(db=db, id=id, retmode="xml")
    record = Bio.Entrez.read(handle)
    handle.close()
    if "Abstract" in record['PubmedArticle'][0]['MedlineCitation']['Article']:
        return record['PubmedArticle'][0]['MedlineCitation']['Article']['Abstract']['AbstractText'][0]
    elif id in other_abstracts:
        return other_abstracts[id]
    print("No abstract for pubmedid", id)
    return ""

    # try:
    #     records = list(Bio.Entrez.parse(handle))
    # except RuntimeError:
    #     raise ValueError('`{}` is not a valid id for a record of `{}`.'.format(id, db))
    # handle.close()
    # if len(records) != 1:
    #     raise ValueError('No record for `{}` from `{}` could be obtained.'.format(id, db))
    # return records[0]


def get_new_metadata(biomd_id, old_metadata, master, upload_prev):
    metadata = {}
    for key in ["name", "description", "publication", "submissionId", "publicationId", "format", "modellingApproach", ]:
        if key in old_metadata:
            metadata[key] = old_metadata[key]
        elif key == "description":
            g = rdflib.Graph()
            g.parse(r"C:\Users\Lucian\Desktop\temp-biomodels\final\\" + biomd_id + r"\metadata.rdf")
            # print(len(g))
            label = ""
            description = ""
            for subj, pred, obj in g:
                # Check if there is at least one triple in the Graph
                if pred == rdflib.term.URIRef("http://www.w3.org/2000/01/rdf-schema#label"):
                    label = str(obj)
            description = get_entrez_abstract('pubmed', old_metadata['publication']['accession'])
            if len(description) > 0:
                metadata[key] = label + "<p></p>\n<p></p>\n" + description
            else:
                metadata[key] = label
            # print(metadata[key])
        else:
            # print("Entry", biomd_id, "missing metadata for", key)
            assert (key == "modellingApproach")

    metadata[
        "readme_submission"] = "Curation updates for SED-ML and validity, from the Center for Reproducible Biomedical Modeling, via Lucian Smith."
    metadata["other_info"] = "SBML Model Format"
    metadata["isMetadataSubmission"] = False
    metadata["isAmend"] = upload_prev
    metadata["comment"] = "CRBM-sponsored manual and automated updates."
    # Add contributor role, check the role name using the following service
    # https://www(dev).ebi.ac.uk/biomodels/contributor/list
    metadata["contributorRole"] = "Curator"
    metadata["files"] = {"main": [], "additional": []}

    approach = ""
    if "modellingApproach" in metadata:
        approach = metadata["modellingApproach"]["accession"]
    if "MAMO" not in approach:
        approach = "ODE"
        with open(final_dir + "/" + biomd_id + "/" + master, encoding="utf-8") as f:
            line = f.read();
            if "MAMO_00" in line:
                pos = line.find("MAMO_00")
                approach = line[pos:pos + 12]
            elif 'fbc:' in line:
                approach = "FBC"
            elif "qual:" in line:
                approach = "qual"
            elif "algebraicRule" in line:
                approach = "DAE"
            elif "sbml/symbols/delay" in line:
                approach = "delay"
        metadata["modelling_approach"] = approach_to_name[approach]
        if "modellingApproach" in metadata:
            del metadata['modellingApproach']  #Unnecessary, but cleaner.

    # Now update all the files:
    oldfiles = {}
    for key in ["main", "additional"]:
        if key in old_metadata["files"]:
            for entry in old_metadata["files"][key]:
                oldfiles[entry["name"]] = entry["description"]

    newfiles = []
    for root, dirs, files in os.walk(final_dir + biomd_id):
        newfiles.extend(files)

    oldfiles_v2 = {}
    for file in oldfiles:
        if ":" in file:
            newname = file.replace(":", "_");
            oldfiles_v2[newname] = oldfiles[file]
        else:
            oldfiles_v2[file] = oldfiles[file]
    oldfiles = oldfiles_v2

    deletedFiles = oldfiles.copy()
    for filename in newfiles:
        if filename in oldfiles:
            entry = {"name": filename, "description": oldfiles[filename]}
            del deletedFiles[filename]
            # print("Transfering file:", biomd, filename)
        elif filename in renamed_files:
            entry = {"name": filename, "description": oldfiles[renamed_files[filename]]}
            # del deletedFiles[renamed_files[filename]]
        elif filename in manual_descriptions:
            entry = {"name": filename, "description": manual_descriptions[filename]}
        elif ".ode" in filename:
            entry = {"name": filename, "description": "Auto-generated ODE file for XPP."}
        elif "matlab.m" in filename:
            entry = {"name": filename, "description": "Auto-generated Matlab file."}
        elif "biopax2.owl" in filename:
            entry = {"name": filename, "description": "Auto-generated BioPAX (Level 2) file."}
        elif "biopax3.owl" in filename:
            entry = {"name": filename, "description": "Auto-generated BioPAX (Level 3) file."}
        elif "octave.m" in filename:
            entry = {"name": filename, "description": "Auto-generated Octave file."}
        elif ".m" in filename:
            entry = {"name": filename, "description": "Auto-generated Octave file."}
        elif ".sci" in filename:
            entry = {"name": filename, "description": "Auto-generated Scilab file."}
        elif ".vcml" in filename:
            entry = {"name": filename, "description": "Auto-generated VCML file."}
        elif "curation_image" in filename:
            entry = {"name": filename,
                     "description": "Reproduced figure(s) from original curation."}
        elif "curation_notes" in filename:
            entry = {"name": filename,
                     "description": "Notes from original curation (describes curation_image)."}
        elif "manifest.xml" in filename:
            entry = {"name": filename, "description": "Auto-generated manifest file for OMEX archives."}
        elif "metadata.rdf" in filename:
            entry = {"name": filename, "description": "Auto-generated annotation metadata file."}
        elif ".pdf" in filename and filename not in non_sbml2latex_pdfs and biomd_id < "BIOMD0000001047":
            entry = {"name": filename, "description": "Auto-generated summary PDF file from SBML2LaTeX."}
        else:
            # print("Adding file:", biomd, filename)
            entry = {"name": filename,
                     "description": "Auto-generated file from CRBM curation."}
            if "sedml" not in filename:
                print(filename, "not found: generic comment added.")

        #Always overwrite the SEDML file descriptions.
        if "sedml" in filename:
            if biomd_id in nosed:
                entry = {"name": filename, "description": "CRBM auto-generated \"template\" SED-ML file."}
            else:
                if filename in oldfiles and "auto" not in entry["description"] and "Auto" not in entry["description"]:
                    entry["description"] = entry["description"] + " (additionally CRBM-validated and adjusted)."
                elif filename in renamed_files:
                    entry["description"] = oldfiles[
                                               renamed_files[filename]] + " (Additionally CRBM-validated and adjusted.)"
                    entry["description"] = entry["description"].replace(
                        ", for example,\r\nby loading it into SED-ML Web Tools (http://sysbioapps.dyndns.org/SED-ML_Web_Tools/)",
                        "")
                    entry["description"] = entry["description"].replace(
                        ", by loading it into SED-ML Web Tools (http://sysbioapps.dyndns.org/SED-ML_Web_Tools/)", "")
                    # print(entry["description"])
                else:
                    entry = {"name": filename,
                             "description": "CRBM-processed SED-ML file, based on original COPASI save file export."}

        #Tag the correct file as 'master'.
        if filename == master:
            metadata["files"]["main"].append(entry)
        else:
            metadata["files"]["additional"].append(entry)

    for filename in deletedFiles:
        pass
        # print("Deleting file:", biomd, filename)

    if len(metadata["files"]["main"]) == 0:
        raise Exception("No 'main' file for entry " + biomd_id)

    return metadata


def upload_model_files(biomd_id, submission_folder, auth, metadata):
    upload = {
        "Authorization": "Bearer " + auth,
        "SubmissionFolder": submission_folder
    }
    params = {
        "format": "json"
    }
    new_files = []
    for root, dirs, files in os.walk(final_dir + biomd_id):
        new_files.extend(files)
    for filename in new_files:
        # print(filename)
        files = {"file": open(final_dir + biomd_id + "/" + filename, "rb")}
        ret = requests.post(prod_biomodels + "/services/upload", headers=upload, files=files)
        ret.raise_for_status()
        # print(ret.json())
    ret = requests.post(prod_biomodels + "api/submission/update/", headers=upload, params=params, json=metadata)
    ret.raise_for_status()
    # print(ret)


f = open(AUTH_FILE, "r")
credentials = json.load(f)
f.close()

# get_access_credentials = requests.post(
#     "https://www.ebi.ac.uk/biomodels/api/login", json = credentials)
# get_access_credentials.raise_for_status()

# access_token = get_access_credentials.json()["access_token"]
# print(access_token)

f = open(masters_filename, "r")
masters = json.load(f)
f.close()

for root, dirs, files in os.walk(final_dir):
    break

no_descriptions = [357, 360, 361, 363, 364, 365, 366, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 481, 482, 483,
                   484, 485, 486, 487, 489, 499, 539, 584, 592, 594, 595, 596, 599, 603, 604, 605, 606, 607, 704, 705,
                   706, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 721, 722, 726, 833, 849, 1048, 1052, 1053,
                   1055, 1056, 1057, 1058, 1059, ]

no_abstract = [469, 470, 471, 472, 473, 710, 716, 717, 1052, 1053, 1055, 1056, 1057, 1058, 1059, ]

for i in range(1, 1081):  #1081):
    # for i in [459, 460, 461, 618, 627]:
    if i in [649, 694, 992, 993, 1049, 1050, 1051, 1066, 1067, 1068, 1069, 1070, 1071, 1073, 1074, 1075,
             1076, ]:  #Don't exist or aren't SBML
        continue
    num = f'{i:010d}'
    biomd_id = "BIOMD" + num
    print("Updating biomodel", biomd_id)
    oldmd = requests.get(prod_biomodels + "api/model/" + biomd_id, params={"format": "json"})
    oldmetadata = oldmd.json()
    # print(json.dumps(oldmetadata, indent=4, sort_keys=True))

    authorization = {
        "Authorization": "Bearer " + credentials["access_token"],
    }
    recentmd = requests.get(prod_biomodels + "api/model/" + biomd_id, params={"format": "json"}, headers=authorization)
    recentmetadata = recentmd.json()
    uploaded_previously = recentmetadata['history']['revisions'][-1]['submitter'] == "Lucian Smith"

    # if uploaded_previously != (i != 601):
    #     assert(False)

    new_metadata = get_new_metadata(biomd_id, oldmetadata, masters[biomd_id], uploaded_previously)

    # Replace the old files with the new ones:
    folder = biomd_id + "-" + str(uuid.uuid4())
    upload_model_files(biomd_id, folder, credentials["access_token"], new_metadata)
