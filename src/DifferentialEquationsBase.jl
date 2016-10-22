module DifferentialEquationsBase

  import Base: length, size, getindex, endof, show, print, max, linspace

  "`DEProblem`: Defines differential equation problems via its internal functions"
  abstract DEProblem
  abstract DEElement
  abstract AbstractODEProblem <: DEProblem
  abstract AbstractSDEProblem <: DEProblem
  abstract AbstractDAEProblem <: DEProblem
  abstract AbstractDDEProblem <: DEProblem
  abstract AbstractPoissonProblem <: DEProblem
  abstract AbstractHeatProblem <: DEProblem
  "`PdeSolution`: Wrapper for the objects obtained from a solver"
  abstract DESolution
  abstract AbstractODESolution <: DESolution
  abstract AbstractFEMSolution <: DESolution
  abstract DESensitivity
  "`Mesh`: An abstract type which holds a (node,elem) pair and other information for a mesh"
  abstract Mesh
  "`Tableau`: Holds the information for a Runge-Kutta Tableau"
  abstract Tableau
  "`DEIntegrator`: A DifferentialEquations Integrator type, used to initiate a solver."
  abstract DEIntegrator
  "`DEParameters`: Holds the parameters used in a DifferntialEquations model"
  abstract DEParameters

  include("utils.jl")
  include("solutions.jl")

  export DEProblem, DESolution, DEParameters, AbstractDAEProblem, AbstractDDEProblem,
         AbstractODEProblem, AbstractSDEProblem, DAESolution, DEIntegrator, Mesh,
         Tableau, DESensitivity, AbstractODESolution, AbstractPoissonProblem,
         AbstractHeatProblem

  export recursivecopy!, @def, vecvecapply, numparameters, copyat_or_push!


end # module
