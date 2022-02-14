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
          ><span>MIP</span> <Logo />
        </b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <b-collapse id="nav-collapse" is-nav>
          <b-navbar-nav class="ml-auto">
            <b-nav-item href="#">Home</b-nav-item>
            <b-nav-item href="#Federations">Federations</b-nav-item>
            <b-nav-item href="#Documentation">Documentation</b-nav-item>
          </b-navbar-nav>
        </b-collapse>
      </b-navbar>
      <div id="placeholder-nav"></div>
    </header>

    <main>
      <section id="intro" data-aos="fade-right">
        <b-container>
          <b-row>
            <b-col cols="12" md="5"
              ><div class="box">
                <div class="title">Medical Informatics Platform</div>
                <span
                  >A powerful federated data processing and analysis system that
                  preserves patient privacy</span
                >
                <a class="link" href="#Federations">See federation</a>
              </div></b-col
            >
            <b-col md="7" class="d-none d-md-flex">
              <img class="img-fluid" src="@/assets/section1.png"
            /></b-col>
          </b-row>
        </b-container>
      </section>
      <section id="Federations" data-aos="fade-up">
        <b-container fluid>
          <b-row>
            <b-col cols="12">
              <div class="box">
                <div class="title text-center">Federations</div>
                <div class="cards">
                  <card-federation
                    v-for="fed in federations"
                    :key="fed.title"
                    :title="fed.title"
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
      <section id="Documentation"></section>
    </main>
  </div>
</template>

<script>
import Logo from "../components/Logo.vue";
import CardFederation from "../components/CardFederation.vue";
import AOS from "aos";
import "aos/dist/aos.css";

export default {
  name: "Home",
  components: { Logo, CardFederation },
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
          title: "Traumatic Brain Injury (TBI)",
          description: "This federation includes representatives from the two largest worldwide TBI research cohorts, CREACTIVE (Collaborative Research on Acute Traumatic brain Injury in intensiVE care medicine in Europe) and Center-TBI, which are part of a major clinical research initiative InTBIR (International Initiative for Traumatic Brain Injury Research), developed in Europe and North-America to tackle the public health issue represented by TBI.",
          nodes: [
            "CREACTIVE (stored at the Mario Negri Institute for Pharmacological Research Bergamo, Italy)",
            "Center-TBI (located at INCF, Karolinska Institute, Stockholm, Sweden)",
          ],
          nbRecords: 10500,
          link: "https://tbi.hbpmip.link/",
        },
        {
          title: "Mental Health",
          description: "The federation aims at exploring large-scale Mental Health datasets including clinical signs and symptoms, together with structured neuropsychological assessments and brain imaging data. Data are derived from a pool of individuals in a longitudinal fashion as part of the IMAGEN database, collected by the Imagen consortium from over 2000 adolescents and their parents.",
          nodes: [
            "Universitätsklinikum Aachen (Aachen, Germany)",
            "CHUV (Centre Hospitalier Universitaire Vaudois, Lausanne, Switzerland)",
          ],
          nbRecords: 7300,
          link: "https://mentalhealth.hbpmip.link/"
        },
        {
          title: "Epilepsy",
          description: "This EBRAINS-embedded federation includes 15 Virtual Machines, assigned to Epilepsy centers from the European Reference Network EpiCARE. Currently data are synthetic, produced from a French national cohort of 1200 patients from 12 different epilepsy centers.",
          nodes: [
            "EBRAINS embedded federation of 15 Virtual Machines",
          ],
          nbRecords: 5958,
          nbNodes: 15
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

<style lang="scss">

#Federations, #Documentation {
  scroll-margin-top: 250px
}

#placeholder-nav {
  height: 80px;
}
section {
  margin-top: 40px;
  min-height: 400px;

  .img-fluid {
    max-height: 100%;
  }

  &#Federations {
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

  &#intro {
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
    span {
      font-weight: 100;
    }
  }
}

.navbar {
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
