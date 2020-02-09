/*
 * demo.c
 *
 *  Created on: 24 dec. 2019
 *      Author: andre
 */

#include "usbd.h"
#include "serialnumber.h"

uint8_t temp_recv_buffer[256];
void transfer_in_complete(usbd_handle_t *handle, uint8_t epnum, void *data,
		size_t size) {

}

void transfer_out_complete(usbd_handle_t *handle, uint8_t epnum, void *data,
		size_t size) {

	// This is a test to reply the data increased by 1;
	((uint8_t*) (data))[0]++;
	usbd_transmit(handle, 0x80 | epnum, data, size);

}


extern char  rt[32];
void usbd_demo_setup_descriptors(usbd_handle_t *handle) {
	handle->descriptor_device = add_descriptor(handle,
			sizeof(usb_descriptor_device_t));
	handle->descriptor_device->bDescriptorType = USB_DT_DEVICE;
	handle->descriptor_device->bMaxPacketSize0 = 64;
	handle->descriptor_device->bNumConfigurations = 1;
	handle->descriptor_device->bcdUSB = 0x0200;
	handle->descriptor_device->idVendor = 0xdead;
	handle->descriptor_device->idProduct = 0xbeef;

	handle->descriptor_device->iManufacturer = 1;
	handle->descriptor_device->iProduct = 2;
	handle->descriptor_device->iSerialNumber = 3;

	handle->descriptor_configuration[0] = add_descriptor(handle,
			sizeof(usb_descriptor_configuration_t));
	handle->descriptor_configuration[0]->wTotalLength =
			handle->descriptor_configuration[0]->bLength;
	handle->descriptor_configuration[0]->bDescriptorType = USB_DT_CONFIGURATION;
	handle->descriptor_configuration[0]->bConfigurationValue = 1;
	handle->descriptor_configuration[0]->bMaxPower = 10;
	handle->descriptor_configuration[0]->bmAttributes = 0x80;
	handle->descriptor_configuration[0]->bNumInterfaces = 1;

	// TODO Make function to add interfaces (and altsettings)

	usb_descriptor_interface_t *iface = add_descriptor(handle,
			sizeof(usb_descriptor_configuration_t));
	handle->descriptor_configuration[0]->wTotalLength += iface->bLength;
	iface->bDescriptorType = USB_DT_INTERFACE;
	iface->bInterfaceClass = 0xFF;
	iface->bNumEndpoints = 2;
	iface->bInterfaceNumber = 0;
	iface->bAlternateSetting = 0;
	iface->iInterface = 4; // string 4

	usbd_add_endpoint_in(handle, 1, 1, USB_EP_ATTR_TYPE_INTERRUPT, 64, 1,
			(usbd_transfer_cb_f) &transfer_in_complete);
	usbd_add_endpoint_out(handle, 1, 1, USB_EP_ATTR_TYPE_INTERRUPT, 64, 1,
			temp_recv_buffer, sizeof(temp_recv_buffer), (usbd_transfer_cb_f) &transfer_out_complete);

	// Be sure to save the file as UTF-8. ;)
	handle->descriptor_string[1] = add_string_descriptor_utf16(handle, u"BlaatSchaap 🐑");

	// The u"string" prefix encodes it as UTF16 from the start
	handle->descriptor_string[2] = add_string_descriptor_utf16(handle, u"USB Device Demo");

	uint16_t serial_number[9] = {0};
	GetSerialStringUTF16(serial_number,8);
	handle->descriptor_string[3] = add_string_descriptor_utf16(handle, serial_number);

	handle->descriptor_string[4] = add_string_descriptor_ascii(handle, rt);


}
