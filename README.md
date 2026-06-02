# DIGITAL FILTER DESIGN

*COMPANY* : CODTECH IT SOLUTIONS

*NAME* : KOTHURI MURALI KRISHNA 

*INTERN ID* : CTIS9479

*DOMAIN* : VLSI

*DURATION* : 6 WEEEKS

*MENTOR* : NEELA SANTOSH


# DESCRIPTION :

1. To design and simulate a digital FIR filter using Verilog HDL and verify its functionality through simulation. The filter processes discrete-time input signals and produces filtered outputs based on predefined coefficients.

2. A **Finite Impulse Response (FIR) Filter** is a digital filter whose impulse response settles to zero in a finite number of clock cycles. FIR filters are widely used in Digital Signal Processing (DSP) applications due to their:

-> Guaranteed stability

-> Linear phase characteristics

-> Simple implementation

-> High accuracy in signal filtering

3. The output of an FIR filter is obtained by multiplying current and previous input samples with filter coefficients and summing the results.
  

## FIR Filter Equation:

For an N-tap FIR filter:

$$
y[n] = \sum_{k=0}^{N-1} h[k]\,x[n-k]
$$

Where:

**x[n]** = Input sample,
  
**h[k]** = Filter coefficients,
  
**y[n]** = Filter output,
  
**N** = Number of taps


### Data Flow

```
Input → Delay Registers → Multipliers
                ↓
        Coefficients
                ↓
            Adders
                ↓
             Output
```

Each delayed sample is multiplied by its corresponding coefficient and all products are added together to generate the filtered output.


## Working Principle

-> Input data is applied at every clock cycle.
 
-> Previous samples are stored in delay registers.
 
-> Each sample is multiplied by a fixed coefficient.
   
-> Products are accumulated.
   
-> The accumulated result becomes the filter output.

Example:

For coefficients:

```
h0 = 1,
h1 = 2,
h2 = 3,
h3 = 4
```

Output:

```
y[n] = x[n]
     + 2x[n−1]
     + 3x[n−2]
     + 4x[n−3]
```

## Resource Utilization

| Resource    | Usage    |
| ----------- | -------- |
| Registers   | Moderate |
| Multipliers | High     |
| Adders      | Moderate |
| LUTs        | Moderate |

### Timing Performance

-> Operates synchronously with clock.

-> Deterministic output latency.

-> Suitable for real-time DSP applications.

### Power Considerations

-> Power increases with number of taps.

-> More multipliers result in higher dynamic power consumption.

---


## Observations

-> The FIR filter correctly filters input samples.

-> Output depends on both current and past inputs.

-> Simulation waveforms match theoretical calculations.

-> Stable operation observed throughout simulation.

-> No oscillations or instability detected.


# OUTPUT:

1. RTL DESIGN:

<img width="1693" height="929" alt="Image" src="https://github.com/user-attachments/assets/4093d361-2f0a-4ee6-ac44-6fbd4b74efd8" />

2. SIMULATION WAVEFORM:

<img width="1788" height="880" alt="Image" src="https://github.com/user-attachments/assets/09ecab8d-322f-4cac-a6df-ee0340bdcd82" />

3. SIMULATION TCL CONSOLE:

<img width="1586" height="992" alt="Image" src="https://github.com/user-attachments/assets/d5003138-1ef2-4e8b-89b5-bf40b717ba95" />

