{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {
    "collapsed": true
   },
   "outputs": [],
   "source": [
    "function my_lin_interp(grid, vals)\n",
    "    function func(x)\n",
    "        a=sorted=sort(collect(Dict(zip(grid,vals))))\n",
    "        b=Array(Float64,length(grid))\n",
    "        c=Array(Float64,length(grid))\n",
    "        \n",
    "        for i in 1:length(grid)\n",
    "            b[i]= a[i][1]\n",
    "            c[i]= a[i][2]\n",
    "        end\n",
    "        \n",
    "        x_second=b[searchsortedfirst(b, x)]\n",
    "        y_second=c[searchsortedfirst(b, x)]\n",
    "        x_first=b[searchsortedfirst(b, x)-1]\n",
    "        y_first=c[searchsortedfirst(b, x)-1]\n",
    "        \n",
    "        return y_first+(y_second-y_first)/(x_second-x_first)*(x-x_first)\n",
    "    end\n",
    "\n",
    "    return func\n",
    "end"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Julia 0.4.5",
   "language": "julia",
   "name": "julia-0.4"
  },
  "language_info": {
   "file_extension": ".jl",
   "mimetype": "application/julia",
   "name": "julia",
   "version": "0.4.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 0
}
