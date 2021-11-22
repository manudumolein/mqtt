/*!
 * @file
 * 
 * @brief Library for the TC47A* I2C temperature sensors
 * 
 * @author Blake Bourque
 * 
 * @date Mar 5, 2014
 * 
 * Provides readTempInC and readTempInF (header)
 * 
 */

#ifndef __TC74_h__
#define __TC74_h__

typedef enum {
	TC74A0 = 0x48,
	TC74A1 = 0x49,
	TC74A2 = 0x4a,
	TC74A3 = 0x4b,
	TC74A4 = 0x4c,
	TC74A5 = 0x4d,
	TC74A6 = 0x4e,
	TC74A7 = 0x4f
} TC74_t;

/**
 * Reads the temperature from the sensor at address on the given bus.
 * Accurate to plus or minus 2 deg C.
 * @param  bus  0 or 1: RPIv2 bus 1 is broken out on P1 header
 * @param  addy address of a TC74 sensor
 * @return      temperature in Celsius
 */
int readTempInC(int bus, TC74_t addy);




#endif //__TC74_h__