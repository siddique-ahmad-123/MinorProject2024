Monitoring respiratory rate (RR) is vital for assessing
human health, both physically and mentally. Deviations from
normal RR values can indicate a range of medical conditions
such as apnea, congestive heart failure, and cardiac arrest,
underscoring the importance of effective RR monitoring[10].
Traditional respiratory monitoring methods often rely on con-
tact sensors like breathing belts, which must be tightly secured
to the body[10]. This can lead to discomfort and inconvenience
for patients, thereby necessitating the development of non-
contact monitoring techniques. As a result, there is a growing
need for the development of non-contact RR monitoring tech-
niques to alleviate these issues. New advancements in radar
technology, especially Frequency Modulated Continuous Wave
(FMCW) radar, operating near the 77 GHz spectrum, presents
a superior method for monitoring respiration without the need
for physical contact with the patient[1]. This radar technol-
ogy is renowned for its exceptional capability to accurately
determine both distances and velocities, which is crucial for
precise respiratory monitoring. By emitting continuous radio
waves that change in frequency over time, FMCW radar can
calculate the distance to an object based on the frequency shift
of the reflected signal.
FMCW radar can distinguish between multiple targets by
creating a detailed range-Doppler map, showing the distance
and speed of each object. This helps it separate breathing
movements from other motions like limb movements or
nearby objects. The high resolution of the 77 GHz spectrum
allows it to precisely detect small chest movements from
breathing, making it ideal for non-invasive respiratory rate
monitoring[10].
This paper discusses our implementation of a non-invasive
respiratory monitoring system and signal processing modules
on the PYNQ-Z2 board. The PYNQ-Z2 integrates the Xilinx
Zynq SoC, which combines ARM Cortex-A9 processors with
programmable logic. It supports embedded system develop-
ment and accelerated applications using Python, enabling
prototyping and deployment of custom hardware accelerators
and software algorithms for advanced applications. System on
Chip (SoC) design enhances modern electronics by combining
pre-made parts (IP blocks) [9]. This approach speeds up devel-
opment, reduces device size, and improves power efficiency,
making it ideal for portable gadgets. Despite some challenges
in integration and verification, SoCs reduce costs, accelerate
production, and improve electronic systems by efficiently
reusing components. The PYNQ framework allows users to
leverage programmable logic for creating custom hardware
overlays that work alongside software-defined processors. This
setup accelerates computation in applications such as machine
learning, image processing, and robotics. By utilizing FPGA
parallelism, we aim to achieve high-performance signal pro-
cessing [8]. Our focus is to showcase the PYNQ-Z2 board’s
versatility in real-time processing, low-power consumption,
and scalability. This paper makes the following key contri-
butions:
1) Development of a non-invasive system for accurate
measurement of breathing rates, suitable for continuous
monitoring in clinical and home settings.
2) Development of a portable and mobile system for clin-
ical and domestic use.
The paper is structured as follows: Section II provides a brief
background on FMCW radar. Section III outlines the system
design and methodology. Experimental setup and results are
presented in Section IV. Section V concludes the paper.
II. BACKGROUND OF FMCW RADAR
In the medical field, sensors play a crucial role in measuring
vital signs such as heart rate and respiration rate. For these ap-
plications, it is essential to detect the subtle movements of the
heart and lungs with high accuracy. This is where Frequency-
Modulated Continuous Wave (FMCW) radar sensors come
into play. These sensors can detect the distance to objects with
millimeter-level precision. Their ability to measure distances
comes from sampling at a very high rate, which provides more
phase data of the object. This allows them to detect even the
smallest movements.
FMCW radar sensors are very accurate and can measure
quickly. They are useful when touching the skin directly isn’t
possible or preferred. These sensors can detect small chest
movements like heartbeats and breathing. This lets healthcare
providers check heart rate and breathing without touching the
patient
