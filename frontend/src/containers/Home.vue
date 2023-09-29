<template>
  <div>
    <header>
      <b-navbar
        toggleable="lg"
        type="light"
        variant="white"
        class="main-navbar"
        fixed="top"
      >
        <b-navbar-brand id="navbar-branding"
          ><span
            ><a href="/" class="text-reset text-decoration-none">MIP</a></span
          >
          <a
            href="https://ebrains.eu/"
            target="_blank"
            ref="noopener noreferrer"
            ><Logo
          /></a>
        </b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item href="#top">Home</b-nav-item>
            <b-nav-item href="#Federations">Federations</b-nav-item>
            <b-nav-item href="#Documentation">Documentation</b-nav-item>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
      <div id="placeholder-nav"></div>
    </header>

    <main>
      <section id="Intro" data-aos="fade-right">
        <b-container>
          <b-row>
            <b-col cols="12" md="5"
              ><div class="box">
                <div class="title">Medical Informatics Platform</div>
                <p>
                  A powerful federated data processing and analysis system that
                  preserves patient privacy
                </p>
                <a class="link" href="#Federations">See federations</a>
              </div></b-col
            >
            <b-col md="7" class="d-none d-md-flex">
              <img class="img-fluid" src="@/assets/section1.png" alt="MIP user interface"
            /></b-col>
          </b-row>
        </b-container>
      </section>
      <section id="Federations" data-aos="fade-up" data-aos-offset="-100">
        <b-container fluid>
          <b-row>
            <b-col cols="12">
              <div class="box">
                <div class="title text-center">Federations</div>
                <div class="cards">
                  <card-federation
                    v-for="(fed, index) in federations"
                    :key="fed.title"
                    :title="fed.title"
                    :id="index"
                    :description="fed.description"
                    :link="fed.link"
                    :nbRecords="fed.nbRecords"
                    :nodes="fed.nodes"
                    :version="fed.version"
                    :nbNodes="fed.nbNodes"
                  ></card-federation>
                </div>
              </div>
            </b-col>
          </b-row>
        </b-container>
      </section>
      <section id="Documentation" data-aos="fade-up">
        <b-container>
          <b-row>
            <b-col md="7" class="d-none d-md-flex">
              <img class="img-fluid" src="@/assets/section3.png" alt="MIP working schema"
            /></b-col>
            <b-col cols="12" md="5"
              ><div class="box">
                <div class="title">Documentation</div>
                <div>
                  <p>
                    The MIP compares and analyses patients' data distributed
                    across centers without requiring the data to be sent out
                    from their site of origin. Most importantly - data are never
                    moved, copied nor transferred. You can find full
                    documentation on GitHub.
                  </p>
                </div>
                <div class="mt-3">
                  <a
                    target="_blank"
                    class="btn btn-primary"
                    href="https://github.com/HBPMedical/mip-docs"
                    ><b-icon-github /> GitHub</a
                  >
                </div>
              </div>
            </b-col>
          </b-row>
        </b-container>
      </section>
    </main>
  </div>
</template>

<script>
import Logo from "../components/Logo.vue";
import CardFederation from "../components/CardFederation.vue";
import { BIconGithub } from "bootstrap-vue";
import AOS from "aos";
import "aos/dist/aos.css";

export default {
  name: "Home",
  components: { Logo, CardFederation, BIconGithub },
  mounted() {
    window.addEventListener("scroll", this.handleScroll);
    AOS.init({
      duration: 600,
    });
  },
  data() {
    return {
      federations: [
      {
          title: "Public MIP",
          description:
            "The PUBLIC-MIP installed on the EBRAINS RI and available via EBRAINS accreditation on the EBRAINS website. EBRAINS users can explore the service with no requirement for installation or download. Analyse online all data placed in the public MIP and test the available MIP analytical tools. New Public Dataset available: The Leenaards Memory Centre (CLM) in Lausanne, Switzerland, made a substantial dataset of anonymised real world patient records (1032 records) available on the MIP. This provides a valuable data source in the field of dementia to the research community, which is otherwise very hard to access. Furthermore, synthetic data, merely intended for exploring the system and testing its analytical capabilities covering different pathologies, are available for the community. What users can test and do on the Public MIP: Experiment on synthetic and public datasets in Dementia, Epilepsy, Mental Health and TBI; select datasets, variables and co-variables to define the experimental parameters; choose between available algorithms (15 algorithms ranging from descriptive statistics, parametric statistics to supervised and unsupervised machine learning are built into the MIP); create, safe and share experiments to perform statistical analysis. Access the MIP Guide and Training Materials.",
          nbRecords: 524133,
          link: "https://hbpmip.link",
        },
        {
          title: "FERES - Federating European Registries for Stroke",
          description:
            "National Stroke Registries have played an essential role in accelerating stroke research that affects the advancement and delivery of effective, high-quality care. One of the main objectives of FERES is the development of a framework to impulse the re-use of health data collected in European National Stroke Registries and Electronic Health Records (EHR) in a fully General Data Protection Regulation (GPDR)-compliant way.",
          nbNodes: 7,
          nodes: [
            "NKUA - National and Kapodistrian University of Athens",
            "UB - University of Basel",
            "In progress :",
            "VASCage - VASCage GmbH - Austrian stroke registry",
            "Careggi University Hospital / Hospital Policlinico Umberto I",
            "CHUL - Hospital Center University of Lille",
            "INAS - Irish National Audit of Stroke",
            "AAU - Aalborg University "
          ],
          nbRecords: 110413,
          link: "https://stroke.hbpmip.link",
        },
        {
          title: "Dementia",
          description:
            "The dementia federation primarily illustrates the feasibility and value of federating real-world clinical data collected during routine medical practice, representing the full spectrum of patient profiles, in comparison with structured research cohort data from more biased populations. Three clinical datasets have been curated and harmonized, including real-world clinical data from the Leenaards Memory Centre (CLM) in Lausanne (1032 patients), IRCCS Instituto Centro San Giovanni di Dio Fatebenefratelli in Brescia (1960 patients) and CHU Lille (1102 patients), and can be compared to the most well known dementia public database, ADNI.",
          nodes: [
            "CHUV, Leenaards Memory Centre (Lausanne, Switzerland)",
            "IRCCS Centro San Giovanni di Dio, Fatebenefratelli (Brescia, Italy)",
            "CHU Lille (Lille, France)",
          ],
          nbRecords: 6348,
          link: "https://dementia.hbpmip.link/",
        },
        {
          title: "French Epilepsy Network – REPOMSE",
          description:
            "The French epilepsy network federates data from 1072 patients over 15 years of age, suffering from drug-resistant partial epilepsy and who started pre-surgical video-EEG monitoring. Recruitment was based on the 15 largest French centres for adult epileptology and videoEEG monitoring for pre-surgical purposes. Data collected regroup past and present medical information, medication and therapy.",
          nbRecords: 1072,
          nbNodes: 15,
          nodes: [
            "AP_HM - Centre Hospitalier Universitaire de Marseille",
            "CHU Nice - Centre Hospitalier Universitaire de Nice",
            "AP_HP - Centre Hospitalier Universitaire de la Pitié-Salpêtrière",
            "GHU PARIS - Centre Hospitalier Sainte Anne",
            "CHU Rennes - Centre Hospitalier Régional et Universitaire de Rennes",
            "CHRU Strasbourg - Centre Hospitalier Universitaire de Strasbourg",
            "CHU Toulouse - Centre Hospitalier Universitaire de Toulouse",
            "CHRU Tours - Centre Hospitalier Universitaire de Tours",
            "CHRU Nancy - Centre Hospitalier Universitaire de Nancy",
            "CHU GRENOBLE - Centre Hospitalier Universitaire Michallon - Département de Neurologie, Epilepsie",
            "CHU Lille - Hospital Centre University of Lille",
            "HCL - Hospices Civils de Lyon - Hôpital Neurologique",
            "",
            "In progress :",
            "LA TEPPE - Centre médical de la Teppe - Tain l'hermitage",
            "CHU BORDEAUX - Centre Hospitalier Universitaire Pellegrin Tripode",
            "CHU_MONTPELLIER - Centre Hospitalier Universitaire Gui de Chauliac"
          ],
          link: "https://repomse.hbpmip.link",
        },
        {
          title: "Traumatic Brain Injury (TBI)",
          description:
            "This federation includes representatives from the two largest worldwide TBI research cohorts, CREACTIVE (Collaborative Research on Acute Traumatic brain Injury in intensiVE care medicine in Europe) and Center-TBI, which are part of a major clinical research initiative InTBIR (International Initiative for Traumatic Brain Injury Research), developed in Europe and North-America to tackle the public health issue represented by TBI.",
          nodes: [
            "CREACTIVE (stored at the Mario Negri Institute for Pharmacological Research Bergamo, Italy)",
            "Center-TBI (located at INCF, Karolinska Institute, Stockholm, Sweden)",
          ],
          nbRecords: 10500,
          link: "https://tbi.hbpmip.link/",
        },
        {
          title: "Epilepsy",
          description:
            "This EBRAINS-embedded federation includes 15 nodes assigned to Epilepsy centers from the European Reference Network EpiCARE, with a plan to increase to around 30 centers. It offers a data model of about 1000 CDEs, providing deeply phenotyped data of epilepsy surgery patients. Current data are synthetic, produced from a French national cohort of 1200 patients from 12 different epilepsy centers.",
          nodes: [
            "EBRAINS embedded federation of 15 Virtual Machines",
            "Centre Hospitalier Universitaire de Lausanne, Lausanne, Switzerland",
            "Centre Hospitalier Universitaire de Lille, Epilepsy Unit, Lille, France",
            "Paracelsus Medical University, Salzburg, Austria",
            "Hospital de Santa Maria, Lisbon, Portugal",
            "Helsinki University Hospital, Helsinki, Finland",
            "Universitätsklinikum Erlangen, Epilepsiezentrum EZE, Erlangen, Germany",
            "National Institute of Clinical Neurosciences, Budapest, Hungary",
            "Hospital del Mar-Parc de Salut Mar, Barcelona, Spain",
            "Medical University Vienna, Vienna, Austria",
            "St. Anne's University Hospital, Brno, Czech Republic",
            "Hospital Sant Joan de Deu - Hospital Clinic Consortium, Barcelona, Spain",
            "Kuopio University Hospital, Pohjois-Savon Sairaanhoitpiiri, Kuopio, Finland",
          ],
          nbRecords: 5970,
          nbNodes: 15,
          link: "https://epilepsy.hbpmip.link",
        },
        {
          title: "Mental Health",
          description:
            "The federation aims at exploring large-scale Mental Health datasets including clinical signs and symptoms, together with structured neuropsychological assessments and brain imaging data. Data are derived from a pool of individuals in a longitudinal fashion as part of the IMAGEN database, collected by the Imagen consortium from over 2000 adolescents and their parents.",
          nodes: [
            "Universitätsklinikum Aachen (Aachen, Germany)",
            "CHUV (Centre Hospitalier Universitaire Vaudois, Lausanne, Switzerland)",
          ],
          nbRecords: 7300,
          link: "https://mentalhealth.hbpmip.link/",
        },
        {
          title: "NEURO Cohort",
          description: `The NEURO Cohort project gathers a European network of 40 sites dedicated to neurodegenerative (ND) research, which are committed to the harmonisation and sharing of ten routinely-collected variables. These sites include universities, research centres and memory clinics, representing members of the original EPAD consortium and the extended IMI NEURONET researcher network. The goal of the NEURO Cohort is to provide a dataset that can be utilised for feasibility analyses and European cohort characterisation, to accelerate and streamline initiation and recruitment of research projects and studies.

The pilot has entailed the production of the NEURO Cohort common data model (CDM), data management tools, the installation of the federated network and the generation of synthetic records. The pilot acts as a proof-of-concept with a subset of sites that will facilitate the onboarding of the wider NEURO Cohort network.`,
          nbRecords: 32550,
          nodes: [
            "Barcelonabeta Brain Research Center, Barcelone, Spain",
            "Univeristy of Perugia, Center for Memory Disturbances, Perugia, Italy",
            "Fundación Cita-Alzheimer Fundazioa, Donostia, Spain",
            "Oxford University, Department of Psychiatry, Oxford, UK",
          ],
          link: "https://neurocohort.hbpmip.link",
        },
        {
          title: "MIP Hands-on",
          description:
            "This fully EBRAINS-hosted federation, is providing the MIP User Training environment and contains synthetic and public datasets in Epilepsy, Dementia, Mental Health and TBI.",
          nbRecords: 521913,
          link: "https://handson.hbpmip.link",
        },
      ],
    };
  },
  methods: {
    handleScroll() {
      const navbar = document.querySelector(".main-navbar");
      if (window.scrollY > 85) {
        navbar.classList.add("scrolled");
      } else {
        navbar.classList.remove("scrolled");
      }
    },
  },
};
</script>

<style lang="scss" >
#Federations,
#Documentation {
  scroll-margin-top: 250px;
}

#Documentation {
  margin-top: 130px;
  margin-bottom: 100px;
}

#placeholder-nav {
  height: 80px;
}

.large-tooltip .tooltip-inner {
    max-width: 350px;
}

@media screen and (max-width: 300px) {
  .large-tooltip .tooltip-inner {
    max-width: 100%;
  }
}

section {
  margin-top: 40px;
  min-height: 400px;

  .img-fluid {
    max-height: 100%;
  }
  &#Federations {
    background-image: url("~@/assets/section2.png");
    background-repeat: no-repeat;
    background-position: right;
    background-size: contain;
    .cards {
      margin-top: 40px;
      display: flex;
      flex-direction: row;
      justify-content: center;
      flex-wrap: wrap;
      align-content: space-evenly;
      row-gap: 40px;
      column-gap: 50px;
      .card-fed {
        max-width: 30%;
        width: 25%;

        @media (max-width: 1200px) {
          width: 40%;
          max-width: 45%;
        }

        @media (max-width: 768px) {
          width: 90%;
          max-width: 95%;
        }
      }
    }
  }

  &#Intro,
  &#Documentation {
    .row > div {
      min-height: 400px;
      height: 65vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
  }
  .box {
    align-self: center;
    padding: 15px;
    .title {
      font-weight: bold;
      font-size: 45px;
      line-height: 45px;
      margin-bottom: 30px;
    }
    .link {
      margin-top: 20px;
      text-transform: uppercase;
      display: block;
    }
    span,
    p {
      font-weight: 100;
      text-align: justify;
    }
  }
}

.navbar {
  transition: box-shadow 0.3s ease-in-out;
  &.scrolled {
    box-shadow: 0px 3px 10px 1px #0000002e;
  }
  padding-left: 40px;
  padding-right: 40px;
  .nav-item {
    padding: 0 8px;
  }
  .navbar-nav .nav-link {
    color: #0c0c0c;
    &:hover {
      color: #4e4e4e;
    }
  }
}

#navbar-branding {
  font-family: "Roboto", sans-serif;
  font-weight: 100;
  font-size: 48px;
  display: flex;
  align-items: center;

  span {
    border-right: 1px solid;
    padding-right: 15px;
  }
}
</style>
